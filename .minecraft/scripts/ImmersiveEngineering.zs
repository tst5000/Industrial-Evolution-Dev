import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;

mods.immersiveengineering.Crusher.removeRecipe(<tfc:metal/dust/wrought_iron>);
//Thorium
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust_oxide>, <tfc:ore/thorianite>, 2048, <nuclearcraft:dust_oxide:1>, 0.25);
//Magnesium
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust:7>, <tfc:ore/magnesite>, 2048);

mods.immersiveengineering.CokeOven.addRecipe( <immersiveengineering:material:6>, 500,<tfc:ore/bituminous_coal>, 2000);
#mods.terrafirmacraft.Barrel.addRecipe("Hemp_Fibre", <tfc:crop/product/jute_fiber>, <liquid:creosote>*10, <immersiveengineering:material:4>, <liquid:creosote>*8, 4);
mods.terrafirmacraft.Barrel.addRecipe("Treated_Lumber", <ore:lumber>, <liquid:creosote>*250, <contenttweaker:treatedlumber>, <liquid:creosote>*150, 4);
mods.terrafirmacraft.Barrel.addRecipe("Treated_Stick", <ore:stickWood>, <liquid:creosote>*50, <immersiveengineering:material>, <liquid:creosote>*25, 4);

//Wires
val wires = <immersiveengineering:material>.definition;
for i in 20 to 24{
	recipes.remove(wires.makeStack(i));
}
recipes.remove(<alternatingflux:material>);

val plates = <immersiveengineering:metal:30>.definition;
for i in 30 to 41{
	recipes.remove(plates.makeStack(i));
}
mods.immersiveengineering.MetalPress.addRecipe(<projectred-transmission:wire>*4, <projectred-core:resource_item:103>, <immersiveengineering:mold:4>, 2000, 1); #Place Holder Mold



mods.immersivetechnology.Distiller.addRecipe(<liquid:fresh_water>*10,<liquid:salt_water>*30,<tfc:powder/salt>);
mods.immersivetechnology.Distiller.addRecipe(<liquid:water>*1000,<liquid:fresh_water>*1000,<tfc:powder/salt>);
mods.immersivetechnology.SolarTower.addRecipe(<liquid:fresh_water>*2000, <liquid:steam>*500, 1);
//Glove
recipes.remove(<immersiveengineering:toolupgrade:12>);
recipes.addShaped(<immersiveengineering:toolupgrade:12>,[
	[null,null,<contenttweaker:leatherglove>],
	[null,<railcraft:charge>,null],
	[<ore:itemBattery>,null,null]]);
//Scaffold
recipes.remove(<immersiveengineering:wooden_decoration:1>);
recipes.addShaped(<immersiveengineering:wooden_decoration:1>,[
	[<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>],
	[null,<immersiveengineering:material>,null],
	[<immersiveengineering:material>,null,<immersiveengineering:material>]]);
//Belts
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}));
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})*16,[
	[<tfctech:wiredraw/leather_belt>,<tfctech:wiredraw/leather_belt>,<tfctech:wiredraw/leather_belt>],
	[<ore:sheetWroughtIron>,<ore:sheetWroughtIron>,<ore:sheetWroughtIron>]]);
//Kiln Brick
val n = <minecraft:netherbrick>;
val f = <tfc:ceramics/fired/fire_brick>;
recipes.remove(<immersiveengineering:stone_decoration:10>);
recipes.addShaped(<immersiveengineering:stone_decoration:10>,[
	[n,f,n],
	[f,n,f],
	[n,f,n]]);
//Leather
mods.immersiveengineering.Squeezer.removeItemRecipe(<minecraft:leather>);
mods.immersiveengineering.Squeezer.addRecipe(<contenttweaker:squeezed_flesh>, <liquid:blood>*50, <minecraft:rotten_flesh>*5, 2048);
//Liquid Catalyst
mods.immersiveengineering.ArcFurnace.addRecipe(<forge:bucketfilled>.withTag({FluidName: "liquidcatalyst", Amount: 1000}), <minecraft:bucket>,<immersiveengineering:material:7>, 2000, 2048, [<ore:dustObsidian>,<tfc:powder/salt>, <ore:dustGlowstone>,<ore:dustTin>]);
//Graphite
mods.immersiveengineering.CokeOven.addRecipe(<tfc:ore/graphite>, 0, <ore:fuelCoke>, 2400);
//Potassium Carbonate
mods.immersiveengineering.CokeOven.addRecipe(<contenttweaker:potassiumcarbonate>, 0, <ore:dustPotash>, 2400);
//Powered Lantern
recipes.remove(<immersiveengineering:metal_device1:4>);
recipes.addShaped("Tungsten_Lantern",<immersiveengineering:metal_device1:4>,[
	[null,<ore:plateLead>,null],
	[<ore:paneGlass>,<tfctech:metal/tungsten_wire>,<ore:paneGlass>],
	[<ore:plateCopper>,<ore:plateLead>,<ore:plateCopper>]]);
