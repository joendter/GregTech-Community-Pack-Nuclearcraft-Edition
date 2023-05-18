import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var CoolantHeater = [
<nuclearcraft:salt_fission_heater2:3>
,<nuclearcraft:salt_fission_heater2:2>
] as IItemStack[];

var CoolantHeaterPort = [
<nuclearcraft:fission_heater_port2:3>,
<nuclearcraft:fission_heater_port2:2>
] as IItemStack[];

var SolidFissionSink = [
<nuclearcraft:solid_fission_sink2:3>,<nuclearcraft:solid_fission_sink2:2>
] as IItemStack[];

var material = [
<ore:dustLithium>,
<ore:dustBoron>
] as IOreDictEntry[];


var names= [
"Li","B"
] as string[]; 

for i,a in CoolantHeater{
// recipes.addShaped(names[i] + "CoolantHeater", a,
//  [[null,material[i] ,null],
//   [material[i],<nuclearcraft:salt_fission_heater>,material[i]],
//   [null,material[i],null]]);

// recipes.addShaped(names[i] +"CoolantHeaterPort", CoolantHeaterPort[i],
//  [[null,material[i],null],
//   [material[i],<nuclearcraft:fission_heater_port>,material[i]],
//   [null,material[i],null]]);

recipes.addShaped(names[i] +"SolidFissionSink",SolidFissionSink[i],
 [[null,material[i],null],
  [material[i],<ore:emptyHeatSink>,material[i]],
  [null,material[i],null]]);

}


// // Molten Tough Alloy * 144
// <recipemap:mixer>.findRecipe(8, null, [<liquid:ferroboron> * 72, <liquid:lithium> * 72]).remove();
// // Molten Tough Alloy * 1296
// <recipemap:extractor>.findRecipe(32, [<metaitem:blockTough>], null).remove();
// // Molten Tough Alloy * 144
// <recipemap:extractor>.findRecipe(32, [<metaitem:ingotTough>], null).remove();
// // Molten Tough Alloy * 144
// <recipemap:extractor>.findRecipe(32, [<metaitem:dustTough>], null).remove();
// // Molten Tough Alloy * 16
// <recipemap:extractor>.findRecipe(32, [<metaitem:nuggetTough>], null).remove();

// Zirconium
// Ilmenite Dust * 1
// <recipemap:electromagnetic_separator>.findRecipe(24, [<metaitem:dustPureIlmenite>], null).remove();
// <recipemap:electromagnetic_separator>.recipeBuilder()
//     .inputs(<ore:dustPureIlmenite>)
//     .outputs(<metaitem:dustIlmenite>)
//     .duration(400)
//     .EUt(2)
//     .buildAndRegister();

/*
recipes.addShaped("", null,
 [[null, null, null],
  [null, null, null],
  [null, null, null]]);
*/



// Super Cold Ice
<recipemap:vacuum_freezer>.recipeBuilder()
    .inputs(<minecraft:packed_ice>)
    .outputs(<nuclearcraft:supercold_ice>)
    .duration(160)
    .EUt(1600)
    .buildAndRegister();

// Heavy Water Moderator
<recipemap:canner>.recipeBuilder()
    .inputs(<ore:emptyFrame>)
    .fluidInputs(<liquid:heavy_water>*1000)
    .outputs(<nuclearcraft:heavy_water_moderator>)
    .duration(160)
    .EUt(1600)
    .buildAndRegister();

<recipemap:chemical_reactor>.recipeBuilder()
    .fluidInputs(<liquid:deuterium>*2000)
    .fluidInputs(<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:heavy_water>*1000)
    .duration(60)
    .EUt(30)
    .buildAndRegister();


//decay hastener
recipes.remove(<nuclearcraft:decay_hastener>);
recipes.addShaped("decay hastener", <nuclearcraft:decay_hastener>,
 [[<ore:plateTitanium>,<ore:circuitEv>,<ore:plateTitanium>],
  [<ore:enderpearl>,<metaitem:hull.ev>,<ore:enderpearl>],
  [<ore:plateTitanium>,<metaitem:emitter.hv>,<ore:plateTitanium>]]);

//fuel reprocessor
recipes.addShaped("fuel reprocessor", <nuclearcraft:fuel_reprocessor>,
 [[<ore:plateTitanium>,<ore:circuitEv>,<ore:plateTitanium>],
  [<metaitem:electric.piston.ev>,<metaitem:hull.ev>,<metaitem:electric.piston.ev>],
  [<ore:plateTitanium>,<metaitem:electric.motor.ev>,<ore:plateTitanium>]]);

//machine interface
recipes.remove(<nuclearcraft:machine_interface>);
recipes.addShapeless("machine interface", <nuclearcraft:machine_interface>,[<ore:pipeHugeItemElectrum>, <metaitem:buffer.lv>]);

//universal bin
recipes.remove(<nuclearcraft:bin>);
recipes.addShaped("universal bin", <nuclearcraft:bin>,
 [[null, <metaitem:cover.item.voiding>, null],
  [null, <metaitem:buffer.lv>, null],
  [null, <metaitem:cover.fluid.voiding>, null]]);

//steel chassis
recipes.remove(<nuclearcraft:part:12>);
recipes.addShaped("steel chassis", <nuclearcraft:part:12>,
 [[null, <ore:plateTough>, null],
  [<ore:plateTough>, <metaitem:frameSteel>, <ore:plateTough>],
  [null, <ore:plateTough>, null]]);

//basic plating
recipes.remove(<nuclearcraft:part>);
<recipemap:chemical_bath>.recipeBuilder()
    .inputs(<ore:plateTough>)
    .fluidInputs(<liquid:dye_black>*12)
    .outputs(<nuclearcraft:part>)
    .duration(20)
    .EUt(8)
    .buildAndRegister();

//Be-C neutron reflector
recipes.addShaped("be c fission reflector", <nuclearcraft:fission_reflector>,
 [[<ore:dustGraphite>, <ore:ingotBeryllium>, <ore:dustGraphite>],
  [<ore:ingotBeryllium>, <ore:steelFrame>, <ore:ingotBeryllium>],
  [<ore:dustGraphite>, <ore:ingotBeryllium>, <ore:dustGraphite>]]);


//zircaloy
<recipemap:alloy_smelter>.recipeBuilder()
    .inputs(<ore:dustZirconium>*15)
    .inputs(<ore:dustTin>)
    .outputs(<nuclearcraft:alloy:12>*16)
    .duration(20)
    .EUt(8)
    .buildAndRegister();
  
//B-Ag fission neutron shield
recipes.addShaped("B-Ag fission neutron shield", <nuclearcraft:fission_shield>,
 [[<ore:ingotSilver>, <ore:dustBoron>, <ore:ingotSilver>],
  [<ore:dustBoron>, <ore:steelFrame>, <ore:dustBoron>],
  [<ore:ingotSilver>, <ore:dustBoron>, <ore:ingotSilver>]]);

