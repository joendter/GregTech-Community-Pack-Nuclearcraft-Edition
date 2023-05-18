import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
 import crafttweaker.item.IIngredient;

//yeet stuff
// removeAndHide
var removeItems= [
<nuclearcraft:ore>,
<nuclearcraft:ore:1>,
<nuclearcraft:ore:2>,
<nuclearcraft:ore:3>,
<nuclearcraft:ore:4>,
<nuclearcraft:ore:5>,
<nuclearcraft:ore:6>,
<nuclearcraft:ore:7>,
<nuclearcraft:lithium_ion_cell>,
<nuclearcraft:ingot_block:14>,
<nuclearcraft:ingot_block:15>,
<nuclearcraft:heat_exchanger_controller>,
<nuclearcraft:heat_exchanger_casing>,
<nuclearcraft:heat_exchanger_glass>,
<nuclearcraft:heat_exchanger_vent>,
<nuclearcraft:heat_exchanger_tube_copper>,
<nuclearcraft:heat_exchanger_tube_hard_carbon>,
<nuclearcraft:heat_exchanger_tube_thermoconducting>,
<nuclearcraft:condenser_controller>,
<nuclearcraft:condenser_tube_copper>,
<nuclearcraft:condenser_tube_hard_carbon>,
<nuclearcraft:condenser_tube_thermoconducting>


] as  IItemStack[];

for i,item in removeItems{
	mods.jei.JEI.removeAndHide(item);

}

<ore:oreCopper>.remove(<nuclearcraft:ore>);
<ore:oreTin>.remove(<nuclearcraft:ore:1>);
<ore:oreLead>.remove(<nuclearcraft:ore:2>);
<ore:oreThorium>.remove(<nuclearcraft:ore:3>);
<ore:oreUranium>.remove(<nuclearcraft:ore:4>);
<ore:oreBoron>.remove(<nuclearcraft:ore:5>);
<ore:oreMagnesium>.remove(<nuclearcraft:ore:7>);
<ore:oreLithium>.remove(<nuclearcraft:ore:6>);

//disable crafting items
var removeItems2= [
<nuclearcraft:ingot_block>
,<nuclearcraft:ingot_block:1>
,<nuclearcraft:ingot_block:7>
,<nuclearcraft:ingot_block:6>
,<nuclearcraft:ingot_block:5>
,<nuclearcraft:ingot_block:4>
,<nuclearcraft:ingot_block:3>
,<nuclearcraft:ingot_block:2>
,<nuclearcraft:ingot_block:11>
,<nuclearcraft:ingot_block:12>
,<nuclearcraft:ingot_block:13>
,<nuclearcraft:fertile_isotope>
,<nuclearcraft:ingot>
,<nuclearcraft:ingot:1>
,<nuclearcraft:ingot:2>
,<nuclearcraft:ingot:3>
,<nuclearcraft:ingot:5>
,<nuclearcraft:ingot:6>
,<nuclearcraft:ingot:7>
,<nuclearcraft:ingot:8>
,<nuclearcraft:ingot:9>
,<nuclearcraft:dust:3>
,<nuclearcraft:ingot:11>
,<nuclearcraft:ingot:12>
,<nuclearcraft:ingot:13>
,<nuclearcraft:dust>
,<nuclearcraft:dust:1>
,<nuclearcraft:dust:2>
,<nuclearcraft:dust:4>
,<nuclearcraft:dust:5>
,<nuclearcraft:dust:6>
,<nuclearcraft:dust:7>
,<nuclearcraft:dust:8>
,<nuclearcraft:dust:9>
,<nuclearcraft:dust:11>
,<nuclearcraft:dust:12>
,<nuclearcraft:dust:13>
,<nuclearcraft:gem:6>
,<nuclearcraft:gem_dust>
,<nuclearcraft:gem_dust:2>
,<nuclearcraft:gem_dust:2>
,<nuclearcraft:gem_dust:3>
,<nuclearcraft:gem_dust:6>
,<nuclearcraft:gem_dust:7>
,<nuclearcraft:gem_dust:10>
,<nuclearcraft:gem_dust:11>
,<nuclearcraft:alloy>
,<nuclearcraft:alloy:5>
,<nuclearcraft:compound:7>
,<nuclearcraft:compound:5>
,<nuclearcraft:fission_dust>
,<nuclearcraft:fission_dust:6>
,<nuclearcraft:ingot_block:9>
,<nuclearcraft:gem:1>
,<nuclearcraft:alloy:6>
,<nuclearcraft:alloy:1>
,<nuclearcraft:alloy:7>
,<nuclearcraft:alloy:8>
,<nuclearcraft:alloy:9>
,<nuclearcraft:dust:14>
,<nuclearcraft:dust:15>
,<nuclearcraft:alloy:15>
,<nuclearcraft:ingot:14>
,<nuclearcraft:ingot:15>
,<nuclearcraft:gem:5>
,<nuclearcraft:gem_dust:4>
,<nuclearcraft:alloy:2>
,<nuclearcraft:alloy:3>
,<nuclearcraft:compound:2>
,<nuclearcraft:compound:3>
,<nuclearcraft:compound:4>
,<nuclearcraft:alloy:4>
,<nuclearcraft:alloy:10>
,<nuclearcraft:alloy:11>
,<nuclearcraft:alloy:16>
,<nuclearcraft:compound>
,<nuclearcraft:compound:1>
,<nuclearcraft:compound:6>
,<nuclearcraft:compound:10>
,<nuclearcraft:compound:11>
,<nuclearcraft:part:1>
,<nuclearcraft:part:2>
,<nuclearcraft:part:3>
,<nuclearcraft:part:4>
,<nuclearcraft:part:5>
,<nuclearcraft:part:6>
,<nuclearcraft:part:7>
,<nuclearcraft:part:8>
,<nuclearcraft:part:9>
,<nuclearcraft:part:10>
,<nuclearcraft:part:15>
] as  IItemStack[];

