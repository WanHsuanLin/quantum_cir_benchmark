OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
zz q[0],q[1];
zz q[0],q[5];
zz q[0],q[4];
zz q[1],q[2];
zz q[1],q[4];
zz q[2],q[3];
zz q[2],q[5];
zz q[4],q[3];
zz q[5],q[3];
