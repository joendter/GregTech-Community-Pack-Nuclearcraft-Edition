mods.gregtech.steam_turbine.recipeBuilder()
    .fluidInputs(fluid('high_pressure_steam'))
    .fluidOutputs(fluid('steam')*4)
    .duration(1)
    .EUt(32)
    .buildAndRegister()