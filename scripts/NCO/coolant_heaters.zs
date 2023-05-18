import crafttweaker.item.IItemStack;

val def1 = <nuclearcraft:salt_fission_heater>.definition;
val def2 = <nuclearcraft:salt_fission_heater2>.definition;

mods.chisel.Carving.addGroup("nc-coolant-heaters");

for i in 0 .. 16{
    recipes.remove(def1.makeStack(i));
    recipes.remove(def2.makeStack(i));
    mods.chisel.Carving.addVariation("nc-coolant-heaters", def1.makeStack(i));
    mods.chisel.Carving.addVariation("nc-coolant-heaters", def2.makeStack(i));
}

recipes.addShapeless("coolant-heaters", <nuclearcraft:salt_fission_heater>, [<ore:emptyHeatSink>, <ore:pipeTinyFluidTitanium>]);