import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.ItemStages.addItemStage;

import scripts.globalfunctions.hideItems;

var itemsStage as IIngredient[][string] = {
  stages.dev : [
  ],
  stages.pyro_stone : [
  ],
  stages.pyro_refactory : [
    <minecraft:furnace>,
    <minecraft:crafting_table>
  ],
  stages.disable : [
    <minecraft:gold_ore>,
    <minecraft:iron_ore>,
    <minecraft:coal_ore>,
    <minecraft:lapis_ore>,
    <minecraft:diamond_ore>,
    <minecraft:redstone_ore>,
    <minecraft:emerald_ore>,
    <minecraft:quartz_ore>
  ]
};

var toHide as IItemStack[] = [
  <minecraft:bedrock>
];

hideItems(toHide);

for stage, items in itemsStage {
	for item in items {
		addItemStage(stage, item);
    mods.recipestages.Recipes.setRecipeStage(stage, item);
  }
}
