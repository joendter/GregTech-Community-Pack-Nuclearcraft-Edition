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
recipes.addShaped(names[i] + "CoolantHeater", a,
 [[null,material[i] ,null],
  [material[i],<nuclearcraft:salt_fission_heater>,material[i]],
  [null,material[i],null]]);

recipes.addShaped(names[i] +"CoolantHeaterPort", CoolantHeaterPort[i],
 [[null,material[i],null],
  [material[i],<nuclearcraft:fission_heater_port>,material[i]],
  [null,material[i],null]]);

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