recipes.addShaped("Magic_Lantern",<immersiveengineering:metal_device1:4>,[
	[null,<ore:plateLead>,null],
	[<ore:paneGlass>,<astralsorcery:itemrockcrystalsimple>,<ore:paneGlass>],
	[<ore:plateCopper>,<ore:plateLead>,<ore:plateCopper>]]);
//Iron Rod
recipes.remove(<immersiveengineering:material:1>);
//Silicon
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:300>*2, <ore:dustQuartz>, <forge:bucketfilled>.withTag({FluidName: "carbon_dioxide", Amount: 1000}), 2000, 2048, [<minecraft:bucket>, <ore:dustCoal>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:300>*4, <ore:dustQuartz>, <forge:bucketfilled>.withTag({FluidName: "carbon_dioxide", Amount: 1000}), 2000, 2048, [<minecraft:bucket>, <ore:dustGraphite>]);
//Slag Recyling

mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:material:7>);
mods.immersiveengineering.Crusher.addRecipe(<railcraft:dust:4>, <immersiveengineering:material:7>, 2048);
mods.terrafirmacraft.Barrel.addRecipe("slag_to_flux", <railcraft:dust:4>*4, <liquid:bleach>*1000, <tfc:powder/flux>, <liquid:waste>*1000,16);
#=============================================================================================================================================		

//Pressed Sheets

mods.immersiveengineering.MetalPress.removeRecipeByMold(<immersiveengineering:mold>);

val sheets =[<tfc:metal/sheet/bismuth>,<tfc:metal/sheet/bismuth_bronze>,<tfc:metal/sheet/black_bronze>,<tfc:metal/sheet/brass>,
<tfc:metal/sheet/bronze>,<tfc:metal/sheet/copper>,<tfc:metal/sheet/gold>,<tfc:metal/sheet/lead>,<tfc:metal/sheet/nickel>,
<tfc:metal/sheet/rose_gold>,<tfc:metal/sheet/silver>,<tfc:metal/sheet/tin>,<tfc:metal/sheet/zinc>,<tfc:metal/sheet/sterling_silver>,
<tfc:metal/sheet/wrought_iron>,<tfc:metal/sheet/pig_iron>,<tfc:metal/sheet/steel>,<tfc:metal/sheet/platinum>,<tfc:metal/sheet/black_steel>,
<tfc:metal/sheet/blue_steel>,<tfc:metal/sheet/red_steel>,<tfc:metal/sheet/antimony>,<tfc:metal/sheet/constantan>,
<tfc:metal/sheet/electrum>,<tfc:metal/sheet/mithril>,<tfc:metal/sheet/invar>,<tfc:metal/sheet/aluminium>,<tfc:metal/sheet/aluminium_brass>,
<tfc:metal/sheet/ardite>,<tfc:metal/sheet/cobalt>,<tfc:metal/sheet/manyullyn>,<tfc:metal/sheet/osmium>,<tfc:metal/sheet/titanium>,
<tfc:metal/sheet/tungsten>,<tfc:metal/sheet/tungsten_steel>] as IItemStack[];

val ingots =[<tfc:metal/ingot/bismuth>,<tfc:metal/ingot/bismuth_bronze>,<tfc:metal/ingot/black_bronze>,<tfc:metal/ingot/brass>,
<tfc:metal/ingot/bronze>,<tfc:metal/ingot/copper>,<tfc:metal/ingot/gold>,<tfc:metal/ingot/lead>,<tfc:metal/ingot/nickel>,
<tfc:metal/ingot/rose_gold>,<tfc:metal/ingot/silver>,<tfc:metal/ingot/tin>,<tfc:metal/ingot/zinc>,<tfc:metal/ingot/sterling_silver>,
<tfc:metal/ingot/wrought_iron>,<tfc:metal/ingot/pig_iron>,<tfc:metal/ingot/steel>,<tfc:metal/ingot/platinum>,<tfc:metal/ingot/black_steel>,
<tfc:metal/ingot/blue_steel>,<tfc:metal/ingot/red_steel>,<tfc:metal/ingot/antimony>,<tfc:metal/ingot/constantan>,
<tfc:metal/ingot/electrum>,<tfc:metal/ingot/mithril>,<tfc:metal/ingot/invar>,<tfc:metal/ingot/aluminium>,<tfc:metal/ingot/aluminium_brass>,
<tfc:metal/ingot/ardite>,<tfc:metal/ingot/cobalt>,<tfc:metal/ingot/manyullyn>,<tfc:metal/ingot/osmium>,<tfc:metal/ingot/titanium>,
<tfc:metal/ingot/tungsten>,<tfc:metal/ingot/tungsten_steel>] as IItemStack[];

