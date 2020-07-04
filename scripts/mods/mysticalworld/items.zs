import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var itemsStage as IIngredient[][string] = {
  stages.dev : [
    <mysticalworld:epic_squid>,
    <mysticalworld:ink_bottle>,
    <mysticalworld:unripe_pearl>,
    <mysticalworld:spindle>,

    <mysticalworld:pearl>, #TODO
    <mysticalworld:pearl_button>,
    <mysticalworld:pearl_wall>,
    <mysticalworld:pearl_stairs>,
    <mysticalworld:pearl_slab>,
    <mysticalworld:pearl_block>,
    <mysticalworld:pearl_fence_gate>,
    <mysticalworld:pearl_fence>,
    <mysticalworld:pearl_pressure_plate>
  ],
  stages.pyro : [
    <mysticalworld:cooked_venison>,
    <mysticalworld:cooked_squid>,
    <mysticalworld:assorted_seeds>,
    <mysticalworld:cooked_seeds>,
    <mysticalworld:cooked_aubergine>,
    <mysticalworld:stuffed_aubergine>,
    <mysticalworld:silk_thread>
  ],
  stages.disable : [
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_fox"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_frog"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_beetle"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_sprout"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_deer"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_endermini"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_owl"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_lava_cat"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_silkworm"}}),
    <mysticalworld:copper_axe>,
    <mysticalworld:copper_hoe>,
    <mysticalworld:copper_pickaxe>,
    <mysticalworld:copper_shovel>,
    <mysticalworld:copper_sword>,
    <mysticalworld:silver_axe>,
    <mysticalworld:silver_hoe>,
    <mysticalworld:silver_pickaxe>,
    <mysticalworld:silver_shovel>,
    <mysticalworld:silver_sword>,
    <mysticalworld:amethyst_axe>,
    <mysticalworld:amethyst_hoe>,
    <mysticalworld:amethyst_pickaxe>,
    <mysticalworld:amethyst_shovel>,
    <mysticalworld:amethyst_sword>,
    <mysticalworld:copper_block>,
    <mysticalworld:copper_ore>,
    <mysticalworld:silver_block>,
    <mysticalworld:silver_ore>,
    <mysticalworld:amethyst_block>,
    <mysticalworld:amethyst_ore>,
    <mysticalworld:amethyst_gem>,
    <mysticalworld:copper_ingot>,
    <mysticalworld:copper_nugget>,
    <mysticalworld:copper_dust>,
    <mysticalworld:copper_dust_tiny>,
    <mysticalworld:silver_ingot>,
    <mysticalworld:silver_nugget>,
    <mysticalworld:silver_dust>,
    <mysticalworld:silver_dust_tiny>,
    <mysticalworld:iron_dust>,
    <mysticalworld:iron_dust_tiny>,
    <mysticalworld:gold_dust>,
    <mysticalworld:gold_dust_tiny>,
    <mysticalworld:amethyst_knife>,
    <mysticalworld:copper_knife>,
    <mysticalworld:silver_knife>
  ]
};

for stage, items in itemsStage {
	for item in items {
		addItemStage(stage, item);
    mods.recipestages.Recipes.setRecipeStage(stage, item);
  }
}
