println('Hello World!')

furnace.add(ore('dustZirconium'), item('nuclearcraft:ingot', 10))
mods.gregtech.centrifuge.removeByInput(320, [metaitem('dustUranium')], null)

/*
crafting.shapedBuilder()
    .matrix([
        [null, null, null],
        [null, null, null],
        [null, null, null]
    ])
    .output(null)
    .replace()
    .register()
*/

//sfr controller
crafting.shapedBuilder()
    .matrix([
        [ore('plateBasic'), ore('circuitEv'), ore('plateBasic')],
        [ore('circuitEv'), metaitem('hull.ev'), ore('circuitEv')],
        [ore('plateBasic'), ore('circuitEv'), ore('plateBasic')]
    ])
    .output(item('nuclearcraft:solid_fission_controller'))
    .replace()
    .register()

//fission cell
crafting.shapedBuilder()
    .matrix([
        [ore('plateBasic'), ore('ingotZircaloy'), ore('plateBasic')],
        [ore('plateTough'), ore('steelFrame'), ore('plateTough')],
        [ore('plateBasic'), ore('ingotZircaloy'), ore('plateBasic')]
    ])
    .output(item('nuclearcraft:solid_fission_cell')*4)
    .replace()
    .register()

//empty heat sink
crafting.shapedBuilder()
    .matrix([
        [ore('plateBasic'), ore('plateBasic'), ore('plateBasic')],
        [ore('plateBasic'), null, ore('plateBasic')],
        [ore('plateBasic'), ore('plateBasic'), ore('plateBasic')]
    ])
    .output(item('nuclearcraft:part', 14)*8)
    .replace()
    .register()

//water fission heat sink
mods.gregtech.canner.recipeBuilder()
    .inputs(item('nuclearcraft:part', 14))
    .fluidInputs(fluid('water')*1000)
    .outputs(item('nuclearcraft:solid_fission_sink'))
    .duration(20)
    .EUt(8)
    .buildAndRegister()

//Mg fission heat sink
crafting.shapedBuilder()
    .matrix([
        [null, ore('dustMagnesium'), null],
        [ore('dustMagnesium'), item('nuclearcraft:part', 14), ore('dustMagnesium')],
        [null, ore('dustMagnesium'), null]
    ])
    .output(item('nuclearcraft:solid_fission_sink2', 4))
    .replace()
    .register()

//Extreme Alloy Rotor
crafting.shapedBuilder()
    .matrix([
        [ore('ingotUltimet'), ore('ingotHSLASteel'), ore('ingotUltimet')],
        [ore('ingotUltimet'), ore('ingotHSLASteel'), ore('ingotUltimet')],
        [ore('ingotUltimet'), ore('ingotHSLASteel'), ore('ingotUltimet')]
    ])
    .output(item('nuclearcraft:turbine_rotor_blade_extreme')*4)
    .replace()
    .register()

//HSLA dust
mods.gregtech.mixer.recipeBuilder()
    .inputs(ore('dustIron')*30, ore('dustCarbon'), ore('dustManganese'))
    .outputs(metaitem('dustHSLASteel')*32)
    .duration(32*20)
    .EUt(8)
    .buildAndRegister()

//LqN
mods.gregtech.vacuum_freezer.recipeBuilder()
    .fluidInputs(fluid('nitrogen')*1000)
    .fluidOutputs(fluid('liquid_nitrogen')*1000)
    .duration(12*20)
    .EUt(1920)
    .buildAndRegister()

mods.gregtech.canner.recipeBuilder()
    .inputs(item('nuclearcraft:part', 14))
    .fluidInputs(fluid('liquid_nitrogen')*1000)
    .outputs(item('nuclearcraft:solid_fission_sink2',12))
    .duration(20)
    .EUt(8)
    .buildAndRegister()

//LqHe
mods.gregtech.canner.recipeBuilder()
    .inputs(item('nuclearcraft:part', 14))
    .fluidInputs(fluid('liquid_helium')*1000)
    .outputs(item('nuclearcraft:solid_fission_sink2',13))
    .duration(20)
    .EUt(8)
    .buildAndRegister()

//enderium Heatsink
mods.gregtech.canner.recipeBuilder()
    .inputs(item('nuclearcraft:part', 14))
    .fluidInputs(fluid('ender_pearl')*1000)
    .outputs(item('nuclearcraft:solid_fission_sink2', 14))
    .duration(20)
    .EUt(8)
    .buildAndRegister()

//cryotheum Heatsink
mods.gregtech.large_chemical_reactor.recipeBuilder()
    .fluidInputs(fluid('liquid_oxygen')*1000, fluid('liquid_helium')*1000, fluid('liquid_nitrogen')*1000, fluid('ice')*1000)
    .fluidOutputs(fluid('cryotheum')*4000)
    .duration(60)
    .EUt(500)
    .buildAndRegister()

mods.gregtech.canner.recipeBuilder()
    .inputs(item('nuclearcraft:part', 14))
    .fluidInputs(fluid('cryotheum')*1000)
    .outputs(item('nuclearcraft:solid_fission_sink2', 15))
    .duration(20)
    .EUt(8)
    .buildAndRegister()

