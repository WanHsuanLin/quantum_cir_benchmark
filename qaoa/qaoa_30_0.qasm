OPENQASM 2.0;
include "qelib1.inc";
qreg q[30];
rzz(pi/4) q[15],q[21];
rzz(pi/4) q[1];
rzz(pi/4) q[15],q[3];
rzz(pi/4) q[21],q[1];
rzz(pi/4) q[21],q[20];
rzz(pi/4) q[3],q[4];
rzz(pi/4) q[3],q[6];
rzz(pi/4) q[4],q[8];
rzz(pi/4) q[4],q[10];
rzz(pi/4) q[7],q[26];
rzz(pi/4) q[7],q[5];
rzz(pi/4) q[7],q[10];
rzz(pi/4) q[26],q[11];
rzz(pi/4) q[26],q[24];
rzz(pi/4) q[5],q[25];
rzz(pi/4) q[5],q[18];
rzz(pi/4) q[9],q[14];
rzz(pi/4) q[9],q[20];
rzz(pi/4) q[9],q[28];
rzz(pi/4) q[14],q[2];
rzz(pi/4) q[14],q[29];
rzz(pi/4) q[25],q[0];
rzz(pi/4) q[25],q[19];
rzz(pi/4) q[0],q[8];
rzz(pi/4) q[0],q[6];
rzz(pi/4) q[8],q[22];
rzz(pi/4) q[20],q[27];
rzz(pi/4) q[2],q[17];
rzz(pi/4) q[2],q[12];
rzz(pi/4) q[17],q[23];
rzz(pi/4) q[17],q[16];
rzz(pi/4) q[11],q[16];
rzz(pi/4) q[11],q[22];
rzz(pi/4) q[1],q[24];
rzz(pi/4) q[10],q[6];
rzz(pi/4) q[24],q[12];
rzz(pi/4) q[16],q[19];
rzz(pi/4) q[19],q[23];
rzz(pi/4) q[13],q[29];
rzz(pi/4) q[13],q[22];
rzz(pi/4) q[13],q[28];
rzz(pi/4) q[29],q[12];
rzz(pi/4) q[18],q[28];
rzz(pi/4) q[18],q[27];
rzz(pi/4) q[23],q[27];
