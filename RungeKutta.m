%Runge Kutta Method

f=@(x,y) (((y*y)-(x*x))/(((y*y)+(x*x))));
n=input('How many times to devide ');
x0=input('xo: ');
y0=input('y0: ');
xf=x0;
yf=y0;
t=input('target x value:');
h=(t-x0)/n;

for i=1:n
  x=x0+h;
  k1=h*f(xf,yf);
  k2=h*f((xf+(h/2)),(yf+(k1/2)));
  k3=h*f((xf+(h/2)),(yf+(k2/2)));
  k4=h*f(xf+h,yf+k3);
  
  y=y0+((1/6)*(k1+(2*k2)+(2*k3)+k4));
  
  x0=x;
  y0=y;
  
endfor

printf('The approximate value of y(%.2f) is %.5f',t,y);