%Euler Method

f=@(x,y) (-x*y*y);
n=input('How many times to devide ');
x0=input('xo: ');
y0=input('y0: ');
t=input('target x value:');
h=(t-x0)/n;

for i=1:n
  x=x0+i*h;
  y=y0+(h*f(x0,y0));
  
  x0=x;
  y0=y;
  
endfor

printf('The approximate value of y(%.2f) is %.5f',t,y);