val double_sheets =[<tfc:metal/double_sheet/bismuth>,<tfc:metal/double_sheet/bismuth_bronze>,<tfc:metal/double_sheet/black_bronze>,<tfc:metal/double_sheet/brass>,
<tfc:metal/double_sheet/bronze>,<tfc:metal/double_sheet/copper>,<tfc:metal/double_sheet/gold>,<tfc:metal/double_sheet/lead>,<tfc:metal/double_sheet/nickel>,
<tfc:metal/double_sheet/rose_gold>,<tfc:metal/double_sheet/silver>,<tfc:metal/double_sheet/tin>,<tfc:metal/double_sheet/zinc>,<tfc:metal/double_sheet/sterling_silver>,
<tfc:metal/double_sheet/wrought_iron>,<tfc:metal/double_sheet/pig_iron>,<tfc:metal/double_sheet/steel>,<tfc:metal/double_sheet/platinum>,<tfc:metal/double_sheet/black_steel>,
<tfc:metal/double_sheet/blue_steel>,<tfc:metal/double_sheet/red_steel>,<tfc:metal/double_sheet/antimony>,<tfc:metal/double_sheet/constantan>,
<tfc:metal/double_sheet/electrum>,<tfc:metal/double_sheet/mithril>,<tfc:metal/double_sheet/invar>,<tfc:metal/double_sheet/aluminium>,<tfc:metal/double_sheet/aluminium_brass>,
<tfc:metal/double_sheet/ardite>,<tfc:metal/double_sheet/cobalt>,<tfc:metal/double_sheet/manyullyn>,<tfc:metal/double_sheet/osmium>,<tfc:metal/double_sheet/titanium>,
<tfc:metal/double_sheet/tungsten>,<tfc:metal/double_sheet/tungsten_steel>] as IItemStack[];

val double_ingots =[<tfc:metal/double_ingot/bismuth>,<tfc:metal/double_ingot/bismuth_bronze>,<tfc:metal/double_ingot/black_bronze>,<tfc:metal/double_ingot/brass>,
<tfc:metal/double_ingot/bronze>,<tfc:metal/double_ingot/copper>,<tfc:metal/double_ingot/gold>,<tfc:metal/double_ingot/lead>,<tfc:metal/double_ingot/nickel>,
<tfc:metal/double_ingot/rose_gold>,<tfc:metal/double_ingot/silver>,<tfc:metal/double_ingot/tin>,<tfc:metal/double_ingot/zinc>,<tfc:metal/double_ingot/sterling_silver>,
<tfc:metal/double_ingot/wrought_iron>,<tfc:metal/double_ingot/pig_iron>,<tfc:metal/double_ingot/steel>,<tfc:metal/double_ingot/platinum>,<tfc:metal/double_ingot/black_steel>,
<tfc:metal/double_ingot/blue_steel>,<tfc:metal/double_ingot/red_steel>,<tfc:metal/double_ingot/antimony>,<tfc:metal/double_ingot/constantan>,
<tfc:metal/double_ingot/electrum>,<tfc:metal/double_ingot/mithril>,<tfc:metal/double_ingot/invar>,<tfc:metal/double_ingot/aluminium>,<tfc:metal/double_ingot/aluminium_brass>,
<tfc:metal/double_ingot/ardite>,<tfc:metal/double_ingot/cobalt>,<tfc:metal/double_ingot/manyullyn>,<tfc:metal/double_ingot/osmium>,<tfc:metal/double_ingot/titanium>,
<tfc:metal/double_ingot/tungsten>,<tfc:metal/double_ingot/tungsten_steel>] as IItemStack[];

for i, iIngot in ingots{
mods.immersiveengineering.MetalPress.addRecipe(sheets[i], iIngot, <immersiveengineering:mold>, 2000, 2);
mods.immersiveengineering.MetalPress.addRecipe(double_sheets[i], sheets[i], <immersiveengineering:mold>, 2000, 2);
mods.immersiveengineering.MetalPress.addRecipe(double_ingots[i], iIngot, <immersiveengineering:mold:5>, 2000, 2); #Place Holder Mold
}

