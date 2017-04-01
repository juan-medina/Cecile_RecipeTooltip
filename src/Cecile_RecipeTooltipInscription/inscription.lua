----------------------------------------------------------------------------------------------------
-- inscription module

--get the engine and create the module
local Engine = _G.Cecile_RecipeTooltip;

--get the database
local database = Engine.AddOn:GetModule("database");

--inscription
local PROFESSION_INDEX = 8;

local mod = database:CreateModule(PROFESSION_INDEX);

function mod.LoadRecipes()

  --Vanilla


  --BC


  --Woltk

  mod.recipes[46108]=45854;

  --Cataclysm

  mod.recipes[65651]=63246;
  mod.recipes[65650]=62238;
  mod.recipes[65649]=62239;

  --Pandaria

  mod.recipes[104223]=104104;
  mod.recipes[104231]=104122;
  mod.recipes[104224]=104105;
  mod.recipes[104227]=104108;
  mod.recipes[104235]=104127;
  mod.recipes[104229]=104120;
  mod.recipes[104245]=104138;
  mod.recipes[102534]=102483;
  mod.recipes[104234]=104126;
  mod.recipes[104219]=104099;

  --WoD

  mod.recipes[122713]=112377;
  mod.recipes[128409]=114931;
  mod.recipes[127728]=127717;
  mod.recipes[127741]=127736;
  mod.recipes[118610]=128010;
  mod.recipes[118613]=113270;
  mod.recipes[118615]=113131;
  mod.recipes[118606]=112270;
  mod.recipes[118607]=111526;
  mod.recipes[128412]=114931;
  mod.recipes[118614]=113289;
  mod.recipes[128414]=114931;
  mod.recipes[127746]=127735;
  mod.recipes[127723]=127718;
  mod.recipes[120265]=128018;
  mod.recipes[128413]=114931;
  mod.recipes[118605]=113134;
  mod.recipes[128411]=114931;
  mod.recipes[128410]=114931;

  --Legion

  mod.recipes[137759]=128999;
  mod.recipes[137758]=128998;
  mod.recipes[137757]=128997;
  mod.recipes[137756]=128996;
  mod.recipes[137755]=128995;
  mod.recipes[137754]=128994;
  mod.recipes[137753]=128993;
  mod.recipes[137752]=128992;
  mod.recipes[137751]=128991;
  mod.recipes[137750]=128990;
  mod.recipes[146357]=146296;
  mod.recipes[146356]=146294;
  mod.recipes[146355]=146292;
  mod.recipes[142106]=142103;
  mod.recipes[142107]=142101;
  mod.recipes[142104]=142101;
  mod.recipes[142105]=142102;
  mod.recipes[142108]=142102;
  mod.recipes[142109]=142103;
  mod.recipes[146359]=146298;
  mod.recipes[146358]=146297;
  mod.recipes[143751]=143750;
  mod.recipes[141642]=141640;
  mod.recipes[141643]=141641;
  mod.recipes[146396]=146295;
  mod.recipes[137728]=128980;
  mod.recipes[137729]=141333;
  mod.recipes[142111]=142102;
  mod.recipes[142110]=142101;
  mod.recipes[142112]=142103;
  mod.recipes[146360]=146299;
  mod.recipes[139650]=129002;
  mod.recipes[139651]=129003;
  mod.recipes[137738]=137293;
  mod.recipes[137731]=129018;
  mod.recipes[137730]=129017;
  mod.recipes[137733]=139358;
  mod.recipes[137732]=129019;
  mod.recipes[137735]=139338;
  mod.recipes[137734]=129021;
  mod.recipes[137737]=137269;
  mod.recipes[137736]=137287;
  mod.recipes[141033]=139270;
  mod.recipes[141032]=139271;
  mod.recipes[141031]=139272;
  mod.recipes[141030]=137274;
  mod.recipes[141037]=139362;
  mod.recipes[141036]=139437;
  mod.recipes[141035]=139435;
  mod.recipes[141034]=139273;
  mod.recipes[146339]=146298;
  mod.recipes[146338]=146297;
  mod.recipes[141039]=140630;
  mod.recipes[141038]=139438;
  mod.recipes[147120]=147119;
  mod.recipes[139649]=129001;
  mod.recipes[139648]=129000;
  mod.recipes[139647]=128999;
  mod.recipes[139646]=128998;
  mod.recipes[139645]=128997;
  mod.recipes[139644]=128996;
  mod.recipes[139643]=128995;
  mod.recipes[139642]=128994;
  mod.recipes[139641]=128993;
  mod.recipes[139640]=128992;
  mod.recipes[146397]=146293;
  mod.recipes[146340]=146299;
  mod.recipes[143615]=129022;
  mod.recipes[140037]=128979;
  mod.recipes[146364]=146303;
  mod.recipes[141049]=137239;
  mod.recipes[146365]=146334;
  mod.recipes[146411]=146406;
  mod.recipes[146412]=146406;
  mod.recipes[146413]=146406;
  mod.recipes[143616]=143588;
  mod.recipes[146363]=146302;
  mod.recipes[141046]=139288;
  mod.recipes[141047]=137267;
  mod.recipes[139638]=128990;
  mod.recipes[139639]=128991;
  mod.recipes[141042]=136826;
  mod.recipes[141043]=137249;
  mod.recipes[141040]=136825;
  mod.recipes[141041]=139278;
  mod.recipes[139636]=128988;
  mod.recipes[139637]=128989;
  mod.recipes[141048]=137240;
  mod.recipes[139635]=128987;
  mod.recipes[141591]=141333;
  mod.recipes[141592]=141333;
  mod.recipes[146400]=146295;
  mod.recipes[141447]=141446;
  mod.recipes[146335]=146292;
  mod.recipes[146343]=146302;
  mod.recipes[141055]=139339;
  mod.recipes[141054]=139348;
  mod.recipes[141057]=129020;
  mod.recipes[141056]=139442;
  mod.recipes[137788]=136856;
  mod.recipes[137789]=136857;
  mod.recipes[141053]=139352;
  mod.recipes[141051]=137238;
  mod.recipes[146399]=146293;
  mod.recipes[137787]=136852;
  mod.recipes[137780]=129000;
  mod.recipes[137781]=129001;
  mod.recipes[137782]=129002;
  mod.recipes[137783]=129003;
  mod.recipes[141050]=137261;
  mod.recipes[137767]=128987;
  mod.recipes[137762]=129002;
  mod.recipes[137763]=129003;
  mod.recipes[137760]=129000;
  mod.recipes[137761]=129001;
  mod.recipes[137768]=128988;
  mod.recipes[137769]=128989;
  mod.recipes[146398]=146295;
  mod.recipes[141059]=137289;
  mod.recipes[141058]=139289;
  mod.recipes[141060]=137288;
  mod.recipes[141062]=137191;
  mod.recipes[141063]=139312;
  mod.recipes[141064]=139310;
  mod.recipes[141065]=139313;
  mod.recipes[141066]=139311;
  mod.recipes[141067]=139315;
  mod.recipes[141068]=137188;
  mod.recipes[137791]=128712;
  mod.recipes[137790]=128712;
  mod.recipes[146362]=146301;
  mod.recipes[136706]=136693;
  mod.recipes[136705]=136692;
  mod.recipes[146361]=146300;
  mod.recipes[147118]=147117;
  mod.recipes[137775]=128995;
  mod.recipes[137774]=128994;
  mod.recipes[137777]=128997;
  mod.recipes[137776]=128996;
  mod.recipes[137771]=128991;
  mod.recipes[137770]=128990;
  mod.recipes[137773]=128993;
  mod.recipes[137772]=128992;
  mod.recipes[137779]=128999;
  mod.recipes[137778]=128998;
  mod.recipes[146384]=146303;
  mod.recipes[146385]=146334;
  mod.recipes[141044]=137250;
  mod.recipes[141045]=137194;
  mod.recipes[146379]=146298;
  mod.recipes[146378]=146297;
  mod.recipes[146375]=146292;
  mod.recipes[146380]=146299;
  mod.recipes[146377]=146296;
  mod.recipes[146376]=146294;
  mod.recipes[146381]=146300;
  mod.recipes[146382]=146301;
  mod.recipes[146383]=146302;
  mod.recipes[146982]=146981;
  mod.recipes[146980]=146979;
  mod.recipes[137740]=139274;
  mod.recipes[137741]=129028;
  mod.recipes[137742]=129029;
  mod.recipes[137743]=139417;
  mod.recipes[137744]=139436;
  mod.recipes[137745]=128978;
  mod.recipes[137746]=128978;
  mod.recipes[137747]=128987;
  mod.recipes[137748]=128988;
  mod.recipes[137749]=128989;
  mod.recipes[141900]=141898;
  mod.recipes[146337]=146296;
  mod.recipes[146336]=146294;
  mod.recipes[146395]=146293;
  mod.recipes[140566]=140568;
  mod.recipes[146341]=146300;
  mod.recipes[146342]=146301;
  mod.recipes[140565]=140567;
  mod.recipes[146344]=146303;
  mod.recipes[146345]=146334;

end
