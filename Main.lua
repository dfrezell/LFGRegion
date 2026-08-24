-- Acorn-Bloodhoof
-- Displays compact region badges in the Premade Groups interface.

local addonName, LFGRegion = ...

local DEFAULTS = {
    showLeaders = true,
    showApplicants = true,
}

local function Print(message)
    DEFAULT_CHAT_FRAME:AddMessage("|cff33aaffLFG Region|r: " .. message)
end

local function CreateBadge(parent)
    local badge = CreateFrame("Frame", nil, parent)
    badge:SetSize(29, 14)
    badge:SetFrameLevel(parent:GetFrameLevel() + 5)

    badge.text = badge:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    badge.text:SetPoint("LEFT", 0, 0)
    badge.text:SetShadowOffset(1, -1)
    badge.text:SetShadowColor(0, 0, 0, 1)

    return badge
end

function LFGRegion:SetBadge(badge, playerName)
    local info = self:GetRegionInfo(playerName)
    if not info then
        badge:Hide()
        return
    end

    badge.text:SetText(info.label)
    badge.text:SetTextColor(info.color[1], info.color[2], info.color[3])
    badge:Show()
end

local function UpdateSearchEntry(entry)
    if not entry or not entry.resultID then return end

    if not LFGRegionDB.showLeaders then
        if entry.LFGRegionBadge then entry.LFGRegionBadge:Hide() end
        return
    end

    local resultInfo = C_LFGList.GetSearchResultInfo(entry.resultID)
    if not resultInfo or not resultInfo.leaderName then
        if entry.LFGRegionBadge then entry.LFGRegionBadge:Hide() end
        return
    end

    local badge = entry.LFGRegionBadge
    if not badge then
        badge = CreateBadge(entry)
        badge:SetPoint("LEFT", entry.Playstyle, "RIGHT", 7, 0)
        entry.LFGRegionBadge = badge
    end

    LFGRegion:SetBadge(badge, resultInfo.leaderName)
end

local function UpdateApplicantMember(member, applicantID, memberIndex)
    if not member then return end

    -- Blizzard moves the left edge of Name when friend or leaver icons appear.
    -- Keep its right edge fixed and reserve the end of the Name column for us.
    if member.Name then
        member.Name:ClearPoint("RIGHT")
        member.Name:SetPoint("RIGHT", member, "LEFT", 66, 0)
    end

    if not LFGRegionDB.showApplicants then
        if member.LFGRegionBadge then member.LFGRegionBadge:Hide() end
        return
    end

    local name = C_LFGList.GetApplicantMemberInfo(applicantID, memberIndex)
    if not name then
        if member.LFGRegionBadge then member.LFGRegionBadge:Hide() end
        return
    end

    local badge = member.LFGRegionBadge
    if not badge then
        badge = CreateBadge(member)
        badge:SetPoint("LEFT", member, "LEFT", 70, 0)
        member.LFGRegionBadge = badge
    end

    LFGRegion:SetBadge(badge, name)
end

local function RefreshVisibleRows()
    if LFGListFrame and LFGListFrame.SearchPanel and LFGListFrame.SearchPanel.ScrollBox then
        LFGListFrame.SearchPanel.ScrollBox:ForEachFrame(UpdateSearchEntry)
    end

    local viewer = LFGListFrame and LFGListFrame.ApplicationViewer
    if viewer and viewer.ScrollBox then
        viewer.ScrollBox:ForEachFrame(function(applicant)
            if applicant.Members then
                for memberIndex, member in ipairs(applicant.Members) do
                    UpdateApplicantMember(member, applicant.applicantID, memberIndex)
                end
            end
        end)
    end
end

local function SetOption(option, value)
    LFGRegionDB[option] = value
    RefreshVisibleRows()
end

local function HandleCommand(input)
    local command, argument = input:lower():match("^(%S*)%s*(.-)$")
    local value = argument == "on" and true or argument == "off" and false or nil

    if command == "leaders" and value ~= nil then
        SetOption("showLeaders", value)
        Print("search-result badges " .. (value and "enabled" or "disabled") .. ".")
    elseif command == "applicants" and value ~= nil then
        SetOption("showApplicants", value)
        Print("applicant badges " .. (value and "enabled" or "disabled") .. ".")
    else
        Print("Commands:")
        Print("/lfgr leaders on|off - toggle Find a Group badges")
        Print("/lfgr applicants on|off - toggle Start a Group badges")
    end
end

local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("ADDON_LOADED")
eventFrame:SetScript("OnEvent", function(_, _, loadedAddon)
    if loadedAddon ~= addonName then return end

    LFGRegionDB = LFGRegionDB or {}
    for key, value in pairs(DEFAULTS) do
        if LFGRegionDB[key] == nil then LFGRegionDB[key] = value end
    end

    SLASH_LFGREGION1 = "/lfgr"
    SLASH_LFGREGION2 = "/lfgregion"
    SlashCmdList.LFGREGION = HandleCommand

    local function InstallHooks()
        if LFGRegion.hooksInstalled then return end
        if not LFGListSearchEntry_Update or not LFGListApplicationViewer_UpdateApplicantMember then return end

        hooksecurefunc("LFGListSearchEntry_Update", UpdateSearchEntry)
        hooksecurefunc("LFGListApplicationViewer_UpdateApplicantMember", UpdateApplicantMember)
        LFGRegion.hooksInstalled = true
    end

    if C_AddOns.IsAddOnLoaded("Blizzard_GroupFinder") then
        InstallHooks()
    else
        EventUtil.ContinueOnAddOnLoaded("Blizzard_GroupFinder", InstallHooks)
    end
end)
