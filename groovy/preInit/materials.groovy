import gregtech.api.unification.material.properties.PropertyKey
import gregtech.api.unification.material.Material
import gregtech.api.unification.material.properties.IngotProperty
import gregtech.api.unification.material.properties.FluidProperty
import gregtech.api.fluids.fluidType.FluidTypes
import gregtech.api.unification.material.event.MaterialEvent
import gregtech.api.unification.material.Material

import net.minecraft.util.ResourceLocation

import static gregtech.api.unification.material.info.MaterialFlags.*

event_manager.listen { MaterialEvent event ->
    new Material.Builder(32000, resource('gcp', 'fluix'))
            .gem()
            .color(0x674FAF).iconSet('CERTUS')
            .flags('generate_plate', 'disable_decomposition', 'no_smelting', 'crystallizable')
            .components(material('certus_quartz'), 1, material('nether_quartz'), 1, material('redstone'), 1)
            .build()

    material('certus_quartz').addFlags('generate_rod', 'generate_bolt_screw')
    material('nether_quartz').addFlags('generate_rod', 'generate_bolt_screw')
    material('iron').addFlags('generate_dense')
    material('brass').addFlags('generate_spring')

    new Material.Builder(32006, resource('gcp',"fluorite"))
        .fluid()
        .gem()
        .color(0x80A787)
        .ore(2, 1, true)
        .addOreByproducts(material('nether_quartz'), material('calcite'))
        .fluidTemp(1800)
        .iconSet("QUARTZ")
        .components(material("calcium"), 1, material("fluorine"), 2)
        .flags("decomposition_by_electrolyzing", "no_smelting", "crystallizable", "high_sifter_output")
        .build()

    new Material.Builder(32007, resource('gcp',"villiaumite"))
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

    new Material.Builder(32008, resource('gcp',"carobbiite"))
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

    new Material.Builder(32009, resource('gcp',"h_s_l_a_steel"))
        .ingot()
        .color(0x5d5f84)
        .components(material("iron"), 30, material("carbon"), 1, material("manganese"), 1)
        .blastTemp(1800)
        .build()

    // tough alloy
    new Material.Builder(32005, resource("gcp", "tough"))
        .ingot()
        .color(0x191323)
        .iconSet("METALLIC")
        .flags("disable_decomposition", "generate_plate", "generate_rod", "generate_frame")
        .components(material("stainless_steel"), 1, material("titanium"), 1)
        .blastTemp(1942)
        .build()

// // def LqN = new Material.Builder(32010, "liquid_nitrogen")
// //     .fluid()
// //     .fluidTemp(70)
// //     .color(0x00b0b1)
// //     .components(material("nitrogen"),1)
// //     .build()

String[] enrichments = [
    "slightly",
    "medium",
    "high"
]

for(int i = 0; i < enrichments.size(); i++){
    new Material.Builder(32010+i, resource('gcp',enrichments[i]+ "_enriched_uranium_hexafluoride"))
        .fluid(FluidTypes.GAS)
        .color(0x42D126 + 0x020901 * (i+1))
        .flags("disable_decomposition")
        .components(material("uranium"), 1, material("fluorine"), 6)
        .build()
        .setFormula("UF6", true);
}

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
