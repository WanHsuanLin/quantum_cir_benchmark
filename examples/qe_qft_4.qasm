OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
u1(0.196349540849362) q[3];
u2(0.0,3.5342917352885173) q[2];
u2(0.0,3.9269908169872414) q[1];
u1(6.283185307179586) q[0];
cx q[0],q[1];
u1(6.283185307179586) q[1];
u3(0.7853981633974485,1.5707963267948966,4.71238898038469) q[0];
cx q[0],q[1];
u1(6.283185307179586) q[1];
u3(-0.7853981633974485,1.5707963267948966,4.71238898038469) q[0];
cx q[0],q[2];
u1(6.283185307179586) q[2];
u3(0.392699081698724,1.5707963267948966,4.71238898038469) q[0];
cx q[0],q[2];
u2(0.7853981633974485,3.141592653589793) q[2];
u2(0.392699081698724,3.141592653589793) q[0];
cx q[0],q[2];
u2(0.0,3.141592653589793) q[0];
u2(0.0,3.141592653589793) q[2];
cx q[0],q[2];
u2(0.0,3.141592653589793) q[2];
u2(0.0,3.141592653589793) q[0];
cx q[0],q[2];
cx q[0],q[1];
u1(-0.7853981633974485) q[1];
cx q[0],q[1];
u2(0.0,3.141592653589793) q[0];
u1(0.7853981633974485) q[1];
cx q[3],q[4];
u2(0.0,3.141592653589793) q[3];
u2(0.0,3.141592653589793) q[4];
cx q[3],q[4];
u2(0.0,3.141592653589793) q[4];
u2(0.0,3.141592653589793) q[3];
cx q[3],q[4];
cx q[4],q[2];
u1(-0.196349540849362) q[2];
cx q[4],q[2];
u1(0.392699081698724) q[4];
u1(0.196349540849362) q[2];
cx q[1],q[2];
u2(0.0,3.141592653589793) q[1];
u2(0.0,3.141592653589793) q[2];
cx q[1],q[2];
u2(0.0,3.141592653589793) q[2];
u2(0.0,3.141592653589793) q[1];
cx q[1],q[2];
cx q[4],q[2];
u1(-0.392699081698724) q[2];
cx q[4],q[2];
u1(0.7853981633974485) q[4];
u1(0.392699081698724) q[2];
cx q[0],q[2];
u2(0.0,3.141592653589793) q[0];
u2(0.0,3.141592653589793) q[2];
cx q[0],q[2];
u2(0.0,3.141592653589793) q[2];
u2(0.0,3.141592653589793) q[0];
cx q[0],q[2];
cx q[3],q[4];
u2(0.0,3.141592653589793) q[3];
u2(0.0,3.141592653589793) q[4];
cx q[3],q[4];
u2(0.0,3.141592653589793) q[4];
u2(0.0,3.141592653589793) q[3];
cx q[3],q[4];
cx q[3],q[2];
u1(-0.7853981633974485) q[2];
cx q[3],q[2];
u2(0.0,3.141592653589793) q[3];
u1(0.7853981633974485) q[2];

// Outputs are q[3], q[2], q[0], q[1]
// (LSB on the right)
