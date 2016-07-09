----------------------------------------------------------------------------------------------------
-- localized English (tooltip module) strings
--

--get the add-on engine
local AddOnName = ...;

--prepare locale
local L = LibStub("AceLocale-3.0"):NewLocale(AddOnName, "enUS", true);
if not L then return; end

--tooltip module
L["TOOLTIP_MODULE"] = "Tooltip";
L["TOOLTIP_MODULE_ENABLE"] = "Enable Tooltip Changes";
L["TOOLTIP_MODULE_ENABLE_DESC"] = "Attach an additional tooltip with the item details";