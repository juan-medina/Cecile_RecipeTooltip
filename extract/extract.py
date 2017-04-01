###############################################################
# Program: package.py
# Description: Package the Addon
# Author: jamedina@gmail.com
# -------------------------------------------------------------
# Required Modules:
###############################################################

# -------------------------------------------------------------
# ACTUAL CODE BELLOW, DO NOT EDIT
# -------------------------------------------------------------

# system imports
import logging
from wowhead import WowheadScrapper

professions = {}

professions["books"] = 0
professions["leatherworking"] = 1
professions["tailoring"] = 2
professions["engineering"] = 3
professions["blacksmithing"] = 4
professions["cooking"] = 9
professions["alchemy"] = 5
professions["first-aid"] = 10
professions["enchanting"] = 6
professions["jewelcrafting"] = 7
professions["inscription"] = 8

expansions = {}
expansions[1] = "Vanilla"
expansions[2] = "BC"
expansions[3] = "Woltk"
expansions[4] = "Cataclysm"
expansions[5] = "Pandaria"
expansions[6] = "WoD"
expansions[7] = "Legion"

log = None


def GetRecipesExpansion(name, expansion):
    scrapper = WowheadScrapper()

    recipes = scrapper.getRecipes(name, expansion)

    if recipes is None:
        recipes = []

    log.info("recipes found: %d", len(recipes))

    cont = 1
    complete = {}
    incomplete = {}
    previous_percent = -1

    for recipe in recipes:
        id = scrapper.getRecipeDetail(recipe)

        percent = int((cont * 100) / len(recipes))
        cont = cont + 1
        if not (percent == previous_percent):
            previous_percent = percent
            log.info("%s : %s progress %d%%", name, expansions[expansion], percent)

        if not (id is None):
            complete[recipe] = id
        else:
            incomplete[recipe] = id

    return complete

def GetFileName(name):
    return name.replace("-","").lower()+".lua"


def GetRecipes(name):

    log.info("Getting recipes for: %s", name)

    total_data = {}
    for expansion in expansions.keys():
        log.info("Getting expansion: %s", expansion)
        expansion_recipes = GetRecipesExpansion(name, expansion)
        total_data[expansion] = {'name': expansions[expansion],
                                 'recipes': expansion_recipes}
    fileName = GetFileName(name)

    log.info("Writing: %s", fileName)

    fileOutput = open(fileName, 'w')

    fileOutput.write('----------------------------------------------------------------------------------------------------'+"\n")
    fileOutput.write('-- ' + name + ' module'+"\n")
    fileOutput.write('\n')
    fileOutput.write('--get the engine and create the module'+"\n")
    fileOutput.write('local Engine = _G.Cecile_RecipeTooltip;'+"\n")
    fileOutput.write('\n')
    fileOutput.write('--get the database'+"\n")
    fileOutput.write('local database = Engine.AddOn:GetModule("database");'+"\n")
    fileOutput.write('\n')
    fileOutput.write('--' + name +"\n")
    fileOutput.write('local PROFESSION_INDEX = '+ str(professions[name]) +';'+"\n")
    fileOutput.write('\n')
    fileOutput.write('local mod = database:CreateModule(PROFESSION_INDEX);'+"\n")
    fileOutput.write('\n')
    fileOutput.write('function mod.LoadRecipes()'+"\n")
    fileOutput.write('\n')

    for expansion in expansions.keys():

        fileOutput.write("  --" + total_data[expansion]['name']+"\n"+"\n")
        recipes = total_data[expansion]['recipes']

        for recipe in recipes.keys():
            fileOutput.write('  mod.recipes[{0}]={1};'.format(
                recipe, recipes[recipe])+"\n")

        fileOutput.write('\n')

    fileOutput.write('end')
    fileOutput.write('\n')

    fileOutput.close()

if __name__ == '__main__':

    LOG_FORMAT = "%(asctime)s - %(name)s - %(levelname)s - %(message)s"
    logging.basicConfig(level=logging.INFO, format=LOG_FORMAT)

    log = logging.getLogger(__name__)

    try:

        log.info("start to extract data")

        for profession in professions:
            GetRecipes(profession)

    except Exception as ex:
        logging.error(ex, exc_info=True)
        raise ex
