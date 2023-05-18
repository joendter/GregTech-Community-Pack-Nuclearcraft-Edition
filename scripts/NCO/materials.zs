#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;

// tough alloy
MaterialBuilder(32005,"tough")
    .ingot()
    .color(0x191323)
    .iconSet("METALLIC")
    .flags(["disable_decomposition", "generate_plate", "generate_rod", "generate_frame"])
    .components([<material:stainless_steel> * 1, <material:titanium> * 1])
    .blastTemp(1942)
    .build();


// MaterialBuilder(32006,"zirconium")
//     .dust()
//     .color(0xf8f9f0)
//     .iconSet("METALLIC")
//     .element("Zirconium")
//     .build();

// <material:ilmenite>.addOreByproducts(<material:iron>, <material:rutile>, <material:zirconium>);
