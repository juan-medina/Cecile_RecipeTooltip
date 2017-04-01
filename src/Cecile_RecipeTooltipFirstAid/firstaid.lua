----------------------------------------------------------------------------------------------------
-- first-aid module

--get the engine and create the module
local Engine = _G.Cecile_RecipeTooltip;

--get the database
local database = Engine.AddOn:GetModule("database");

--first-aid
local PROFESSION_INDEX = 10;

local mod = database:CreateModule(PROFESSION_INDEX);

function mod.LoadRecipes()

  --Vanilla

  mod.recipes[19442]=19440;
  mod.recipes[6454]=6453;
  mod.recipes[16112]=6451;
  mod.recipes[16113]=8544;

  --BC

  mod.recipes[21992]=21990;
  mod.recipes[21993]=21991;

  --Woltk

  mod.recipes[39152]=34722;

  --Cataclysm


  --Pandaria


  --WoD


  --Legion

  mod.recipes[142333]=142332;

end