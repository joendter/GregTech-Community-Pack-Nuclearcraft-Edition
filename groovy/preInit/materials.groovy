import gregtech.api.unification.material.properties.PropertyKey
// import the material event
import gregtech.api.GregTechAPI.MaterialEvent
import gregtech.api.unification.material.Material
import gregtech.api.unification.material.properties.IngotProperty
import gregtech.api.unification.material.properties.FluidProperty

// register an event listener
event_manager.listen { MaterialEvent event ->
    // create materials here

//fluorite https://en.wikipedia.org/wiki/Fluorite
def fluorite = new Material.Builder(32006, "fluorite")
    .fluid()
    .gem()
    .color(0x80A787)
    .ore(2, 1, true)
    .addOreByproducts(material('nether_quartz'), material('calcite'))
    .fluidTemp(1800)
    .iconSet("QUARTZ")
    .components(material("calcium"),1,material("fluorine"),2)
    .flags("decomposition_by_electrolyzing", "no_smelting", "crystallizable", "high_sifter_output")
    .build()

def villiaumite = new Material.Builder(32007, "villiaumite")
    .fluid()
    .gem()
    .color(0x560201)
    .ore(2, 1, true)
    .addOreByproducts(material('sodalite'), material('zeolite'))
    .fluidTemp(1400)
    .iconSet("QUARTZ")
    .components(material("sodium"),1,material("fluorine"),1)
    .flags("decomposition_by_electrolyzing", "no_smelting", "crystallizable", "high_sifter_output")
    .build()

def carobbiite = new Material.Builder(32008, "carobbiite")
    .fluid()
    .gem()
    .color(0xE0F0D5)
    .ore(2, 1, true)
    .addOreByproducts(material('salt'), material('fluorite'))
    .fluidTemp(1300)
    .iconSet("QUARTZ")
    .components(material("potassium"),1,material("fluorine"),1)
    .flags("decomposition_by_electrolyzing", "no_smelting", "crystallizable", "high_sifter_output")
    .build()

def HSLA = new Material.Builder(32009, "h_s_l_a_steel")
    .ingot()
    .color(0x5d5f84)
    .components(material("iron"),30, material("carbon"),1, material("manganese"), 1)
    .blastTemp(1800)
    .build()

// def LqN = new Material.Builder(32010, "liquid_nitrogen")
//     .fluid()
//     .fluidTemp(70)
//     .color(0x00b0b1)
//     .components(material("nitrogen"),1)
//     .build()



material("zirconium").properties.ensureSet(PropertyKey.DUST)
material("zirconium").setMaterialRGB(16316912)

material("magnesium").setProperty(PropertyKey.INGOT, new IngotProperty())

material('ender_pearl').setProperty(PropertyKey.FLUID, new FluidProperty())
material("ender_pearl").properties.getProperty(PropertyKey.FLUID).setFluidTemperature(444);

def prop = material("ilmenite").getProperty(PropertyKey.ORE)
byproducts = prop.getOreByProducts()
byproducts.clear()
byproducts.add(material("zirconium"))
byproducts.add(material("rutile"))

}
