#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;

MaterialBuilder(32005,"tough")
    .ingot()
    .color(0x191323)
    .iconSet("METALLIC")
    .flags(["disable_decomposition", "generate_plate", "generate_rod", "generate_frame"])
    .components([<material:stainless_steel> * 1, <material:boron> * 1])
    .blastTemp(1700)
    .build();