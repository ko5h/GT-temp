import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes;
import mods.naturesaura.Offering;

# https://github.com/CraftTweaker/CraftTweaker-Documentation/tree/master/docs/Mods/Natures_Aura

var durabilityMap as int[IItemStack] = {
	<naturesaura:infused_iron_pickaxe> : 25,
  <naturesaura:infused_iron_axe>     : 25,
  <naturesaura:infused_iron_shovel>  : 25,
  <naturesaura:infused_iron_hoe>     : 25,
  <naturesaura:infused_iron_sword>   : 25,

  <naturesaura:infused_iron_helmet>  : 20,
  <naturesaura:infused_iron_chest>   : 35,
  <naturesaura:infused_iron_pants>   : 30,
  <naturesaura:infused_iron_shoes>   : 25
};

# mods.naturesaura.Offering.addRecipe(String name, IIngredient input, int inputAmount, IIngredient startItem, IItemStack output)
Offering.addRecipe("Offering_iron_block", <ore:ingotIron>, 9, <ore:craftingAnvil>, <minecraft:iron_block>);

recipes.remove(<patchouli:guide_book>.withTag({"patchouli:book": "naturesaura:book"}));
Recipes.addShaped("bronze", <patchouli:guide_book>.withTag({"patchouli:book": "naturesaura:book"}), [
  [<naturesaura:gold_fiber>],
  [<ore:bookEmpty>]]);

recipes.remove(<naturesaura:infused_iron_helmet>);
Recipes.addShaped("bronze", <naturesaura:infused_iron_helmet>, [
  [<ore:plateInfusedIron>, <ore:plateInfusedIron>, <ore:plateInfusedIron>],
  [<ore:plateInfusedIron>, <minecraft:leather_helmet>, <ore:plateInfusedIron>],
  [null, <naturesaura:ancient_stick>, null]]);

recipes.remove(<naturesaura:infused_iron_chest>);
Recipes.addShaped("bronze", <naturesaura:infused_iron_chest>, [
  [<ore:plateInfusedIron>, <naturesaura:ancient_stick>, <ore:plateInfusedIron>],
  [<ore:plateInfusedIron>, <minecraft:leather_chestplate>, <ore:plateInfusedIron>],
  [<ore:plateInfusedIron>, <ore:plateInfusedIron>, <ore:plateInfusedIron>]]);

recipes.remove(<naturesaura:infused_iron_pants>);
Recipes.addShaped("bronze", <naturesaura:infused_iron_pants>, [
  [<ore:plateInfusedIron>, <ore:plateInfusedIron>, <ore:plateInfusedIron>],
  [<ore:plateInfusedIron>, <naturesaura:ancient_stick>, <ore:plateInfusedIron>],
  [<ore:plateInfusedIron>, <minecraft:leather_leggings>, <ore:plateInfusedIron>]]);

recipes.remove(<naturesaura:infused_iron_shoes>);
Recipes.addShaped("bronze", <naturesaura:infused_iron_shoes>, [
  [<ore:plateInfusedIron>, <naturesaura:ancient_stick>, <ore:plateInfusedIron>],
  [<ore:plateInfusedIron>, <minecraft:leather_boots>, <ore:plateInfusedIron>]]);

recipes.remove(<naturesaura:infused_iron_pickaxe>);
Recipes.addShaped("bronze", <naturesaura:infused_iron_pants>, [
  [<ore:plateInfusedIron>, <silentgear:template_pickaxe>, <ore:plateInfusedIron>],
  [<ore:plateInfusedIron>, <naturesaura:ancient_stick>, <ore:plateInfusedIron>],
  [null, <naturesaura:ancient_stick>, null]]);

recipes.remove(<naturesaura:infused_iron_axe>);
Recipes.addShaped("bronze", <naturesaura:infused_iron_axe>, [
  [<ore:plateInfusedIron>, <silentgear:template_axe>, <ore:plateInfusedIron>],
  [<ore:plateInfusedIron>, <naturesaura:ancient_stick>, <ore:plateInfusedIron>],
  [null, <naturesaura:ancient_stick>, null]]);

recipes.remove(<naturesaura:infused_iron_shovel>);
Recipes.addShaped("bronze", <naturesaura:infused_iron_shovel>, [
  [<ore:plateInfusedIron>, <silentgear:template_shovel>, <ore:plateInfusedIron>],
  [null, <naturesaura:ancient_stick>, null],
  [null, <naturesaura:ancient_stick>, null]]);

recipes.remove(<naturesaura:infused_iron_hoe>);
Recipes.addShaped("bronze", <naturesaura:infused_iron_hoe>, [
  [<ore:plateInfusedIron>, <silentgear:template_mattock>, <ore:plateInfusedIron>],
  [null, <naturesaura:ancient_stick>, null],
  [null, <naturesaura:ancient_stick>, null]]);

recipes.remove(<naturesaura:infused_iron_sword>);
Recipes.addShaped("bronze", <naturesaura:infused_iron_sword>, [
  [<ore:plateInfusedIron>, <silentgear:template_sword>, <ore:plateInfusedIron>],
  [<ore:plateInfusedIron>, <naturesaura:ancient_stick>, <ore:plateInfusedIron>],
  [null, <naturesaura:ancient_stick>, null]]);

for item, durability in durabilityMap {
		item.maxDamage = durability;
}
