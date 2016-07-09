----------------------------------------------------------------------------------------------------
-- localized Spanish (main) strings
--

--get the AddOn engine
local AddOnName = ...;

--Spanish or Latin America Spanish
local L = LibStub("AceLocale-3.0"):NewLocale(AddOnName, "esES")
if not L then
	L = LibStub("AceLocale-3.0"):NewLocale(AddOnName, "esMX");
	if not L then
		return;
	end
end

--main strings
L["LOAD_MESSAGE"] = "%s (versión |cff0070de%s|r) cargado, escribe /%s o /%s para opciones."
L["CONFIG_WINDOW"] = "%s (version |cff0070de%s|r) creado por |cffffffffCecile|r - |cff0070deEU|r - |cffff2020Zul'jin|r"
L["MINIMAP_LABEL"] = "%s (|cff0070de%s|r)"
L["MINIMAP_HELP_1"] = "|cFFCFCFCFClick Izquierdo|r: Abre la configuración"
L["PROFILES"] = "Perfiles"
L["ABOUT"] = [[|cff0070deAgradecimientos especiales para:|r

|cff82c5ffLaodice|r.

|cff0070deUso:|r

Este addon acopla una descrepcion ermergente nueva a las descripciones emergentes de recetas mostrando el item que producen.

En esa descripcion emergente se puede mostrar otra informacion que ha sido embebida por otros addons, como el precio de subasta.

Este addon esta compuesto de varios modulos que funciona como una base de datos sobre items producidos por recetas.

Estos modules esta clasificados por profesion y puedes desactivarse en las opciones generales de addons desde el juego.


]]