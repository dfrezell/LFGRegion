-- Acorn-Bloodhoof
-- Realm-to-region data for the Americas game region.

local addonName, LFGRegion = ...

LFGRegion.REGIONS = {
    oce = { label = "OCE", name = "Oceanic", color = { 0.10, 0.72, 0.25 } },
    usp = { label = "USP", name = "US Pacific", color = { 0.20, 0.60, 1.00 } },
    usm = { label = "USM", name = "US Mountain", color = { 0.15, 0.38, 0.95 } },
    usc = { label = "USC", name = "US Central", color = { 1.00, 0.58, 0.05 } },
    use = { label = "USE", name = "US East", color = { 0.92, 0.16, 0.16 } },
    mex = { label = "MEX", name = "Mexico", color = { 0.10, 0.55, 0.20 } },
    bzl = { label = "BZL", name = "Brazil", color = { 0.18, 0.55, 0.32 } },
}

LFGRegion.REALMS = {
    oce = {
        "Aman'Thul", "Barthilas", "Caelestrasz", "Dath'Remar", "Dreadmaul",
        "Frostmourne", "Gundrak", "Jubei'Thos", "Khaz'goroth", "Nagrand",
        "Saurfang", "Thaurissan",
    },
    usp = {
        "Aerie Peak", "Antonidas", "Anvilmar", "Arathor", "Azuremyst", "Baelgun",
        "Blade's Edge", "Bladefist", "Bronzebeard", "Cenarius", "Darrowmere",
        "Draenor", "Dragonblight", "Echo Isles", "Galakrond", "Gnomeregan",
        "Hyjal", "Kilrogg", "Korialstrasz", "Lightbringer", "Misha", "Moonrunner",
        "Nordrassil", "Proudmoore", "Shadowsong", "Shu'Halo", "Silvermoon",
        "Skywall", "Suramar", "Uldum", "Uther", "Velen", "Windrunner",
        "Blackrock", "Blackwing Lair", "Bonechewer", "Boulderfist", "Coilfang",
        "Crushridge", "Daggerspine", "Dark Iron", "Destromath", "Dethecus",
        "Dragonmaw", "Dunemaul", "Frostwolf", "Gorgonnash", "Gurubashi", "Kalecgos",
        "Kil'Jaeden", "Lethon", "Maiev", "Nazjatar", "Ner'zhul", "Onyxia",
        "Rivendare", "Shattered Halls", "Spinebreaker", "Spirestone", "Stonemaul",
        "Stormscale", "Tichondrius", "Ursin", "Vashj", "Blackwater Raiders",
        "Cenarion Circle", "Feathermoon", "Sentinels", "Silver Hand", "The Scryers",
        "The Venture Co", "Wyrmrest Accord",
    },
    usm = {
        "Azjol-Nerub", "Darkspear", "Deathwing", "Doomhammer", "Icecrown",
        "Kel'Thuzad", "Perenolde", "Terenas", "Zangarmarsh", "Bloodscalp",
        "Nathrezim", "Shadow Council",
    },
    usc = {
        "Aegwynn", "Agamaggan", "Aggramar", "Akama", "Alexstrasza", "Alleria",
        "Archimonde", "Azgalor", "Azshara", "Balnazzar", "Blackhand", "Blood Furnace",
        "Borean Tundra", "Burning Legion", "Cairne", "Cho'gall", "Chromaggus",
        "Dawnbringer", "Dentarg", "Detheroc", "Draka", "Drak'tharon", "Drak'thul",
        "Eitrigg", "Emerald Dream", "Farstriders", "Fizzcrank", "Frostmane", "Garithos",
        "Garona", "Ghostlands", "Greymane", "Grizzly Hills", "Gul'dan", "Hakkar",
        "Hellscream", "Hydraxis", "Illidan", "Kael'thas", "Khaz Modan", "Kirin Tor",
        "Korgath", "Kul Tiras", "Laughing Skull", "Lightninghoof", "Madoran",
        "Maelstrom", "Mal'Ganis", "Malfurion", "Malorne", "Malygos", "Mok'Nathal",
        "Moon Guard", "Mug'thol", "Muradin", "Nesingwary", "Quel'Dorei", "Ravencrest",
        "Rexxar", "Runetotem", "Sargeras", "Scarlet Crusade", "Sen'Jin",
        "Sisters of Elune", "Staghelm", "Stormreaver", "Terokkar", "The Underbog",
        "Thorium Brotherhood", "Thunderhorn", "Thunderlord", "Twisting Nether",
        "Vek'nilash", "Whisperwind", "Wildhammer", "Winterhoof",
    },
    use = {
        "Altar of Storms", "Alterac Mountains", "Andorhal", "Anetheron", "Anub'arak",
        "Area 52", "Argent Dawn", "Arthas", "Arygos", "Auchindoun", "Black Dragonflight",
        "Bleeding Hollow", "Bloodhoof", "Burning Blade", "Dalaran", "Dalvengyr",
        "Demon Soul", "Drenden", "Durotan", "Duskwood", "Earthen Ring", "Eldre'Thalas",
        "Elune", "Eonar", "Eredar", "Executus", "Exodar", "Fenris", "Firetree",
        "Garrosh", "Gilneas", "Gorefiend", "Haomarush", "Jaedenar", "Kargath",
        "Khadgar", "Lightning's Blade", "Llane", "Lothar", "Magtheridon", "Mannoroth",
        "Medivh", "Nazgrel", "Norgannon", "Ravenholdt", "Scilla", "Shadowmoon",
        "Shandris", "Shattered Hand", "Skullcrusher", "Smolderthorn", "Steamwheedle Cartel",
        "Stormrage", "Tanaris", "The Forgotten Coast", "Thrall", "Tortheldrin", "Trollbane",
        "Turalyon", "Uldaman", "Undermine", "Warsong", "Ysera", "Ysondre", "Zul'jin",
        "Zuluhed",
    },
    mex = { "Drakkari", "Quel'Thalas", "Ragnaros" },
    bzl = { "Azralon", "Gallywix", "Goldrinn", "Nemesis", "Tol Barad" },
}

