-- Acorn-Bloodhoof
-- Realm-to-region data for the World of Warcraft Americas retail region.
--
-- Region here means the realm's configured/local timezone/locale:
--   oce = Oceanic
--   usp = US Pacific
--   usm = US Mountain
--   usc = US Central
--   use = US Eastern
--   ltn = Latin America
--   bzl = Brazil
--
-- NOTE:
-- This is NOT the physical Blizzard datacenter location. A realm hosted in
-- Chicago can, for example, use Pacific or Eastern realm time.

local addonName, LFGRegion = ...

LFGRegion.REGIONS = {
    oce = { label = "OCE", name = "Oceanic", color = { 0.10, 0.72, 0.25 } },
    usp = { label = "USP", name = "US Pacific", color = { 0.20, 0.60, 1.00 } },
    usm = { label = "USM", name = "US Mountain", color = { 0.15, 0.38, 0.95 } },
    usc = { label = "USC", name = "US Central", color = { 1.00, 0.58, 0.05 } },
    use = { label = "USE", name = "US East", color = { 0.92, 0.16, 0.16 } },
    ltn = { label = "LTN", name = "Latin America", color = { 0.10, 0.55, 0.20 } },
    bzl = { label = "BZL", name = "Brazil", color = { 0.18, 0.55, 0.32 } },
}

