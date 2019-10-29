function value=BisFunc(f,a,b);
  pkg load symbolic;
  syms x;
  func=inline(f);
d = 1e-10;
for i=1:10
    m = (a*func(b)-b*func(a))/func(b)-func(a);
    printf("%d %d %d %d %d %d\n",a,b,func(a),func(b),m,func(m));
    
    if func(m)*func(a) < 0
        b = m;
    else
        a = m;
  endif
  
endfor
value=m;
endfunction