var rmOredicts = [
<ore:blockCopper>
,<ore:blockTin>
,<ore:blockMagnesium>
,<ore:blockLithium>
,<ore:blockBoron>
,<ore:blockUranium>
,<ore:blockThorium>
,<ore:blockLead>
,<ore:blockManganese>
,<ore:blockAluminium>
,<ore:blockSilver>
,<ore:blockUranium238>
,<ore:ingotCopper>
,<ore:ingotTin>
,<ore:ingotLead>
,<ore:ingotThorium>
,<ore:ingotBoron>
,<ore:ingotLithium>
,<ore:ingotMagnesium>
,<ore:ingotGraphite>
,<ore:ingotBeryllium>
,<ore:dustThorium>
,<ore:ingotManganese>
,<ore:ingotAluminium>
,<ore:ingotSilver>
,<ore:dustCopper>
,<ore:dustTin>
,<ore:dustLead>
,<ore:dustUranium>
,<ore:dustBoron>
,<ore:dustLithium>
,<ore:dustMagnesium>
,<ore:dustGraphite>
,<ore:dustBeryllium>
,<ore:dustManganese>
,<ore:dustAluminium>
,<ore:dustSilver>
,<ore:itemSilicon>
,<ore:dustDiamond>
,<ore:dustNetherQuartz>
,<ore:dustQuartz>
,<ore:dustObsidian>
,<ore:dustSulfur>
,<ore:dustCoal>
,<ore:dustArsenic>
,<ore:dustEndstone>
,<ore:ingotBronze>
,<ore:ingotSteel>
,<ore:dustBorax>
,<ore:dustSodiumHydroxide>
,<ore:dustBismuth>
,<ore:dustMolybdenum>
,<ore:blockBeryllium>
,<ore:gemBoronNitride>
,<ore:ingotFerroboron>
,<ore:ingotTough>
,<ore:ingotShibuichi>
,<ore:ingotTinSilver>
,<ore:ingotLeadPlatinum>
,<ore:dustManganeseOxide>
,<ore:dustManganeseDioxide>
,<ore:ingotHSLASteel>
,<ore:ingotManganeseOxide>
,<ore:ingotManganeseDioxide>
,<ore:gemBoronArsenide>
,<ore:dustBoronNitride>
,<ore:ingotHardCarbon>
,<ore:ingotMagnesiumDiboride>
,<ore:dustEnergetic>
,<ore:dustSodiumFluoride>
,<ore:dustPotassiumFluoride>
,<ore:ingotLithiumManganeseDioxide>
,<ore:ingotExtreme>
,<ore:ingotThermoconducting>
,<ore:ingotZirconiumMolybdenum>
,<ore:dustCalciumSulfate>
,<ore:dustCrystalBinder>
,<ore:dustPotassiumHydroxide>
,<ore:dustCarbonManganese>
,<ore:dustAlugentum>
,<ore:plateAdvanced>
,<ore:plateDU>
,<ore:plateElite>
,<ore:solenoidCopper>
,<ore:solenoidMagnesiumDiboride>
,<ore:bioplastic>
,<ore:servo>
,<ore:motor>
,<ore:actuator>
,<ore:chassis>
,<ore:ingotPyrolyticCarbon>
] as IOreDictEntry[];

for i,item in removeItems2{
	furnace.remove(item);
	mods.jei.JEI.removeAndHide(item);
    rmOredicts[i].remove(item);
}

//yeet machines

var removeItems3= [

<nuclearcraft:solar_panel_basic>
,<nuclearcraft:solar_panel_advanced>
,<nuclearcraft:solar_panel_du>
,<nuclearcraft:solar_panel_elite>
,<nuclearcraft:decay_generator>
,<nuclearcraft:ingot:4>
,<nuclearcraft:upgrade:1>

] as IItemStack[];

for i,item in removeItems3{
	furnace.remove(item);
	mods.jei.JEI.removeAndHide(item);
}


mods.nuclearcraft.Separator.removeRecipeWithOutput( <nuclearcraft:uranium:10>*9, <nuclearcraft:uranium:5>);

