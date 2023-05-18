String[] baseIsotopes = [
"Uranium233",
"Uranium235",
"Uranium238",
"Neptunium236",
"Neptunium237",
"Plutonium238",
"Plutonium239",
"Plutonium241",
"Plutonium242",
"Americium241",
"Americium242",
"Americium243",
"Curium243",
"Curium245",
"Curium246",
"Curium247",
"Berkelium247",
"Berkelium248",
"Californium249",
"Californium250",
"Californium251",
"Californium252"
] //ore("ingot...")


for(int i = 0; i < baseIsotopes.size(); i++){
    def ingotOreDict = "ingot" + baseIsotopes[i]
    mods.gregtech.chemical_reactor.recipeBuilder()
        .inputs(ore(ingotOreDict))
        .fluidInputs(fluid('oxygen')*1000)
        .outputs(ore(ingotOreDict + "Oxide").first)
        .duration(20)
        .EUt(30)
        .buildAndRegister()
    
    mods.gregtech.chemical_reactor.recipeBuilder()
        .inputs(ore(ingotOreDict))
        .fluidInputs(fluid('nitrogen')*1000)
        .outputs(ore(ingotOreDict + "Nitride").first)
        .duration(20)
        .EUt(30)
        .buildAndRegister()
    
    mods.gregtech.alloy_smelter.recipeBuilder()
        .inputs(ore(ingotOreDict), ore("dustCarbon"))
        .outputs(ore(ingotOreDict + "Carbide").first)
        .duration(20)
        .EUt(30)
        .buildAndRegister()
    
    mods.gregtech.alloy_smelter.recipeBuilder()
        .inputs(ore(ingotOreDict), ore("dustZirconium"))
        .outputs(ore(ingotOreDict + "ZA").first)
        .duration(20)
        .EUt(30)
        .buildAndRegister()
}

