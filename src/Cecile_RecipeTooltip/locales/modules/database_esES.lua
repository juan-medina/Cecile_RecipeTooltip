----------------------------------------------------------------------------------------------------
-- localized Spanish (database module) strings
--

--get the add-on engine
local AddOnName = ...;

--Spanish or Latin America Spanish
local L = LibStub("AceLocale-3.0"):NewLocale(AddOnName, "esES")
if not L then
  L = LibStub("AceLocale-3.0"):NewLocale(AddOnName, "esMX");
  if not L then
    return;
  end
end

--database module
L["DATABASE_MODULE"] = "Base de datos";
L["DATABASE_STAT"] = "|cfffff569%s: %d recetas|r";
L["DATABASE_TOTAL"] = "|cff0070deTotal: %d recetas|r";