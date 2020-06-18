import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

import mods.ItemStages.addItemStage;
import mods.ItemStages.stageRecipeCategory;

var categoryStage as string[][string] = {
  stages.pyro_stone : [
  ],
  stages.pyro_refactory : [
  ],
  stages.disable : [
  ]
};

var itemsStage as IIngredient[][string] = {
  stages.pyro_stone : [
  ],
  stages.pyro_refactory : [
    <minecraft:furnace>,
    <minecraft:crafting_table>
  ],
  stages.disable : [
  ],
  stages.common : [
  ]
};

for stage, items in itemsStage {
	for item in items {
		addItemStage(stage, item);
    mods.recipestages.Recipes.setRecipeStage(stage, item);
  }
}
for stage, categories in categoryStage {
	for category in categories {
		stageRecipeCategory(stage, category);
	}
}
