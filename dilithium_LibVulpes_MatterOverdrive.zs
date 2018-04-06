import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

#Add dilithium compatibility between LibVulpes and MatterOverdrive

<ore:crystalDilithium>.add(<matteroverdrive:dilithium_crystal>);
<ore:gemDilithium>.add(<libvulpes:productcrystal>);

//Crystal to Dust
mods.thermalexpansion.Pulverizer.addRecipe(<libvulpes:productdust>, <matteroverdrive:dilithium_crystal>, 800);
mods.actuallyadditions.Crusher.addRecipe(<libvulpes:productdust>, <matteroverdrive:dilithium_crystal>);
mods.mekanism.crusher.addRecipe(<libvulpes:productdust>, <matteroverdrive:dilithium_crystal>);
mods.immersiveengineering.Crusher.addRecipe(<libvulpes:productdust>, <matteroverdrive:dilithium_crystal>, 2000);

//ic2 no longer supported, has custom configs
//mods.ic2.Macerator.addRecipe(<libvulpes:productdust>, <ore:gemDilithium>);

//Dust to Crystal
mods.techreborn.implosionCompressor.addRecipe(<libvulpes:productcrystal>*3, <techreborn:dust:15>*12, <libvulpes:productdust>*4, <ic2:te:1>*16, 20, 32);
//mods.mekanism.enrichment.addRecipe(<ore:gemDilithium>, <libvulpes:productdust>);

//LibVulpes ore
//mods.techreborn.industrialGrinder.addRecipe(<ore:gemDilithium>, <ore:dustSmallDilithium>*6, , , <ore:oreDilithium>, , <liquid:water>*1000, 5, 512);


//TODO Replace tritanium ingot from ore gen, with an alloy to balance it out (or find a way to increase the ore rarity)