import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var itemsStage as IIngredient[][string] = {
  stages.dev : [
  ],
  stages.pyro : [
  ],
  stages.disable : [
    <nuclearcraft:ore>,
    <nuclearcraft:ore:1>,
    <nuclearcraft:ore:2>
  ]
};

for stage, items in itemsStage {
	for item in items {
		addItemStage(stage, item);
	}
}
