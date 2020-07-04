import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var itemsStage as IIngredient[][string] = {
  stages.dev : [
  ],
  stages.pyro : [
  ],
  stages.disable : [
    <factorytech:ore>,
    <factorytech:ore:1>
  ]
};

for stage, items in itemsStage {
	for item in items {
		addItemStage(stage, item);
	}
}