LFGRegion.REALMS = {
    --------------------------------------------------------------------------
    -- Oceanic
    --------------------------------------------------------------------------
    oce = {
        "Aman'Thul",
        "Barthilas",
        "Caelestrasz",
        "Dath'Remar",
        "Dreadmaul",
        "Frostmourne",
        "Gundrak",
        "Jubei'Thos",
        "Khaz'goroth",
        "Nagrand",
        "Saurfang",
        "Thaurissan",
    },

    --------------------------------------------------------------------------
    -- US Pacific
    --------------------------------------------------------------------------
    usp = {
        "Aerie Peak",
        "Akama",
        "Andorhal",
        "Antonidas",
        "Arathor",
        "Baelgun",
        "Blackrock",
        "Borean Tundra",
        "Bronzebeard",
        "Cenarius",
        "Cenarion Circle",
        "Coilfang",
        "Dalvengyr",
        "Dark Iron",
        "Darrowmere",
        "Demon Soul",
        "Doomhammer",
        "Draenor",
        "Dragonblight",
        "Dragonmaw",
        "Draka",
        "Drak'thul",
        "Drenden",
        "Echo Isles",
        "Executus",
        "Farstriders",
        "Feathermoon",
        "Frostwolf",
        "Gnomeregan",
        "Hyjal",
        "Kalecgos",
        "Kil'Jaeden",
        "Kilrogg",
        "Lightbringer",
        "Mok'Nathal",
        "Moonrunner",
        "Mug'thol",
        "Ner'zhul",
        "Onyxia",
        "Proudmoore",
        "Scarlet Crusade",
        "Scilla",
        "Shandris",
        "Shadowsong",
        "Shattered Halls",
        "Shattered Hand",
        "Silver Hand",
        "Silvermoon",
        "Sisters of Elune",
        "Skywall",
        "Spirestone",
        "Stormscale",
        "Suramar",
        "Thorium Brotherhood",
        "Tichondrius",
        "Uldum",
        "Ursin",
        "Vashj",
        "Windrunner",
        "Winterhoof",
        "Wyrmrest Accord",
        "Zuluhed",
    },

    --------------------------------------------------------------------------
    -- US Mountain
    --------------------------------------------------------------------------
    usm = {
        "Azjol-Nerub",
        "Blackwater Raiders",
        "Bloodscalp",
        "Boulderfist",
        "Cairne",
        "Darkspear",
        "Deathwing",
        "Dunemaul",
        "Hydraxis",
        "Kel'Thuzad",
        "Khaz Modan",
        "Maiev",
        "Perenolde",
        "Shadow Council",
        "Stonemaul",
        "Terenas",
    },

    --------------------------------------------------------------------------
    -- US Central
    --------------------------------------------------------------------------
    usc = {
        "Aegwynn",
        "Agamaggan",
        "Aggramar",
        "Alexstrasza",
        "Alleria",
        "Anub'arak",
        "Anvilmar",
        "Archimonde",
        "Auchindoun",
        "Azuremyst",
        "Azgalor",
        "Azshara",
        "Blade's Edge",
        "Bladefist",
        "Blackhand",
        "Blackwing Lair",
        "Bonechewer",
        "Burning Legion",
        "Cho'gall",
        "Chromaggus",
        "Crushridge",
        "Daggerspine",
        "Dawnbringer",
        "Dentarg",
        "Destromath",
        "Dethecus",
        "Detheroc",
        "Eitrigg",
        "Emerald Dream",
        "Fizzcrank",
        "Frostmane",
        "Galakrond",
        "Garithos",
        "Garona",
        "Ghostlands",
        "Gorefiend",
        "Greymane",
        "Gurubashi",
        "Hakkar",
        "Haomarush",
        "Hellscream",
        "Icecrown",
        "Illidan",
        "Jaedenar",
        "Kael'thas",
        "Kirin Tor",
        "Korgath",
        "Kul Tiras",
        "Laughing Skull",
        "Lethon",
        "Lightninghoof",
        "Madoran",
        "Maelstrom",
        "Mal'Ganis",
        "Malygos",
        "Misha",
        "Moon Guard",
        "Muradin",
        "Nathrezim",
        "Nazgrel",
        "Nesingwary",
        "Nordrassil",
        "Quel'Dorei",
        "Ravencrest",
        "Ravenholdt",
        "Rexxar",
        "Runetotem",
        "Sargeras",
        "Sen'Jin",
        "Sentinels",
        "Shu'Halo",
        "Smolderthorn",
        "Spinebreaker",
        "Staghelm",
        "Steamwheedle Cartel",
        "Stormreaver",
        "Tanaris",
        "Terokkar",
        "The Underbog",
        "The Venture Co",
        "Thunderhorn",
        "Thunderlord",
        "Tortheldrin",
        "Twisting Nether",
        "Uldaman",
        "Undermine",
        "Uther",
        "Vek'nilash",
        "Whisperwind",
        "Wildhammer",
        "Zangarmarsh",
    },

    --------------------------------------------------------------------------
    -- US Eastern
    --------------------------------------------------------------------------
    use = {
        "Altar of Storms",
        "Alterac Mountains",
        "Anetheron",
        "Area 52",
        "Argent Dawn",
        "Arthas",
        "Arygos",
        "Balnazzar",
        "Black Dragonflight",
        "Bleeding Hollow",
        "Blood Furnace",
        "Bloodhoof",
        "Burning Blade",
        "Dalaran",
        "Drak'tharon",
        "Durotan",
        "Duskwood",
        "Earthen Ring",
        "Eldre'Thalas",
        "Elune",
        "Eonar",
        "Eredar",
        "Exodar",
        "Firetree",
        "Garrosh",
        "Gilneas",
        "Gorgonnash",
        "Grizzly Hills",
        "Gul'dan",
        "Kargath",
        "Korialstrasz",
        "Lightning's Blade",
        "Llane",
        "Lothar",
        "Magtheridon",
        "Malfurion",
        "Malorne",
        "Mannoroth",
        "Medivh",
        "Nazjatar",
        "Norgannon",
        "Rivendare",
        "Skullcrusher",
        "Stormrage",
        "The Forgotten Coast",
        "The Scryers",
        "Thrall",
        "Trollbane",
        "Turalyon",
        "Velen",
        "Warsong",
        "Ysera",
        "Ysondre",
        "Zul'jin",
    },

    --------------------------------------------------------------------------
    -- Latin America
    --------------------------------------------------------------------------
    ltn = {
        "Drakkari",
        "Quel'Thalas",
        "Ragnaros",
    },

    --------------------------------------------------------------------------
    -- Brazil
    --------------------------------------------------------------------------
    bzl = {
        "Azralon",
        "Gallywix",
        "Goldrinn",
        "Nemesis",
        "Tol Barad",
    },
}

