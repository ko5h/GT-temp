import crafttweaker.item.IItemStack;

import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.IroncladAnvil;

//import mods.RecipeStages.Recipes;
recipes.addShaped(<pyrotech:material:24>, [
	[<pyrotech:rock:4>, <pyrotech:material:17>, <pyrotech:rock:4>],
	[<pyrotech:material:17>, <pyrotech:rock:4>, <pyrotech:material:17>],
	[<pyrotech:rock:4>, <pyrotech:material:17>, <pyrotech:rock:4>]]);

recipes.remove(<pyrotech:material:17>);
recipes.remove(<pyrotech:material:24>);

GraniteAnvil.removeRecipes(<minecraft:stone_slab:4>);
IroncladAnvil.removeRecipes(<minecraft:stone_slab:4>);

/*
<pyrotech:brick_kiln>
<pyrotech:brick_oven>
<pyrotech:brick_sawmill>
<pyrotech:brick_crucible>
*/
