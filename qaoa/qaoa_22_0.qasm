OPENQASM 2.0;
include "qelib1.inc";
qreg q[22];
rzz(pi/4) q[15],q[21];
rzz(pi/4) q[15],q[17];
rzz(pi/4) q[15],q[0];
rzz(pi/4) q[21],q[6];
rzz(pi/4) q[21],q[10];
rzz(pi/4) q[6],q[1];
rzz(pi/4) q[6],q[20];
rzz(pi/4) q[18],q[20];
rzz(pi/4) q[18],q[8];
rzz(pi/4) q[18],q[17];
rzz(pi/4) q[20],q[2];
rzz(pi/4) q[12],q[16];
rzz(pi/4) q[12],q[5];
rzz(pi/4) q[12],q[2];
rzz(pi/4) q[16],q[5];
rzz(pi/4) q[16],q[13];
rzz(pi/4) q[3],q[10];
rzz(pi/4) q[3],q[1];
rzz(pi/4) q[3],q[9];
rzz(pi/4) q[10],q[17];
rzz(pi/4) q[14],q[19];
rzz(pi/4) q[14],q[0];
rzz(pi/4) q[14],q[4];
rzz(pi/4) q[19],q[11];
rzz(pi/4) q[19],q[8];
rzz(pi/4) q[5],q[9];
rzz(pi/4) q[8],q[7];
rzz(pi/4) q[1],q[13];
rzz(pi/4) q[9],q[11];
rzz(pi/4) q[11],q[7];
rzz(pi/4) q[0],q[13];
rzz(pi/4) q[2],q[4];
rzz(pi/4) q[4],q[7];
