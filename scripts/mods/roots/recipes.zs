import mods.recipestages.Recipes;

import mods.roots.Mortar;
import mods.roots.Fey;
import mods.roots.FlowerGrowth;

# https://github.com/CraftTweaker/CraftTweaker-Documentation/tree/master/docs/Mods/Roots_3

recipes.remove(<roots:bonfire>);
Recipes.addShaped("bronze", <roots:bonfire>, [
  [null, <naturesaura:ancient_log>, null],
  [<naturesaura:ancient_log>, <ore:wildroot>, <naturesaura:ancient_log>],
  [<naturesaura:infused_iron>, <rustic:vase>, <naturesaura:infused_iron>]]);

/*
void addRecipe(
  string name,          // the name of the recipe; if replacing an existing recipe, be sure to use the same name to ensure Patchouli continuity
  IItemStack output,    // the itemstack produced by this recipe
  IIngredient[] inputs, // an array of IIngredients that make up the recipe; must contain 5 items
  int xp                // the amount of xp (in levels) to reward the player for crafting this recipe
);
*/
Fey.addRecipe("runestone", <roots:runestone> * 2,
  [<ore:dustRedstone>,
  <ore:gemLapis>, <ore:rootsBark>,
  <naturesaura:infused_stone>, <naturesaura:infused_stone>]);

Fey.addRecipe("sylvan_helmet", <roots:sylvan_helmet>,
  [<naturesaura:infused_iron_helmet>,
  <ore:vine>, <roots:bark_birch>,
  <ore:plateAmethyst>, <roots:fey_leather>]);

Fey.addRecipe("sylvan_chestplate", <roots:sylvan_chestplate>,
  [<naturesaura:infused_iron_chest>,
  <ore:vine>, <roots:bark_birch>,
  <ore:plateAmethyst>, <roots:fey_leather>]);

Fey.addRecipe("sylvan_leggings", <roots:sylvan_leggings>,
  [<naturesaura:infused_iron_pants>,
  <ore:vine>, <roots:bark_birch>,
  <ore:plateAmethyst>, <roots:fey_leather>]);

Fey.addRecipe("sylvan_boots", <roots:sylvan_boots>,
  [<naturesaura:infused_iron_shoes>,
  <ore:vine>, <roots:bark_birch>,
  <ore:plateAmethyst>, <roots:fey_leather>]);

Fey.addRecipe("wildwood_helmet", <roots:wildwood_helmet>,
  [<roots:sylvan_helmet>,
  <roots:bark_wildwood>, <roots:bark_wildwood>,
  <ore:plateSkyIngot>, <ore:lensDiamond>]);

Fey.addRecipe("wildwood_chestplate", <roots:wildwood_chestplate>,
  [<roots:sylvan_chestplate>,
  <roots:bark_wildwood>, <roots:bark_wildwood>,
  <ore:plateSkyIngot>, <ore:lensDiamond>]);

Fey.addRecipe("wildwood_leggings", <roots:wildwood_leggings>,
  [<roots:sylvan_leggings>,
  <roots:bark_wildwood>, <roots:bark_wildwood>,
  <ore:plateSkyIngot>, <ore:lensDiamond>]);

Fey.addRecipe("wildwood_boots", <roots:wildwood_boots>,
  [<roots:sylvan_boots>,
  <roots:bark_wildwood>, <roots:bark_wildwood>,
  <ore:plateSkyIngot>, <ore:lensDiamond>]);

Mortar.addRecipe(<pyrotech:material:17> * 2, [<ore:ingotClay>]);
Mortar.addRecipe(<gregtech:meta_item_1:33>, [<minecraft:iron_nugget>]);

//Adds a Botania magenta flower using block + meta
//FlowerGrowth.addRecipeBlock("mystical_green_flower", <botania:flower>.asBlock(), 2);

var mystFlowers as string[int] = {
  0 : "mystical_white_flower",
  1 : "mystical_orange_flower",
  2 : "mystical_magenta_flower",
  3 : "mystical_light_blue_flower",
  4 : "mystical_yellow_flower",
  5 : "mystical_lime_flower",
  6 : "mystical_pink_flower",
  7 : "mystical_gray_flower",
  8 : "mystical_light_gray_flower",
  9 : "mystical_cyan_flower",
  10: "mystical_purple_flower",
  11: "mystical_blue_flower",
  12: "mystical_brown_flower",
  13: "mystical_green_flower",
  14: "mystical_red_flower",
  15: "mystical_black_flower"
};

var vanillaFlowers as string[] = [
  "dandelion",
  "poppy",
  "blue_orchid",
  "allium",
  "houstonia", #azure_bluet
  "red_tulip",
  "orange_tulip",
  "white_tulip",
  "pink_tulip",
  "oxeye_daisy"
];

for meta, flower in mystFlowers {
  FlowerGrowth.addRecipeBlock(flower, <botania:flower>.asBlock(), meta);
}
for flower in vanillaFlowers {
  FlowerGrowth.removeRecipe(flower);
}