-------------------------------------------------------------------------------
-- Realm normalization
-------------------------------------------------------------------------------

local function NormalizeRealm(realm)
    if not realm or realm == "" then
        return nil
    end

    -- Cross-realm names generally omit spaces. Normalizing our table and
    -- incoming names the same way makes:
    --
    --     "Area 52"
    --     "Area52"
    --     "area52"
    --
    -- equivalent.
    --
    -- Apostrophes and hyphens are also ignored so:
    --
    --     "Kel'Thuzad"  -> "kelthuzad"
    --     "Azjol-Nerub" -> "azjolnerub"
    --
    -- Periods are removed as well to match Blizzard's normalized-realm
    -- behavior more closely.

    return realm:lower():gsub("[%s%-'%.]", "")
end

-------------------------------------------------------------------------------
-- Build reverse realm -> region lookup
-------------------------------------------------------------------------------

LFGRegion.realmToRegion = {}

for regionKey, realms in pairs(LFGRegion.REALMS) do
    for _, realm in ipairs(realms) do
        local normalized = NormalizeRealm(realm)

        if normalized then
            -- This check is useful during development if a realm is
            -- accidentally entered in multiple region tables.
            local existingRegion = LFGRegion.realmToRegion[normalized]

            if existingRegion and existingRegion ~= regionKey then
                print(
                    string.format(
                        "|cffff0000%s: duplicate realm mapping: %s (%s and %s)|r",
                        addonName or "LFGRegion",
                        realm,
                        existingRegion,
                        regionKey
                    )
                )
            end

            LFGRegion.realmToRegion[normalized] = regionKey
        end
    end
end

-------------------------------------------------------------------------------
-- Realm extraction
-------------------------------------------------------------------------------

function LFGRegion:GetRealmFromName(name)
    if name and name ~= "" then
        -- WoW cross-realm character names are Character-Realm.
        --
        -- Because character names themselves cannot contain '-', everything
        -- after the first '-' is the realm name. This intentionally retains
        -- hyphens occurring inside realm names such as Azjol-Nerub.

        local realm = name:match("^.-%-(.+)$")

        if realm and realm ~= "" then
            return realm
        end
    end

    -- GetNormalizedRealmName() may temporarily be nil during loading screens,
    -- so retain GetRealmName() as a fallback.
    return GetNormalizedRealmName() or GetRealmName()
end

-------------------------------------------------------------------------------
-- Region lookup
-------------------------------------------------------------------------------

function LFGRegion:GetRegion(name)
    -- Retail Americas is region ID 1. This includes US, Latin America,
    -- Brazil and Oceania.
    --
    -- Don't attempt to classify EU/KR/TW/CN realms using the Americas table.
    if GetCurrentRegion and GetCurrentRegion() ~= 1 then
        return nil
    end

    local realm = self:GetRealmFromName(name)
    local normalizedRealm = NormalizeRealm(realm)

    if not normalizedRealm then
        return nil
    end

    return self.realmToRegion[normalizedRealm]
end

function LFGRegion:GetRegionInfo(name)
    local regionKey = self:GetRegion(name)

    if not regionKey then
        return nil
    end

    return self.REGIONS[regionKey]
end

function LFGRegion:GetRegionText(name)
    local info = self:GetRegionInfo(name)
    return info and info.name or "Unknown"
end

function LFGRegion:GetRegionColored(name)
    local info = self:GetRegionInfo(name)

    if not info then
        return "|cffffffff?|r"
    end

    return CreateColor(
        info.color[1],
        info.color[2],
        info.color[3]
    ):WrapTextInColorCode(info.label)
end

-------------------------------------------------------------------------------
-- Compatibility API used by filters and other addons
-------------------------------------------------------------------------------

PremadeRegions = PremadeRegions or {}

PremadeRegions.GetRegion = function(name)
    return LFGRegion:GetRegion(name)
end

PremadeRegions.GetRegionText = function(name)
    return LFGRegion:GetRegionText(name)
end

PremadeRegions.GetRegionColored = function(name)
    return LFGRegion:GetRegionColored(name)
end