#loader gregtech
import mods.gregtech.material.MaterialRegistry;

var materialList = MaterialRegistry.getAllMaterials();

val conductiveIron = MaterialRegistry.createIngotMaterial(700, "conductive_iron", 0xf7b29b, "shiny", 2);
conductiveIron.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);

val manasteel = MaterialRegistry.createIngotMaterial(705, "manasteel", 0x6FAAF6, "shiny", 2);
manasteel.addFlags(["GENERATE_PLATE"]);

val terrasteel = MaterialRegistry.createIngotMaterial(706, "terrasteel", 0x3FD700, "shiny", 2);
terrasteel.addFlags(["GENERATE_PLATE"]);

val elementium = MaterialRegistry.createIngotMaterial(707, "elementium", 0xF05C9D, "shiny", 2);
elementium.addFlags(["GENERATE_PLATE"]);

val gaiaSpirit = MaterialRegistry.createIngotMaterial(708, "gaia_spirit", 0xEDB3B1, "shiny", 2);
gaiaSpirit.addFlags(["GENERATE_PLATE"]);

val infusedIron = MaterialRegistry.createIngotMaterial(709, "infused_iron", 0x2EA736, "shiny", 2);
infusedIron.addFlags(["GENERATE_PLATE"]);

val skyIngot = MaterialRegistry.createIngotMaterial(710, "sky_ingot", 0x7ED7FF, "shiny", 2);
skyIngot.addFlags(["GENERATE_PLATE"]);
