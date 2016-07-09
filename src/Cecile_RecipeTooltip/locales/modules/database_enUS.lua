----------------------------------------------------------------------------------------------------
-- localized English (database module) strings
--

--get the add-on engine
local AddOnName = ...;

--prepare locale
local L = LibStub("AceLocale-3.0"):NewLocale(AddOnName, "enUS", true);
if not L then return; end

--database module
L["DATABASE_MODULE"] = "Database";
L["DATABASE_STAT"] = [[|cfffff569%s|r: %d recipes.|r

]];
L["DATABASE_TOTAL"] = "|cff0070deTotal|r: %d recipes.";