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

for stage, categories in categoryStage {
	for category in categories {
		stageRecipeCategory(stage, category);
	}
}
