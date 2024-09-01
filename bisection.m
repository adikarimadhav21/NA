#f = @(x) (((668.06/x)*(1-exp(-.146843*x)))-40);
#xl=12;
#xu=16;
#es=0.5;

%f = @(x) x^3-20;
%xl=1;
%xu=4;
%es=0.5;

f=@ (x) x^3+4*x^2-10;
xl=1;
xu=2;
es=10^-4;
function [xm,ea]= cal (xl,xu)
  xm=6
  ea=15
endfunction

[a,b]=cal(2,3)

if f(xl)*f(xu) >0
  disp("No roots\n");
else
  xm= (xl+xu)/2
  f(xl)
  f(xm)
  if f(xl)*f(xm)==0
    printf(" root =%d\n",xm);
    return;
  elseif f(xl)*f(xm)>0
    disp("update xl\n");
    xl=xm
  else
    disp("update xu\n");
    xu=xm
  endif
  xm_new=(xl+xu)/2
  ea= abs((xm_new-xm)/xm_new )*100
  if ea<es
     printf(" root =%d\n",xm);
  endif
  xm=xm_new;

  #while ea>=es
  i=2;
  while i <5
    if f(xl)*f(xm)==0
    printf(" root =%d\n",xm);
    break;
  elseif f(xl)*f(xm)>0
    disp("update xl\n");
    xl=xm
  else
    disp("update xu\n");
    xu=xm
  endif
  xm_new=(xl+xu)/2
  ea= abs((xm_new-xm)/xm_new )*100
  xm=xm_new;
  i=i+1;
  endwhile
  #endfor
  printf(" root =%d\n",xm);



end


