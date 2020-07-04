import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var itemsStage as IIngredient[][string] = {
  stages.dev : [
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_rose_thorns", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_life_drain", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_wild_fire", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_magnetism", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_shatter", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_rampant_growth", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_sanctuary", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_second_wind", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_sky_soarer", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_sense_animals", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_dandelion_winds", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_growth_infusion", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_harvest", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_petal_shell", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_radiance", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_time_stop", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_sense_danger", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_geas", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_iced_touch", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_rose_thorns", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_acid_cloud", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_light_drifter", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_supplication", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),
    <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_fey_light", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}),

    <roots:runic_shears>,
    <roots:iron_knife>,
    <roots:gold_knife>,
    <roots:diamond_knife>,

    <roots:living_pickaxe>,
    <roots:living_axe>,
    <roots:living_shovel>,
    <roots:living_hoe>,
    <roots:living_sword>,
    <roots:living_arrow>,
    <roots:wildwood_quiver>,
    <roots:wildwood_bow>
  ],
  stages.steel : [
    <roots:wildwood_helmet>,
    <roots:wildwood_chestplate>,
    <roots:wildwood_leggings>,
    <roots:wildwood_boots>,
    <roots:sylvan_helmet>,
    <roots:sylvan_chestplate>,
    <roots:sylvan_leggings>,
    <roots:sylvan_boots>,
  ],
  stages.disable : [
    <roots:unending_bowl>,
    <roots:structure_marker>
  ]
};

for stage, items in itemsStage {
	for item in items {
		addItemStage(stage, item);
    mods.recipestages.Recipes.setRecipeStage(stage, item);
  }
}
