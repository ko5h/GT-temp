#priority 9000
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*
* item - the item you want to disable
*/
function disableItem(item as IItemStack){
  //any operation on a disabled item happends here
  item.addTooltip(format.darkRed("Disabled!"));
  mods.jei.JEI.removeAndHide(item);
}

/*
* items - the items you want to disable, they will be disabled one by one
* using the function scripts.functions.disableItem(item as IItemStack)
* if you want them to undergo additional operations, add them to that function
*/
function disableItems(items as IItemStack[]){
  for item in items {
    disableItem(item);
  }
}
/* import scripts.globalfunctions.disableCraftings; */
function disableCraftings(items as IItemStack[]){
  for item in items {
    recipes.remove(item);
  }
}


function hideItem(item as IItemStack){
  //any operation on a hide item happends here
  mods.jei.JEI.hide(item);
}

function hideItems(items as IItemStack[]){
  for item in items {
    hideItem(item);
  }
}
