----------------------------------------------------------------------------------------------------
-- engineering module

--get the engine and create the module
local Engine = _G.Cecile_RecipeTooltip;

--get the database
local database = Engine.AddOn:GetModule("database");

--engineering
local PROFESSION_INDEX = 3;

local mod = database:CreateModule(PROFESSION_INDEX);

function mod.LoadRecipes()

  --Vanilla

  mod.recipes[18647]=9318;
  mod.recipes[4414]=4403;
  mod.recipes[11828]=11825;
  mod.recipes[16055]=16040;
  mod.recipes[16054]=16022;
  mod.recipes[11827]=11826;
  mod.recipes[16056]=16007;
  mod.recipes[16050]=16006;
  mod.recipes[16053]=16008;
  mod.recipes[16052]=16009;
  mod.recipes[14639]=4381;
  mod.recipes[18291]=18168;
  mod.recipes[18290]=18283;
  mod.recipes[18292]=18282;
  mod.recipes[4410]=4373;
  mod.recipes[17720]=17716;
  mod.recipes[21729]=21592;
  mod.recipes[21728]=21590;
  mod.recipes[18653]=18587;
  mod.recipes[13308]=4386;
  mod.recipes[13309]=4372;
  mod.recipes[4417]=4398;
  mod.recipes[4416]=4395;
  mod.recipes[4415]=4393;
  mod.recipes[18652]=18634;
  mod.recipes[4413]=4388;
  mod.recipes[4412]=4383;
  mod.recipes[4411]=4376;
  mod.recipes[13310]=4407;
  mod.recipes[10602]=10546;
  mod.recipes[10603]=10501;
  mod.recipes[10601]=10499;
  mod.recipes[10606]=10518;
  mod.recipes[10607]=10506;
  mod.recipes[10604]=10510;
  mod.recipes[10605]=10502;
  mod.recipes[10608]=10548;
  mod.recipes[10609]=10576;
  mod.recipes[18655]=18637;
  mod.recipes[18654]=18645;
  mod.recipes[18657]=18638;
  mod.recipes[18656]=18594;
  mod.recipes[18651]=18631;
  mod.recipes[18650]=18588;
  mod.recipes[16048]=16004;
  mod.recipes[16049]=16005;
  mod.recipes[16046]=16023;
  mod.recipes[16047]=16000;
  mod.recipes[16044]=15996;
  mod.recipes[16045]=15999;
  mod.recipes[16042]=15994;
  mod.recipes[18658]=18639;
  mod.recipes[16043]=15995;
  mod.recipes[18648]=9313;
  mod.recipes[20001]=19998;
  mod.recipes[20000]=19999;
  mod.recipes[6716]=6714;
  mod.recipes[16041]=15993;
  mod.recipes[6672]=4852;
  mod.recipes[18661]=18660;
  mod.recipes[21738]=21569;
  mod.recipes[4408]=4401;
  mod.recipes[4409]=4367;
  mod.recipes[7560]=7506;
  mod.recipes[7561]=7148;
  mod.recipes[21733]=21714;
  mod.recipes[13311]=4396;
  mod.recipes[21737]=21570;
  mod.recipes[21734]=21716;
  mod.recipes[21735]=21718;
  mod.recipes[7742]=4397;
  mod.recipes[18649]=9312;
  mod.recipes[19027]=19026;

  --BC

  mod.recipes[35186]=34847;
  mod.recipes[35187]=35185;
  mod.recipes[35311]=33093;
  mod.recipes[35189]=35181;
  mod.recipes[21724]=21558;
  mod.recipes[21726]=21557;
  mod.recipes[25887]=25886;
  mod.recipes[23816]=23774;
  mod.recipes[35192]=35184;
  mod.recipes[23884]=33093;
  mod.recipes[23874]=23819;
  mod.recipes[23811]=23768;
  mod.recipes[23810]=23767;
  mod.recipes[21725]=21559;
  mod.recipes[23814]=23771;
  mod.recipes[21727]=21589;
  mod.recipes[23799]=23746;
  mod.recipes[35310]=33092;
  mod.recipes[32381]=7191;
  mod.recipes[35197]=34353;
  mod.recipes[35196]=34357;
  mod.recipes[35195]=34354;
  mod.recipes[35194]=34356;
  mod.recipes[35193]=34355;
  mod.recipes[23887]=23824;
  mod.recipes[35191]=35183;
  mod.recipes[35190]=35182;
  mod.recipes[34114]=34113;
  mod.recipes[23888]=23821;
  mod.recipes[22729]=22728;
  mod.recipes[23808]=23765;
  mod.recipes[23809]=23766;
  mod.recipes[23802]=23748;
  mod.recipes[23803]=23758;
  mod.recipes[23800]=23747;
  mod.recipes[21731]=21574;
  mod.recipes[23806]=23763;
  mod.recipes[23807]=23764;
  mod.recipes[23804]=23761;
  mod.recipes[23805]=23762;
  mod.recipes[21732]=21576;
  mod.recipes[35582]=35581;
  mod.recipes[21730]=21571;
  mod.recipes[23883]=33092;

  --Woltk

  mod.recipes[44919]=21569;
  mod.recipes[44918]=21570;
  mod.recipes[49050]=49040;
  mod.recipes[23817]=23775;
  mod.recipes[44502]=41508;
  mod.recipes[44503]=44413;

  --Cataclysm

  mod.recipes[71078]=71077;
  mod.recipes[70177]=70139;

  --Pandaria

  mod.recipes[89992]=87764;
  mod.recipes[89993]=88491;
  mod.recipes[89994]=88493;
  mod.recipes[89996]=89893;
  mod.recipes[89997]=89888;

  --WoD

  mod.recipes[118477]=109120;
  mod.recipes[118476]=109168;
  mod.recipes[118478]=109122;
  mod.recipes[116142]=116147;
  mod.recipes[116146]=116149;
  mod.recipes[116144]=116148;
  mod.recipes[118499]=109172;
  mod.recipes[120136]=119297;
  mod.recipes[118497]=109173;
  mod.recipes[118495]=118008;
  mod.recipes[118493]=114056;
  mod.recipes[118491]=128011;
  mod.recipes[118490]=111821;
  mod.recipes[127739]=127738;
  mod.recipes[118500]=109174;
  mod.recipes[122712]=111366;
  mod.recipes[127729]=127719;
  mod.recipes[127721]=127720;
  mod.recipes[127747]=127737;
  mod.recipes[118480]=109167;
  mod.recipes[118481]=109183;
  mod.recipes[118484]=111402;
  mod.recipes[118485]=112057;
  mod.recipes[118487]=108745;
  mod.recipes[119177]=118741;
  mod.recipes[118489]=111820;
  mod.recipes[118498]=109171;
  mod.recipes[118488]=112059;
  mod.recipes[120135]=119293;
  mod.recipes[120134]=119299;
  mod.recipes[120268]=128017;

  --Legion

  mod.recipes[137713]=132502;
  mod.recipes[137712]=132501;
  mod.recipes[137711]=132500;
  mod.recipes[137710]=132515;
  mod.recipes[137717]=132506;
  mod.recipes[137716]=132505;
  mod.recipes[137715]=132504;
  mod.recipes[137714]=132503;
  mod.recipes[137719]=132509;
  mod.recipes[137718]=132507;
  mod.recipes[151717]=151652;
  mod.recipes[137697]=132500;
  mod.recipes[137694]=132525;
  mod.recipes[137695]=132524;
  mod.recipes[137692]=132518;
  mod.recipes[137693]=132526;
  mod.recipes[137691]=132517;
  mod.recipes[144337]=144333;
  mod.recipes[144336]=144332;
  mod.recipes[144335]=144331;
  mod.recipes[137698]=132501;
  mod.recipes[137699]=132502;
  mod.recipes[141849]=132530;
  mod.recipes[144338]=144334;
  mod.recipes[144343]=144341;
  mod.recipes[137704]=132507;
  mod.recipes[137705]=132509;
  mod.recipes[137706]=132510;
  mod.recipes[137707]=132511;
  mod.recipes[137700]=132503;
  mod.recipes[137701]=132504;
  mod.recipes[137702]=132505;
  mod.recipes[137703]=132506;
  mod.recipes[137708]=132513;
  mod.recipes[137709]=132514;
  mod.recipes[137722]=132513;
  mod.recipes[137723]=132514;
  mod.recipes[137720]=132510;
  mod.recipes[137721]=132511;
  mod.recipes[137726]=136606;
  mod.recipes[137727]=134125;
  mod.recipes[137724]=132515;
  mod.recipes[137725]=132982;
  mod.recipes[151714]=151651;
  mod.recipes[133671]=132504;
  mod.recipes[136701]=136688;
  mod.recipes[136700]=136687;

end
