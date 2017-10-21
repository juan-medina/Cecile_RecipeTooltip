----------------------------------------------------------------------------------------------------
-- alchemy module

--get the engine and create the module
local Engine = _G.Cecile_RecipeTooltip;

--get the database
local database = Engine.AddOn:GetModule("database");

--alchemy
local PROFESSION_INDEX = 5;

local mod = database:CreateModule(PROFESSION_INDEX);

function mod.LoadRecipes()

  --Vanilla

  mod.recipes[2553]=2457;
  mod.recipes[5640]=5631;
  mod.recipes[17709]=17708;
  mod.recipes[20011]=20007;
  mod.recipes[13520]=13511;
  mod.recipes[13521]=13512;
  mod.recipes[20014]=20004;
  mod.recipes[6053]=6051;
  mod.recipes[9305]=6037;
  mod.recipes[9304]=3577;
  mod.recipes[13501]=13444;
  mod.recipes[5643]=5633;
  mod.recipes[5642]=5634;
  mod.recipes[9300]=9224;
  mod.recipes[9301]=9264;
  mod.recipes[9302]=9210;
  mod.recipes[9303]=9149;
  mod.recipes[14634]=3829;
  mod.recipes[13478]=13445;
  mod.recipes[21547]=21546;
  mod.recipes[13488]=7076;
  mod.recipes[3394]=3386;
  mod.recipes[4597]=4596;
  mod.recipes[13481]=13453;
  mod.recipes[13480]=13446;
  mod.recipes[13483]=7076;
  mod.recipes[13482]=7078;
  mod.recipes[13485]=7082;
  mod.recipes[13484]=7080;
  mod.recipes[13487]=12808;
  mod.recipes[13486]=7080;
  mod.recipes[3830]=3825;
  mod.recipes[3831]=3826;
  mod.recipes[3832]=3828;
  mod.recipes[10644]=9061;
  mod.recipes[12958]=12360;
  mod.recipes[2555]=2459;
  mod.recipes[6055]=6049;
  mod.recipes[13476]=13442;
  mod.recipes[13477]=13443;
  mod.recipes[4624]=4623;
  mod.recipes[13519]=13510;
  mod.recipes[13518]=13506;
  mod.recipes[13517]=13503;
  mod.recipes[9296]=9088;
  mod.recipes[20013]=20008;
  mod.recipes[13479]=13447;
  mod.recipes[6057]=6052;
  mod.recipes[20761]=7068;
  mod.recipes[6056]=6050;
  mod.recipes[3395]=3387;
  mod.recipes[9297]=9197;
  mod.recipes[9294]=9144;
  mod.recipes[9295]=9172;
  mod.recipes[6068]=3824;
  mod.recipes[9298]=9206;
  mod.recipes[3396]=3390;
  mod.recipes[20012]=20002;
  mod.recipes[6054]=6048;
  mod.recipes[13499]=13459;
  mod.recipes[6211]=3391;
  mod.recipes[18257]=18253;
  mod.recipes[6663]=6662;
  mod.recipes[13492]=13462;
  mod.recipes[13493]=13454;
  mod.recipes[13490]=13455;
  mod.recipes[13491]=13452;
  mod.recipes[13496]=13458;
  mod.recipes[13497]=13461;
  mod.recipes[13494]=13457;
  mod.recipes[13495]=13456;

  --BC

  mod.recipes[31682]=31677;
  mod.recipes[31681]=31676;
  mod.recipes[31680]=31679;
  mod.recipes[32071]=32068;
  mod.recipes[22919]=22840;
  mod.recipes[22918]=22451;
  mod.recipes[22917]=22452;
  mod.recipes[22916]=21885;
  mod.recipes[23574]=23571;
  mod.recipes[22914]=22839;
  mod.recipes[22913]=22838;
  mod.recipes[22915]=21884;
  mod.recipes[22911]=22836;
  mod.recipes[22910]=22835;
  mod.recipes[24001]=22831;
  mod.recipes[22912]=22837;
  mod.recipes[35753]=35749;
  mod.recipes[25869]=25867;
  mod.recipes[35755]=35751;
  mod.recipes[35754]=35750;
  mod.recipes[30443]=22452;
  mod.recipes[35752]=35748;
  mod.recipes[31355]=13512;
  mod.recipes[31354]=13510;
  mod.recipes[31356]=13511;
  mod.recipes[22922]=22844;
  mod.recipes[22923]=22845;
  mod.recipes[22920]=22841;
  mod.recipes[22921]=22842;
  mod.recipes[22926]=22848;
  mod.recipes[22927]=22849;
  mod.recipes[22924]=22846;
  mod.recipes[22925]=22847;
  mod.recipes[22900]=22823;
  mod.recipes[22901]=22826;
  mod.recipes[22902]=22827;
  mod.recipes[22903]=22828;
  mod.recipes[22904]=22830;
  mod.recipes[22905]=22831;
  mod.recipes[22906]=22871;
  mod.recipes[22907]=22832;
  mod.recipes[35294]=22848;
  mod.recipes[35295]=22838;
  mod.recipes[22909]=22834;
  mod.recipes[22908]=22833;
  mod.recipes[32070]=32063;
  mod.recipes[29232]=25868;
  mod.recipes[25870]=25868;

  --Woltk

  mod.recipes[44566]=40215;
  mod.recipes[44567]=40216;
  mod.recipes[44564]=40213;
  mod.recipes[44565]=40214;
  mod.recipes[44568]=40217;

  --Cataclysm


  --Pandaria


  --WoD

  mod.recipes[112047]=112090;
  mod.recipes[112045]=109226;
  mod.recipes[112042]=109221;
  mod.recipes[112043]=109222;
  mod.recipes[112040]=109219;
  mod.recipes[112041]=109220;
  mod.recipes[122600]=118472;
  mod.recipes[112033]=109155;
  mod.recipes[112031]=109153;
  mod.recipes[112030]=109152;
  mod.recipes[112037]=109160;
  mod.recipes[112034]=109156;
  mod.recipes[112039]=109218;
  mod.recipes[112038]=109217;
  mod.recipes[122710]=108996;
  mod.recipes[112024]=109145;
  mod.recipes[112026]=109147;
  mod.recipes[112027]=109148;
  mod.recipes[128160]=128158;
  mod.recipes[128161]=128159;
  mod.recipes[112022]=40217;
  mod.recipes[112023]=109262;

  --Legion

  mod.recipes[127932]=127849;
  mod.recipes[127933]=127850;
  mod.recipes[127930]=127847;
  mod.recipes[127931]=127848;
  mod.recipes[127918]=127835;
  mod.recipes[127919]=127836;
  mod.recipes[127934]=127851;
  mod.recipes[127935]=127834;
  mod.recipes[127914]=127850;
  mod.recipes[127915]=127851;
  mod.recipes[127938]=127837;
  mod.recipes[127917]=127834;
  mod.recipes[127910]=127846;
  mod.recipes[127911]=127847;
  mod.recipes[127912]=127848;
  mod.recipes[127913]=127849;
  mod.recipes[152617]=152615;
  mod.recipes[127950]=127849;
  mod.recipes[127922]=127839;
  mod.recipes[127944]=127843;
  mod.recipes[127951]=127850;
  mod.recipes[127939]=127838;
  mod.recipes[127936]=127835;
  mod.recipes[127952]=127851;
  mod.recipes[127923]=127840;
  mod.recipes[127937]=127836;
  mod.recipes[127899]=127835;
  mod.recipes[127898]=127834;
  mod.recipes[127941]=127840;
  mod.recipes[151658]=151608;
  mod.recipes[151659]=151608;
  mod.recipes[151657]=151608;
  mod.recipes[127940]=127839;
  mod.recipes[142120]=142117;
  mod.recipes[142121]=142117;
  mod.recipes[152616]=152615;
  mod.recipes[127929]=127846;
  mod.recipes[127943]=127842;
  mod.recipes[127928]=127845;
  mod.recipes[127947]=127846;
  mod.recipes[128210]=141323;
  mod.recipes[128211]=141323;
  mod.recipes[127921]=127838;
  mod.recipes[127920]=127837;
  mod.recipes[127909]=127845;
  mod.recipes[127908]=127844;
  mod.recipes[127925]=127842;
  mod.recipes[127924]=127841;
  mod.recipes[127927]=127844;
  mod.recipes[127926]=127843;
  mod.recipes[127903]=127839;
  mod.recipes[127902]=127838;
  mod.recipes[127901]=127837;
  mod.recipes[127900]=127836;
  mod.recipes[127907]=127843;
  mod.recipes[127906]=127842;
  mod.recipes[127905]=127841;
  mod.recipes[127904]=127840;
  mod.recipes[127942]=127841;
  mod.recipes[127949]=127848;
  mod.recipes[151710]=151568;
  mod.recipes[127946]=127845;
  mod.recipes[127948]=127847;
  mod.recipes[151708]=151607;
  mod.recipes[142119]=142117;
  mod.recipes[151703]=151609;
  mod.recipes[151704]=151609;
  mod.recipes[151705]=151609;
  mod.recipes[151706]=151607;
  mod.recipes[151707]=151607;
  mod.recipes[152618]=152615;
  mod.recipes[128209]=141323;
  mod.recipes[127945]=127844;

end
