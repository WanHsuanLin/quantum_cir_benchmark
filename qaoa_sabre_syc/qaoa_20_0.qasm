OPENQASM 2.0;
include "qelib1.inc";
qreg q[54];
rzz(pi/4) q[3],q[7];
rzz(pi/4) q[3],q[6];
rzz(pi/4) q[3],q[11];
rzz(pi/4) q[7],q[5];
rzz(pi/4) q[7],q[10];
rzz(pi/4) q[12],q[16];
rzz(pi/4) q[12],q[13];
rzz(pi/4) q[12],q[17];
rzz(pi/4) q[16],q[9];
rzz(pi/4) q[16],q[8];
rzz(pi/4) q[13],q[17];
rzz(pi/4) q[13],q[19];
rzz(pi/4) q[5],q[10];
rzz(pi/4) q[5],q[11];
rzz(pi/4) q[10],q[19];
rzz(pi/4) q[9],q[14];
rzz(pi/4) q[9],q[0];
rzz(pi/4) q[14],q[4];
rzz(pi/4) q[14],q[15];
rzz(pi/4) q[8],q[18];
rzz(pi/4) q[8],q[19];
rzz(pi/4) q[18],q[1];
rzz(pi/4) q[18],q[15];
rzz(pi/4) q[1],q[0];
rzz(pi/4) q[1],q[4];
rzz(pi/4) q[2],q[17];
rzz(pi/4) q[2],q[4];
rzz(pi/4) q[2],q[6];
rzz(pi/4) q[6],q[11];
rzz(pi/4) q[15],q[0];