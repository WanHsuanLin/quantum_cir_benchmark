OPENQASM 2.0;
include "qelib1.inc";
qreg q[18];
zz q[6],q[12];
zz q[6],q[4];
zz q[6],q[3];
zz q[12],q[1];
zz q[12],q[11];
zz q[4],q[7];
zz q[4],q[1];
zz q[14],q[16];
zz q[14],q[2];
zz q[14],q[10];
zz q[16],q[9];
zz q[16],q[13];
zz q[0],q[5];
zz q[0],q[8];
zz q[0],q[17];
zz q[5],q[2];
zz q[5],q[11];
zz q[8],q[2];
zz q[8],q[17];
zz q[17],q[3];
zz q[10],q[15];
zz q[10],q[11];
zz q[15],q[1];
zz q[15],q[7];
zz q[7],q[13];
zz q[13],q[9];
zz q[3],q[9];