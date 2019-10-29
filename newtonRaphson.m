pkg load symbolic;
syms x;
functn=input('Enter the function as a variable of x: ');
f=inline(functn);
z=diff(f(x));
d=function_handle(z);
x0=input('Enter the starting value of x: ');
for i=2:100
  x1=x0-(f(x0)/d(x0));
  x1
  if(x1==x0)
  break;
  endif;
  x0=x1;
endfor