----------------------------------------------------------------------------------------------------
-- localized English (main) strings
--

--get the AddOn engine
local AddOnName = ...;

--force localization to Spanish (only for testing)
--_G.GAME_LOCALE = "esES"

--prepare locale
local L = LibStub("AceLocale-3.0"):NewLocale(AddOnName, "enUS", true);
if not L then return; end

--main strings
L["LOAD_MESSAGE"] = "%s (version |cff0070de%s|r) loaded, type /%s or /%s for options."
L["CONFIG_WINDOW"] = "%s (version |cff0070de%s|r) by |cffffffffCecile|r - |cff0070deEU|r - |cffff2020Zul'jin|r"
L["MINIMAP_LABEL"] = "%s (|cff0070de%s|r)"
L["MINIMAP_HELP_1"] = "|cFFCFCFCFleft click|r:  Open the Configuration"
L["PROFILES"] = "Profiles"
L["ABOUT"] = [[|cff0070deSpecial thanks to:|r

|cff82c5ffLaodice|r.

|cff0070deUsage:|r

This addon will attach an additional item tooltip to any recipe tooltip that produces an item.

That tooltip could show additional information that other addons embed, as an example the auction price.

This addon is compose of several modules that act as a database of items produce by recipes.

Those module are classified by profession and could be disable in the general addon settings within the game.

]]