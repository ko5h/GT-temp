import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;

val solidifier as RecipeMap = RecipeMap.getByName("fluid_solidifier");

val liquidMap as IItemStack[][ILiquidStack] = {
#    <liquid:electrical_steel> : [<enderio:item_alloy_ingot:0>, <enderio:block_alloy:0>, <enderio:item_alloy_nugget:0>],
#    <liquid:energetic_alloy>  : [<enderio:item_alloy_ingot:1>, <enderio:block_alloy:1>, <enderio:item_alloy_nugget:1>],
#    <liquid:vibrant_alloy>    : [<enderio:item_alloy_ingot:2>, <enderio:block_alloy:2>, <enderio:item_alloy_nugget:2>],
    <liquid:conductive_iron>  : [<enderio:item_alloy_ingot:4>, <enderio:block_alloy:4>, <enderio:item_alloy_nugget:4>],
#    <liquid:pulsating_iron>   : [<enderio:item_alloy_ingot:5>, <enderio:block_alloy:5>, <enderio:item_alloy_nugget:5>],
#    <liquid:dark_steel>       : [<enderio:item_alloy_ingot:6>, <enderio:block_alloy:6>, <enderio:item_alloy_nugget:6>],
#    <liquid:end_steel>        : [<enderio:item_alloy_ingot:8>, <enderio:block_alloy:8>, <enderio:item_alloy_nugget:8>],
    <liquid:manasteel>        : [<botania:manaresource>, <botania:storage>, <botania:manaresource:17>],
    <liquid:elementium>       : [<botania:manaresource:7>, <botania:storage:2>, <botania:manaresource:19>],
    <liquid:terrasteel>       : [<botania:manaresource:4>, <botania:storage:1>, <botania:manaresource:18>],
    <liquid:gaia_spirit>      : [<botania:manaresource:14>, <avaritiatweaks:gaia_block>, <gregtech:meta_item_1:9708>],
    <liquid:infused_iron>     : [<naturesaura:infused_iron>, <naturesaura:infused_iron_block>, <gregtech:meta_item_1:9709>],
    <liquid:sky_ingot>        : [<naturesaura:sky_ingot>, <gregtech:compressed_17:5>, <gregtech:meta_item_1:9710>]
};

for liquid, items in liquidMap {

    //Ingots
    solidifier.findRecipe(8, [<gregtech:meta_item_1:32306>], [liquid * 144]).remove();
    solidifier.recipeBuilder()
        .fluidInputs(liquid * 144)
        .notConsumable(<gregtech:meta_item_1:32306>)
        .outputs(items[0])
        .duration(20).EUt(8).buildAndRegister();

    //Blocks
    solidifier.findRecipe(8, [<gregtech:meta_item_1:32308>], [liquid * 1296]).remove();
    solidifier.recipeBuilder()
        .fluidInputs(liquid * 1296)
        .notConsumable(<gregtech:meta_item_1:32308>)
        .outputs(items[1])
        .duration(98).EUt(8).buildAndRegister();

    //Nuggets
    solidifier.findRecipe(8, [<gregtech:meta_item_1:32309>], [liquid * 144]).remove();
    solidifier.recipeBuilder()
        .fluidInputs(liquid * 144)
        .notConsumable(<gregtech:meta_item_1:32309>)
        .outputs(items[2] * 9)
        .duration(98).EUt(8).buildAndRegister();
}
