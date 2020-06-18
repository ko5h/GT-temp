import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

import mods.ItemStages.addItemStage;
import mods.ItemStages.stageRecipeCategory;

var categoryStage as string[][string] = {
  stages.pyro_stone : [
    "pyrotech.soaking.pot",
    "pyrotech.stone.kiln",
    "pyrotech.stone.mill",
    "pyrotech.stone.oven",
    "pyrotech.stone.crucible"
  ],
  stages.pyro_refactory : [
    "pyrotech.bloomery",
    "pyrotech.wither.forge",
    "pyrotech.brick.kiln",
    "pyrotech.brick.mill",
    "pyrotech.brick.oven",
    "pyrotech.brick.crucible",
    "pyrotech.mechanical.compacting.bin",
    "pyrotech.refractory.burn"

  ],
  stages.disable : [
    "pyrotech.anvil.ironclad",
    "pyrotech.worktable"
  ]
/* Its base category
    "pyrotech.pit.kiln",
    "pyrotech.crude.drying",
    "pyrotech.drying",
    "pyrotech.chopping",
    "pyrotech.anvil.granite",
    "pyrotech.compacting.bin",
    "pyrotech.campfire",
    "pyrotech.pit.burn"
*/
};

var itemsStage as IIngredient[][string] = {
  stages.pyro_stone : [
    <pyrotech:stone_door>,
    <pyrotech:planks_tarred>,
    <pyrotech:material:3>,
    <pyrotech:material:4>,
    <pyrotech:material:5>,
    <pyrotech:material:9>,
    <pyrotech:material:16>,
    <pyrotech:material:20>,
    <pyrotech:material:22>,
    <pyrotech:material:23>,
    <pyrotech:material:25>,
    <pyrotech:material:27>,
    <pyrotech:material:30>,
    <pyrotech:stone_bricks>,
    <pyrotech:stone_kiln>,
    <pyrotech:stone_oven>,
    <pyrotech:stone_sawmill>,
    <pyrotech:stone_crucible>,
    <pyrotech:tar_drain>,
    <pyrotech:tar_collector>,
    <pyrotech:stash_stone>,
    <pyrotech:shelf_stone>,
    <pyrotech:crate_stone>,
    <pyrotech:tank>,
    <pyrotech:faucet_stone>,
    <pyrotech:igniter>,
    <pyrotech:mechanical_hopper>,
    <pyrotech:bellows>,
    <pyrotech:mechanical_bellows>,
    <pyrotech:mechanical_compacting_bin>,
    <pyrotech:mechanical_mulch_spreader>,
    <pyrotech:soaking_pot>,
    <pyrotech:worktable_stone>,
    <pyrotech:tongs_stone>,
    <pyrotech:stone_hammer>,
    <pyrotech:bone_hammer>,
    <pyrotech:flint_hammer>,
    <pyrotech:wool_tarred>,
    <pyrotech:wood_tar_block>,
    <pyrotech:cog_wood>,
    <pyrotech:cog_stone>,
    <pyrotech:cog_flint>,
    <pyrotech:cog_bone>,
    <pyrotech:sawmill_blade_stone>,
    <pyrotech:sawmill_blade_flint>,
    <pyrotech:sawmill_blade_bone>,

    <pyrotech:fluid.liquid_clay>

  ],
  stages.pyro_refactory : [
    <pyrotech:material:1>,
    <pyrotech:slag_glass>,
    <pyrotech:tar_drain:1>,
    <pyrotech:tar_collector:1>,
    <pyrotech:igniter:1>,
    <pyrotech:tank:1>,
    <pyrotech:faucet_brick>,
    <pyrotech:living_tar>,
    <pyrotech:refractory_glass>,
    <pyrotech:refractory_brick_block>,
    <pyrotech:refractory_door>,
    <pyrotech:brick_kiln>,
    <pyrotech:slag>,
    <pyrotech:generated_slag_gold>,
    <pyrotech:generated_slag_copper>,
    <pyrotech:generated_slag_tin>,
    <pyrotech:generated_slag_iron>,
    <pyrotech:pile_slag>,
    <pyrotech:generated_pile_slag_copper>,
    <pyrotech:generated_pile_slag_tin>,
    <pyrotech:generated_pile_slag_iron>,
    <pyrotech:generated_pile_slag_gold>,
    <pyrotech:brick_crucible>,
    <pyrotech:brick_sawmill>,
    <pyrotech:brick_oven>,
    <pyrotech:bloomery>,
    <pyrotech:wither_forge>,
    <pyrotech:sawmill_blade_iron>
  ],
  stages.disable : [
    <pyrotech:iron_hammer>,
    <pyrotech:gold_hammer>,
    <pyrotech:diamond_hammer>,
    <pyrotech:obsidian_hammer>,

    <pyrotech:tongs_flint>,
    <pyrotech:tongs_bone>,
    <pyrotech:tongs_iron>,
    <pyrotech:tongs_gold>,
    <pyrotech:tongs_diamond>,
    <pyrotech:tongs_obsidian>,

    <pyrotech:obsidian_axe>,
    <pyrotech:obsidian_hoe>,
    <pyrotech:obsidian_pickaxe>,
    <pyrotech:obsidian_shovel>,
    <pyrotech:obsidian_sword>,

    <pyrotech:bone_shears>,
    <pyrotech:flint_shears>,
    <pyrotech:gold_shears>,
    <pyrotech:diamond_shears>,
    <pyrotech:obsidian_shears>,

    <pyrotech:sawmill_blade_gold>,
    <pyrotech:sawmill_blade_diamond>,
    <pyrotech:sawmill_blade_obsidian>,

    <pyrotech:cog_iron>,
    <pyrotech:cog_gold>,
    <pyrotech:cog_diamond>,
    <pyrotech:cog_obsidian>,

    <pyrotech:bone_axe>,
    <pyrotech:bone_hoe>,
    <pyrotech:bone_pickaxe>,
    <pyrotech:bone_shovel>,
    <pyrotech:bone_sword>,
    <pyrotech:flint_axe>,
    <pyrotech:flint_hoe>,
    <pyrotech:flint_pickaxe>,
    <pyrotech:flint_shovel>,
    <pyrotech:flint_sword>,

    <pyrotech:fossil_ore>,
    <pyrotech:dense_coal_ore>,
    <pyrotech:dense_nether_coal_ore>
  ],
  stages.common : [
    <forge:bucketfilled>.withTag({FluidName: "liquid_clay", Amount: 1000})
  ]
};
/*
var itemsHide
<pyrotech:fluid.liquid_clay>,
<forge:bucketfilled>.withTag({FluidName: "liquid_clay", Amount: 1000})
*/

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
