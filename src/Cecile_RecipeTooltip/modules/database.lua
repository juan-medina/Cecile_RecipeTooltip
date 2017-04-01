----------------------------------------------------------------------------------------------------
-- tooltip module

--get the engine and create the module
local Engine = select(2,...);
local mod = Engine.AddOn:NewModule("database","AceHook-3.0");

--get the locale
local L=Engine.Locale;

--debug
local debug = Engine.AddOn:GetModule("debug");

--version
local Version = Engine.AddOn:GetModule("version");

--module defaults
mod.Defaults = {
  profile = {
  },
};

--module options table
mod.Options = {
  order = 3,
  type = "group",
  name = L["DATABASE_MODULE"],
  cmdInline = true,
  args = {
    stats = {
      order = 1,
      type = "description",
      width = "full",
      name = function()
        return mod:BuildStats();
      end,
    },
  }
};

function mod:BuildStats()

  -- local SubClasses = {_G.GetAuctionItemSubClasses(_G.LE_ITEM_CLASS_RECIPE)};

  -- for _,v in ipairs(SubClasses) do
  --   local name = mod.GetSubClassName(v+1);
  --   print("profesion "..name.."="..v);
  -- end

  local stats = "";

  local total = 0;
  local moduleRecipes;

  for _,module in pairs(self.modules) do

    moduleRecipes = 0;

    for _,_ in pairs(module.recipes) do

      moduleRecipes = moduleRecipes + 1;

    end

    stats = stats ..string.format(L["DATABASE_STAT"],module.name,moduleRecipes);
    total = total + moduleRecipes;

  end

  stats = stats ..string.format(L["DATABASE_TOTAL"],total);

  return stats;

end

function mod.LoadProfileSettings()

  debug("Database module LoadProfileSettings");

end

function mod.SaveProfileSettings()

end

function mod.OnProfileChanged()

  mod.LoadProfileSettings();

end

function mod.OnEnable()
end

function mod.OnDisable()
end

function mod.GetItemID(item)

  local id = _G.strmatch(item, ":(%d+):");

  if id == "0" then
    id = item;
  end

  return id;

end

function mod:Search(recipeType, recipe)

  local item = nil;

  local module = self.modules[recipeType];

  if module then

    local id = tonumber(mod.GetItemID(recipe));

    item = module.recipes[id];

  end

  return item;
end

function mod:OnInitialize()

  debug("Database module Initialize");

  self:OnProfileChanged();

  self.totalRecipes = 0;

end

function mod.OnEnable()

  for _,module in pairs(mod.modules) do

    module:LoadRecipes();

  end

end

function mod.GetSubClassName(index)

  local subIndex = select(index,_G.GetAuctionItemSubClasses(_G.LE_ITEM_CLASS_RECIPE));
  local name = _G.GetItemSubClassInfo(_G.LE_ITEM_CLASS_RECIPE,subIndex);

  return name;
end

function mod.GetRecipeClassName()
  local name = _G.GetItemClassInfo(_G.LE_ITEM_CLASS_RECIPE);

  return name;
end

function mod:CreateModule(index)

  local shiftIndex = index + 1;

  local name = mod.GetSubClassName(shiftIndex);

  debug("CreateModule "..name.."="..index);

  local module = self:NewModule(name);

  module.name = name;
  module.recipes = {};

  return module;

end

