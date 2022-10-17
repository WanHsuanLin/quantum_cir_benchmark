from qiskit.circuit.library import QFT
from qiskit.converters import circuit_to_dag, dag_to_circuit
from qiskit.transpiler.passes import Unroller


unroller = Unroller(basis=['u', 'cx'])
gen_cir = "qft"
qubit_size = [10, 12, 14, 16]

if gen_cir == "qft":
    for qubit_num in qubit_size:
        cir_name = 'qft_{}'.format(qubit_num)
        cir = QFT(num_qubits=qubit_num, approximation_degree=0, do_swaps=False, inverse=False, insert_barriers=False, name=cir_name)
        unrolled_circuit = dag_to_circuit(unroller.run(circuit_to_dag(cir)))
        unrolled_circuit.draw('mpl')
        qasm = unrolled_circuit.qasm()
        file_name = "qft/{}.qasm".format(cir_name)
        output_file = open(file_name, "w")
        output_file.write(qasm)
elif gen_cir == "hamiltonian":
    import supermarq as sm
    from supermarq.benchmarks.hamiltonian_simulation import HamiltonianSimulation
    for qubit_num in qubit_size:
        cir_name = 'hamiltonian_simulation_{}'.format(qubit_num)
        hs_cir = HamiltonianSimulation(qubit_num, 1, 1)
        cir = sm.converters.cirq_to_qiskit(hs_cir.circuit())
        unrolled_circuit = dag_to_circuit(unroller.run(circuit_to_dag(cir)))
        unrolled_circuit.draw('mpl')
        qasm = unrolled_circuit.qasm()
        file_name = "hamiltonian_simulation/{}.qasm".format(cir_name)
        output_file = open(file_name, "w")
        output_file.write(qasm)
    
    
