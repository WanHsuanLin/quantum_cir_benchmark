OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
creg c[32];
h q[26];
h q[24];
h q[22];
h q[17];
h q[7];
h q[10];
h q[2];
cx q[25],q[9];
cx q[1],q[8];
cx q[5],q[13];
cx q[23],q[18];
cx q[6],q[12];
cx q[16],q[4];
cx q[0],q[14];
h q[1];
h q[11];
h q[10];
h q[13];
h q[21];
h q[15];
h q[5];
h q[7];
h q[4];
h q[17];
cx q[26],q[2];
cx q[3],q[6];
cx q[25],q[9];
cx q[12],q[23];
cx q[16],q[20];
h q[20];
h q[8];
h q[15];
h q[19];
h q[6];
h q[23];
cx q[26],q[2];
cx q[17],q[21];
cx q[9],q[5];
h q[4];
h q[15];
h q[8];
h q[23];
h q[21];
h q[17];
h q[20];
cx q[26],q[2];
cx q[24],q[16];
cx q[22],q[19];
cx q[5],q[13];
cx q[25],q[9];
h q[2];
h q[24];
h q[3];
h q[10];
h q[17];
h q[22];
h q[14];
cx q[16],q[20];
cx q[5],q[13];
cx q[12],q[23];
cx q[0],q[8];
cx q[11],q[1];
