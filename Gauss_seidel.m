%finding the equation using gauss-jacobi method
%20x+3y-5z=5
%3x-20y+6z=9
%5x-2y+20z=3


clc;

f1=@(y,z) (1/20)*(5-3*y+5*z)
f2=@(x,z) (1/20)*(-9+3*x+6*z)
f3=@(x,y) (1/20)*(3-5*x+2*y)


y=0;
z=0;

for i=1:10
  f1(y,z);
  x1=f1(y,z);
  f2(x1,z);
  y1=f2(x1,z);
  f3(x1,y1);
  z1=f3(x1,y1);
  
  x=x1;
  y=y1;
  z=z1;
  
endfor

fprintf('x=%.5f y=%.5f z=%.5f',x,y,z);