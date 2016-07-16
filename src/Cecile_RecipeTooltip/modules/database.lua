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

function mod:OnProfileChanged()

  self:LoadProfileSettings();

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
  local name;

  if Version.Legion then
      local subIndex = select(index,_G.GetAuctionItemSubClasses(_G.LE_ITEM_CLASS_RECIPE));
      name = _G.GetItemSubClassInfo(_G.LE_ITEM_CLASS_RECIPE,subIndex);
  else
      name = select(index,_G.GetAuctionItemSubClasses(7));
  end

  return name;
end

function mod.GetRecipeClassName()
  local name;

  if Version.Legion then
      name = _G.GetItemClassInfo(_G.LE_ITEM_CLASS_RECIPE);
  else
      name = select(7, _G.GetAuctionItemClasses())
  end

  return name;
end

function mod:CreateModule(index)

  local name = mod.GetSubClassName(index);

  local module = self:NewModule(name);

  module.name = name;
  module.recipes = {};

  return module;

end

