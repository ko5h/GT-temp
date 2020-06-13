import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

import mods.ItemStages.addItemStage;

var itemsStage as IIngredient[][string] = {
  stages.pyro : [

  ],
  stages.common : [

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
