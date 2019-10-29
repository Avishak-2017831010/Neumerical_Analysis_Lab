%finding the equation using gauss-jacobi method
%10x+3y-5z=5
%3x-10y+6z=9
%5x-2y+10z=3


clc;

f1=@(x,y,z) (1/10)*(5-3*y+5*z)
f2=@(x,y,z) (1/10)*(-9+3*x+6*z)
f3=@(x,y,z) (1/10)*(3-5*x+2*y)

x=0;
y=0;
z=0;

for i=1:10
  f1(x,y,z);
  f2(x,y,z);
  f3(x,y,z);
  
  p=f1(x,y,z);
  q=f2(x,y,z);
  r=f3(x,y,z);
  
  x=p;
  y=q;
  z=r;
  
endfor

fprintf('x=%.5f y=%.5f z=%.5f',x,y,z);
