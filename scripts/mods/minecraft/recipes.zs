import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes;

Recipes.addShaped("pyro_refactory", <minecraft:furnace>, [
  [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>],
  [<ore:blockBrick>, <pyrotech:flint_and_tinder>, <ore:blockBrick>],
  [<ore:blockBrick>, <ore:blockBrick>, <ore:blockBrick>]]);

Recipes.addShaped("pyro_refactory", <minecraft:crafting_table>, [
  [<ore:slabBricks>, <ore:slabBricks>, <ore:slabBricks>],
  [<ore:slabBricks>, <ore:blockIron>, <ore:slabBricks>],
  [<ore:slabBricks>, <ore:slabBricks>, <ore:slabBricks>]]);
