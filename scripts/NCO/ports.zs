import crafttweaker.item.IItemStack;


var ports = [
<nuclearcraft:fission_vent>,
<nuclearcraft:fission_power_port>,
<nuclearcraft:fission_irradiator_port>,
<nuclearcraft:fission_cell_port>,
<nuclearcraft:fission_vessel_port>,
<nuclearcraft:turbine_inlet>,
<nuclearcraft:turbine_outlet>
] as IItemStack[];

mods.chisel.Carving.addGroup("nc-reactor-ports");

for i,item in ports{
	recipes.remove(item);
	mods.chisel.Carving.addVariation("nc-reactor-ports", item);
}

val def1 = <nuclearcraft:fission_heater_port>.definition;
val def2 = <nuclearcraft:fission_heater_port2>.definition;

for i in 0 .. 16{
    recipes.remove(def1.makeStack(i));
    recipes.remove(def2.makeStack(i));
    mods.chisel.Carving.addVariation("nc-reactor-ports", def1.makeStack(i));
    mods.chisel.Carving.addVariation("nc-reactor-ports", def2.makeStack(i));
}

//reactor vent
recipes.addShapeless("fission vent",<nuclearcraft:fission_vent>, [<metaitem:hull.ev>, <ore:plateBasic>]);