//msfr controller
crafting.shapedBuilder()
    .matrix([
        [ore('pipeNonupleFluidTitanium'),ore('pipeNonupleFluidTitanium'),ore('pipeNonupleFluidTitanium')],
        [metaitem('fluid.regulator.ev'), item('nuclearcraft:solid_fission_controller'), metaitem('fluid.regulator.ev')],
        [ore('pipeNonupleFluidTitanium'),ore('pipeNonupleFluidTitanium'),ore('pipeNonupleFluidTitanium')]
    ])
    .output(item('nuclearcraft:salt_fission_controller'))
    .replace()
    .register()

//ms fission fuel vessel
crafting.shapedBuilder()
    .matrix([
        [ore('plateBasic'), ore('ingotZircaloy'), ore('plateBasic')],
        [ore('ingotZircaloy'), item('gregtech:boiler_casing', 2), ore('ingotZircaloy')],
        [ore('plateBasic'), ore('ingotZircaloy'), ore('plateBasic')]
    ])
    .output(item('nuclearcraft:salt_fission_vessel')*4)
    .replace()
    .register()

//SiC
mods.gregtech.alloy_smelter.recipeBuilder()
    .inputs(ore('ingotSilicon'), ore('dustCarbon'))
    .outputs(item('nuclearcraft:alloy', 13))
    .duration(160)
    .EUt(30)
    .buildAndRegister()

mods.gregtech.wiremill.recipeBuilder()
    .inputs(ore('ingotSiliconCarbide'))
    .outputs(item('nuclearcraft:part', 13)*2)
    .duration(160)
    .EUt(30)
    .buildAndRegister()

mods.gregtech.alloy_smelter.recipeBuilder()
    .inputs(ore('fiberSiliconCarbide'), ore('ingotClay'))
    .outputs(item('nuclearcraft:alloy', 14))
    .duration(160)
    .EUt(30)
    .buildAndRegister()

//radiation scrubber
crafting.shapedBuilder()
    .matrix([
        [ore('plateBasic'), ore('plateBasic'), ore('plateBasic')],
        [metaitem('gas_collector.hv'), ore('pipeQuadrupleFluidStainlessSteel'), metaitem('chemical_bath.hv')],
        [ore('plateBasic'), ore('plateBasic'), ore('plateBasic')]
    ])
    .output(item('nuclearcraft:radiation_scrubber'))
    .replace()
    .register()

//geiger counter
mods.gregtech.assembler.recipeBuilder()
    .inputs(metaitem('sensor.hv'), metaitem('large_fluid_cell.titanium'), ore('plateBasic')*2, ore('circuitEv'))
    .fluidInputs(fluid('helium')*50)
    .outputs(item('nuclearcraft:geiger_counter'))
    .duration(120)
    .EUt(1024)
    .buildAndRegister()

//Tritium Lamp
mods.gregtech.assembler.recipeBuilder()
    .inputs(ore('plateGlass')*6)
    .fluidInputs(fluid('tritium')*1000)
    .outputs(item('nuclearcraft:tritium_lamp'))
    .duration(120)
    .EUt(30)
    .buildAndRegister()

//speed upgrade
crafting.shapedBuilder()
    .matrix([
        [null, ore('plateBasic'), null],
        [ore('plateBasic'), ore('circuitHv'), ore('plateBasic')],
        [null, ore('plateBasic'), null]
    ])
    .output(item('nuclearcraft:upgrade'))
    .replace()
    .register()

//multitool
crafting.shapedBuilder()
    .matrix([
        [null, ore('stickTough'), ore('toolHeadWrenchStainlessSteel')],
        [null, ore('stickTough'), ore('stickTough')],
        [ore('stickTough'), null, null]
    ])
    .output(item('nuclearcraft:multitool'))
    .replace()
    .register()

//medium rad shielding
mods.gregtech.assembler.recipeBuilder()
    .inputs(item('nuclearcraft:rad_shielding')*5, ore('plateUranium238')*10)
    .fluidInputs(fluid('lead')*1440)
    .outputs(item('nuclearcraft:rad_shielding', 1))
    .duration(1000)
    .EUt(128)
    .buildAndRegister()

//heavy rad shielding
mods.gregtech.assembler.recipeBuilder()
    .inputs(item('nuclearcraft:rad_shielding',1)*5, ore('plateDoubleUranium238')*32)
    .fluidInputs(fluid('tungsten')*1440)
    .outputs(item('nuclearcraft:rad_shielding', 2))
    .duration(1000)
    .EUt(128)
    .buildAndRegister()

//separator
crafting.shapedBuilder()
    .matrix([
        [ore('plateBasic'), ore('circuitEv'), ore('plateBasic')],
        [ metaitem('electric.motor.ev'), metaitem('centrifuge.hv'), metaitem('electric.motor.ev')],
        [ore('plateBasic'), metaitem('electric.motor.ev'), ore('plateBasic')]
    ])
    .output(item('nuclearcraft:separator'))
    .replace()
    .register()

