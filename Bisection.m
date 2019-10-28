function BisectionMethod = Bisection(f,A.B)
  
  mid(1)=(A(1)+B(1))/2;
  fa(1)=f(A(1));
  fb(1)=f(B(1));
  midf(1)=f(mid(1));
  
  
  for i=2:10
    fa(i)=f(A(i-1));
    fb(i)=f(B(i-1));
    mid(i)=(A(i-1)+B(i-1))/2;
    midf(i)=f(mid(i));
    
    #disp(sprintf('%.5f %.5f %.5f %.5f %.5f %.5f',a,b,fa,fb,mid,midf))
    
    if fa(i-1)*midf(i-1)<0
      B(i)=mid(i);
      A(i)=A(i-1);
    else
      B(i)=B(i-1);
      A(i)=mid(i-1);
    endif  
    
  endfor
  
  BisectionMethod=[A'B'fa'fb'mid'midf];
endfunction
