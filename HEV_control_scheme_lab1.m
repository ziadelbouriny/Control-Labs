n1 = [100 40]; d1 = [1 0];
n2 = [10 6]; d2 = [1 0];
n3 = 1; d3 = 1;
n4 = 1.8; d4 = 1;
n5 = 1; d5 = [7.226 0];
n6 = 0.0615; d6 = 1;
n7 = 0.6154; d7 = 1;
n8 = 0.1; d8 = 1;
n9 = 2; d9 = 1;
n10 = 0.5; d10 = 1;
n11 = 0.0433; d11 = 1;

nblocks = 11;

blkbuild
q = [ 1 -11  0   0
      2  1  -10  0
      3  2  -9   0
      4  3   0   0
      5  4  -8  -9
      6  5   0   0
      7  6   0   0
      8  5   0   0
      9  5   0   0
      10 3   0   0
      11 5   0   0 ]
  
input = 1;
output = 6;
[aa, bb, cc, dd] = connect(a, b, c, d, q, input, output);
[num, den] = ss2tf(aa, bb, cc, dd);
printsys(num, den)