//remove radon uses
// Qubit CPU Wafer * 1
mods.gregtech.chemical_reactor.removeByInput(1920, [metaitem('wafer.nano_central_processing_unit'), metaitem('dustIndiumGalliumPhosphide')], [fluid('radon') * 50])
// Quantum Star * 1
mods.gregtech.chemical_bath.removeByInput(480, [item('minecraft:nether_star')], [fluid('radon') * 1250])
// Quantum Eye * 1
mods.gregtech.chemical_bath.removeByInput(480, [item('minecraft:ender_eye')], [fluid('radon') * 250])


//hazmat suit
crafting.shapedBuilder()
    .matrix([
        [item('nuclearcraft:rad_shielding', 2), ore('plateRubber'), item('nuclearcraft:rad_shielding', 2)],
        [ore('plateRubber'), null, ore('plateRubber')],
        [null, null, null]
    ])
    .output(item('nuclearcraft:helm_hazmat'))
    .replace()
    .register()

crafting.shapedBuilder()
    .matrix([
        [ore('plateRubber'), null, ore('plateRubber')],
        [item('nuclearcraft:rad_shielding', 2), ore('plateRubber'), item('nuclearcraft:rad_shielding', 2)],
        [ore('plateRubber'), item('nuclearcraft:rad_shielding', 2), ore('plateRubber')]
    ])
    .output(item('nuclearcraft:chest_hazmat'))
    .replace()
    .register()

crafting.shapedBuilder()
    .matrix([
        [item('nuclearcraft:rad_shielding', 2), ore('plateRubber'), item('nuclearcraft:rad_shielding', 2)],
        [ore('plateRubber'), null, ore('plateRubber')],
        [ore('plateRubber'), null, ore('plateRubber')]
    ])
    .output(item('nuclearcraft:legs_hazmat'))
    .replace()
    .register()

crafting.shapedBuilder()
    .matrix([
        [null, null, null],
        [item('nuclearcraft:rad_shielding', 2), null, item('nuclearcraft:rad_shielding', 2)],
        [ore('plateRubber'), null, ore('plateRubber')]
    ])
    .output(item('nuclearcraft:boots_hazmat'))
    .replace()
    .register()

//RTGs
crafting.shapedBuilder()
    .matrix([
        [ore('plateBasic'), ore('ingotTough'), ore('plateBasic')],
        [ore('ingotTough'), ore('blockUranium'), ore('ingotTough')],
        [ore('plateBasic'), metaitem('hull.ulv'), ore('plateBasic')]
    ])
    .output(item('nuclearcraft:rtg_uranium'))
    .replace()
    .register()

crafting.shapedBuilder()
    .matrix([
        [ore('plateBasic'), ore('ingotTough'), ore('plateBasic')],
        [ore('ingotTough'), ore('ingotPlutonium238'), ore('ingotTough')],
        [ore('plateBasic'), metaitem('hull.mv'), ore('plateBasic')]
    ])
    .output(item('nuclearcraft:rtg_plutonium'))
    .replace()
    .register()

crafting.shapedBuilder()
    .matrix([
        [ore('plateBasic'), ore('ingotTough'), ore('plateBasic')],
        [ore('ingotTough'), ore('ingotAmericium241'), ore('ingotTough')],
        [ore('plateBasic'), metaitem('hull.lv'), ore('plateBasic')]
    ])
    .output(item('nuclearcraft:rtg_americium'))
    .replace()
    .register()

crafting.shapedBuilder()
    .matrix([
        [ore('plateBasic'), ore('ingotTough'), ore('plateBasic')],
        [ore('ingotTough'), ore('ingotCalifornium250'), ore('ingotTough')],
        [ore('plateBasic'), metaitem('hull.hv'), ore('plateBasic')]
    ])
    .output(item('nuclearcraft:rtg_californium'))
    .replace()
    .register()

//wasteland portal
crafting.shapedBuilder()
    .matrix([
        [item('nuclearcraft:glowing_mushroom'), item('nuclearcraft:wasteland_earth'), item('nuclearcraft:glowing_mushroom')],
        [item('nuclearcraft:wasteland_earth'), metaitem('field.generator.hv'), item('nuclearcraft:wasteland_earth')],
        [item('nuclearcraft:glowing_mushroom'), item('nuclearcraft:wasteland_earth'), item('nuclearcraft:glowing_mushroom')]
    ])
    .output(item('nuclearcraft:wasteland_portal')*2)
    .replace()
    .register()

//wasteland air
mods.gregtech.gas_collector.recipeBuilder()
    .circuitMeta(11)
    //.notConsumable(ore("dirt"))
    .fluidOutputs(fluid('air')*10000)
    .EUt(16)
    .duration(200)
    .dimension(4598)
    .buildAndRegister()

//tuff aloy dust
mods.gregtech.mixer.recipeBuilder()
    .inputs(ore("dustStainlessSteel"), ore("dustTitanium"))
    .outputs(metaitem("dustTough")*2)
    .duration(200)
    .EUt(7)
    .buildAndRegister()