mods.immersiveengineering.Crusher.removeRecipe(<tfc:metal/dust/wrought_iron>);
mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/wrought_iron>, <minecraft:iron_ingot>, <ore:dustFlux>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust_oxide:1>, <tfc:ore/thorianite>, 2048, <nuclearcraft:dust_oxide>);
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust:7>, <tfc:ore/magnesite>, 2048);
mods.immersiveengineering.CokeOven.addRecipe( <immersiveengineering:material:6>, 500,<tfc:ore/bituminous_coal>, 2000);
mods.terrafirmacraft.Barrel.addRecipe("Hemp_Fibre", <tfc:crop/product/jute_fiber>, <liquid:creosote>*10, <immersiveengineering:material:4>, <liquid:creosote>*8, 4);
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

mods.immersivetech.Distiller.addRecipe(<liquid:fresh_water>*10,<liquid:salt_water>*30,<tfc:powder/salt>);
mods.immersivetech.Distiller.addRecipe(<liquid:water>*1000,<liquid:fresh_water>*1000,<tfc:powder/salt>);

//Liquid Catalyst
mods.immersiveengineering.ArcFurnace.addRecipe(<forge:bucketfilled>.withTag({FluidName: "liquidcatalyst", Amount: 1000}), <minecraft:bucket>,<immersiveengineering:material:7>, 2000, 2048, [<ore:dustObsidian>,<tfc:powder/salt>, <ore:dustGlowstone>,<ore:dustTin>]);

//Silicon
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:300>*2, <ore:dustQuartz>, <forge:bucketfilled>.withTag({FluidName: "carbon_dioxide", Amount: 1000}), 2000, 2048, [<minecraft:bucket>, <ore:dustCoal>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:300>*4, <ore:dustQuartz>, <forge:bucketfilled>.withTag({FluidName: "carbon_dioxide", Amount: 1000}), 2000, 2048, [<minecraft:bucket>, <ore:dustGraphite>]);
