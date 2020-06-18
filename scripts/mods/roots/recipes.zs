import mods.roots.Mortar;

// Adds a recipe that makes gunpowder out of flint
// As the recipe only has one input, it will automatically
// generate 5 recipes, increasing the number of inputs and
// the quantity of the output respectively.

Mortar.addRecipe(<pyrotech:material:17> * 2, [<ore:ingotClay>]);
Mortar.addRecipe(<gregtech:meta_item_1:33>, [<minecraft:iron_nugget>]);
