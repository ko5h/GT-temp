import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.ItemStages.addItemStage;

import scripts.globalfunctions.hideItems;

var itemsStage as IIngredient[][string] = {
  stages.bronze : [
// Its first
    <patchouli:guide_book>.withTag({"patchouli:book": "naturesaura:book"}),
    <naturesaura:nature_altar>,
    <naturesaura:gold_powder>,
    <naturesaura:wood_stand>,
    <naturesaura:gold_fiber>,
    <naturesaura:gold_leaf>,
    <naturesaura:infused_iron>,
    <naturesaura:infused_iron_block>, #TODO
    <naturesaura:gold_brick>,
    <naturesaura:moss_generator>,
    <naturesaura:range_visualizer>,
    <naturesaura:bottle_two_the_rebottling>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),
    <naturesaura:token_joy>,
// Woods
    <naturesaura:ancient_bark>,
    <naturesaura:ancient_log>,
    <naturesaura:ancient_planks>,
    <naturesaura:ancient_stick>,
    <naturesaura:ancient_leaves>,
    <naturesaura:ancient_sapling>,
    <naturesaura:ancient_stairs>,
    <naturesaura:ancient_slab>,
    <naturesaura:ancient_slab_double>,
// Stones
    <naturesaura:infused_stone>,
    <naturesaura:infused_stairs>,
    <naturesaura:infused_slab>,
    <naturesaura:infused_brick>,
    <naturesaura:infused_brick_stairs>,
    <naturesaura:infused_brick_slab>,
    <naturesaura:infused_slab_double>,
    <naturesaura:infused_brick_slab_double>,
// Tools
    <naturesaura:infused_iron_pickaxe>,
    <naturesaura:infused_iron_axe>,
    <naturesaura:infused_iron_shovel>,
    <naturesaura:infused_iron_hoe>,
    <naturesaura:infused_iron_sword>,
    <naturesaura:infused_iron_helmet>,
    <naturesaura:infused_iron_chest>,
    <naturesaura:infused_iron_pants>,
    <naturesaura:infused_iron_shoes>,
#TODO
    <naturesaura:aura_detector>,
    <naturesaura:flower_generator>,
    <naturesaura:placer>,
    <naturesaura:farming_stencil>,
    <naturesaura:hopper_upgrade>,
    <naturesaura:grated_chute>,
    <naturesaura:eye>,
    <naturesaura:aura_cache>,
    <naturesaura:birth_spirit>,
    <naturesaura:pickup_stopper>
  ],
  stages.steel : [
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}),
    <naturesaura:spawn_lamp>,
    <naturesaura:dimension_rail_nether>,
    <naturesaura:dimension_rail_overworld>,
#TODO
    <naturesaura:offering_table>,
    <naturesaura:sky_ingot>,
    <naturesaura:token_fear>,
    <naturesaura:token_anger>,
    <naturesaura:token_sorrow>,
    <naturesaura:token_euphoria>,
    <naturesaura:token_terror>,
    <naturesaura:token_rage>,
    <naturesaura:token_grief>,
    <naturesaura:calling_spirit>,
    <naturesaura:furnace_heater>,
    <naturesaura:potion_generator>,
    <naturesaura:conversion_catalyst>,
    <naturesaura:crushing_catalyst>,
    <naturesaura:field_creator>,
    <naturesaura:oak_generator>,
    <naturesaura:animal_generator>,
    <naturesaura:animal_spawner>,
    <naturesaura:auto_crafter>,
    <naturesaura:rf_converter>,
    <naturesaura:time_changer>,
    <naturesaura:generator_limit_remover>,
    <naturesaura:powder_placer>,
    <naturesaura:projectile_generator>,
    <naturesaura:aura_trove>,
    <naturesaura:shockwave_creator>,
    <naturesaura:clock_hand>,
    <naturesaura:cave_finder>,
    <naturesaura:color_changer>,
    <naturesaura:effect_powder>.withTag({effect: "naturesaura:ore_spawn"}),
    <naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"}),
    <naturesaura:effect_powder>.withTag({effect: "naturesaura:animal"}),
    <naturesaura:effect_powder>.withTag({effect: "naturesaura:cache_recharge"})
  ],
  stages.stainless : [
    <naturesaura:end_flower>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"}),
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:other"}), #TODO in non-vanilla world
    <naturesaura:chunk_loader>,
    <naturesaura:dimension_rail_end>,
#TODO
    <naturesaura:eye_improved>,
    <naturesaura:spawn_lamp>,
    <naturesaura:ender_crate>,
    <naturesaura:ender_access>,
    <naturesaura:mover_cart>
  ],
  stages.disable : [
    <naturesaura:firework_generator>,
    <naturesaura:multiblock_maker>
  ]
};

var toHide as IItemStack[] = [
  <naturesaura:decayed_leaves>,
  <naturesaura:golden_leaves>
];

hideItems(toHide);

for stage, items in itemsStage {
	for item in items {
		addItemStage(stage, item);
    mods.recipestages.Recipes.setRecipeStage(stage, item);
  }
}
