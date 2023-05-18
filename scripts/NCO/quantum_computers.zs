import crafttweaker.item.IItemStack;


var qc = [
<nuclearcraft:quantum_computer_controller>,
<nuclearcraft:quantum_computer_qubit>,
<nuclearcraft:quantum_computer_gate_single>,
<nuclearcraft:quantum_computer_gate_single:1>,
<nuclearcraft:quantum_computer_gate_single:2>,
<nuclearcraft:quantum_computer_gate_single:3>,
<nuclearcraft:quantum_computer_gate_single:4>,
<nuclearcraft:quantum_computer_gate_single:5>,
<nuclearcraft:quantum_computer_gate_single:6>,
<nuclearcraft:quantum_computer_gate_single:7>,
<nuclearcraft:quantum_computer_gate_single:8>,
<nuclearcraft:quantum_computer_gate_single:9>,
<nuclearcraft:quantum_computer_gate_single:10>,
<nuclearcraft:quantum_computer_gate_single:11>,
<nuclearcraft:quantum_computer_gate_control>,
<nuclearcraft:quantum_computer_gate_control:2>,
<nuclearcraft:quantum_computer_gate_control:3>,
<nuclearcraft:quantum_computer_gate_control:4>,
<nuclearcraft:quantum_computer_gate_control:5>,
<nuclearcraft:quantum_computer_gate_control:6>,
<nuclearcraft:quantum_computer_gate_control:7>,
<nuclearcraft:quantum_computer_gate_control:8>,
<nuclearcraft:quantum_computer_gate_control:9>,
<nuclearcraft:quantum_computer_gate_control:10>,
<nuclearcraft:quantum_computer_gate_control:11>,
<nuclearcraft:quantum_computer_gate_swap>,
<nuclearcraft:quantum_computer_gate_swap:1>,
<nuclearcraft:quantum_computer_connector>,
<nuclearcraft:quantum_computer_code_generator>,
<nuclearcraft:quantum_computer_code_generator:1>

] as IItemStack[];

mods.chisel.Carving.addGroup("nc-quantum-computer");

for i,item in qc{
	recipes.remove(item);
	mods.chisel.Carving.addVariation("nc-quantum-computer", item);
}

recipes.addShaped("nc-quantum-computer", <nuclearcraft:quantum_computer_controller>*16,
 [[<ore:plateBasic>, <ore:plateBasic>, <ore:plateBasic>],
  [<ore:plateBasic>, <metaitem:circuit.quantum_processor>, <ore:plateBasic>],
  [<ore:plateBasic>, <ore:plateBasic>, <ore:plateBasic>]]);