local function NormalizeRealm(realm)
    if not realm then return nil end
    return realm:lower():gsub("[%s%-']", "")
end

LFGRegion.realmToRegion = {}
for regionKey, realms in pairs(LFGRegion.REALMS) do
    for _, realm in ipairs(realms) do
        LFGRegion.realmToRegion[NormalizeRealm(realm)] = regionKey
    end
end

function LFGRegion:GetRealmFromName(name)
    if not name then return nil end

    local realm = name:match("%-(.+)$")
    if realm then return realm end

    return GetNormalizedRealmName() or GetRealmName()
end

function LFGRegion:GetRegion(name)
    if GetCurrentRegionName and GetCurrentRegionName() ~= "US" then return nil end
    return self.realmToRegion[NormalizeRealm(self:GetRealmFromName(name))]
end

function LFGRegion:GetRegionInfo(name)
    local regionKey = self:GetRegion(name)
    return regionKey and self.REGIONS[regionKey] or nil
end

function LFGRegion:GetRegionText(name)
    local info = self:GetRegionInfo(name)
    return info and info.name or "Unknown"
end

function LFGRegion:GetRegionColored(name)
    local info = self:GetRegionInfo(name)
    if not info then return "|cffffffff?|r" end
    return CreateColor(info.color[1], info.color[2], info.color[3]):WrapTextInColorCode(info.label)
end

-- Compatibility API used by filters and other addons.
PremadeRegions = PremadeRegions or {}
PremadeRegions.GetRegion = function(name) return LFGRegion:GetRegion(name) end
PremadeRegions.GetRegionText = function(name) return LFGRegion:GetRegionText(name) end
PremadeRegions.GetRegionColored = function(name) return LFGRegion:GetRegionColored(name) end
