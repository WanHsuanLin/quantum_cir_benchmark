from qiskit.circuit.library import QFT
from qiskit.converters import circuit_to_dag, dag_to_circuit
from qiskit.transpiler.passes import Unroller


unroller = Unroller(basis=['u', 'cx'])
gen_cir = "qaoa"
qubit_size = [26, 30, 36]

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
elif gen_cir == "qaoa":
    # qaoa = {16: [(4, 15), (4, 11), (4, 10), (15, 10), (15, 7), (0, 5), (0, 13), (0, 12), (5, 9), (5, 1), (2, 11), (2, 7), (2, 12), (11, 1), (1, 9), (9, 7), (10, 8), (13, 14), (13, 6), (14, 6), (14, 8), (6, 3), (3, 12), (3, 8)],
    #         20: [(3, 7), (3, 6), (3, 11), (7, 5), (7, 10), (12, 16), (12, 13), (12, 17), (16, 9), (16, 8), (13, 17), (13, 19), (5, 10), (5, 11), (10, 19), (9, 14), (9, 0), (14, 4), (14, 15), (8, 18), (8, 19), (18, 1), (18, 15), (1, 0), (1, 4), (2, 17), (2, 4), (2, 6), (6, 11), (15, 0)],
    #         24: [(6, 15), (6, 14), (6, 7), (15, 0), (15, 18), (21, 22), (21, 5), (21, 20), (22, 2), (22, 13), (3, 10), (3, 19), (3, 1), (10, 7), (10, 16), (19, 17), (19, 1), (9, 14), (9, 11), (9, 12), (14, 23), (8, 18), (8, 20), (8, 5), (18, 5), (11, 2), (11, 17), (2, 4), (1, 12), (17, 16), (12, 20), (13, 23), (13, 0), (23, 4), (7, 4), (0, 16)]}
    for qubit_num in qubit_size:
        import networkx as nx
        from math import pi
        from qiskit import QuantumCircuit
        trial = 0
        cir = QuantumCircuit(qubit_num)
        gate_list = list(nx.random_regular_graph(3, int(qubit_num), trial).edges)
        # gate_list = qaoa[qubit_num]
        for g in gate_list:
            if len(g) == 2:
                cir.rzz(pi/4, g[0], g[1])
        cir_name = 'qaoa_{}_{}'.format(qubit_num, trial)
        qasm = cir.qasm()
        file_name = "qaoa/{}.qasm".format(cir_name)
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
    
    
