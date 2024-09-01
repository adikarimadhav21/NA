#f=@(x) x^10-1;
#xl=0;
#xu=1.3;
f= @(x) x^3+4*x^2-10
xl=1
xu=2

if f(xl)*f(xu)>0
  disp("There is no root om this interval");
else

  for i=1:4
    if i==1
     xr=xu-(f(xu)*(xl-xu))/(f(xl)-f(xu))
    endif
    if f(xl) *f(xr)==0
      printf("The root is =%d\n",xr);
      break;
     elseif f(xl) *f(xr)>0
      xl=xr
     else
      xu=xr
    endif
    xr_new= xu-(f(xu)*(xl-xu))/(f(xl)-f(xu))
    ea= abs( (xr_new-xr)/xr_new)*100
    xr=xr_new
  endfor
  printf("The root is =%d\n",xr);

endif
