----------------------------------------------------------------------------------------------------
-- enchanting module

--get the engine and create the module
local Engine = _G.Cecile_RecipeTooltip;

--get the database
local database = Engine.AddOn:GetModule("database");

--enchanting
local PROFESSION_INDEX = 9;

local mod = database:CreateModule(PROFESSION_INDEX);

function mod.LoadRecipes()

  --Vanilla
  mod.recipes[20758]=20744;
  mod.recipes[11813]=11811;
  mod.recipes[20753]=20746;
  mod.recipes[20752]=20745;
  mod.recipes[20757]=20748;
  mod.recipes[20756]=20749;
  mod.recipes[20755]=20750;
  mod.recipes[20754]=20747;

  --BC
  mod.recipes[22562]=22521;
  mod.recipes[34872]=22449;
  mod.recipes[22565]=22449;
  mod.recipes[22563]=22522;

  --Woltk
  mod.recipes[45050]=11811;

  --Cataclysm
  mod.recipes[67312]=67275;
  mod.recipes[67308]=67274;

  --Pandaria

  --WoD
  mod.recipes[122711]=115504;

  --Legion
  mod.recipes[128623]=128535;
  mod.recipes[128622]=128534;
  mod.recipes[128621]=128533;
  mod.recipes[138877]=138794;
  mod.recipes[128625]=128536;
  mod.recipes[138882]=138795;
  mod.recipes[136702]=136689;
  mod.recipes[140634]=124440;
  mod.recipes[136704]=136691;

end



