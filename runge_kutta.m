#runge kutta
#dy_dx=@(x,y) 3*exp(-x)-.4*y;
dy_dx=@(x,y) cos(x)+.3^y;

x0=0;
y0=5;
xn=3;
n=2;
h=(xn-x0)/n;

disp("x \t \t y \t \n");
printf("%f\t%f\t \n",x0,y0);

for x=x0:h:xn-h
  k1=dy_dx(x,y0)
  k2=dy_dx(x+.5*h,y0+.5*k1*h)
  k3=dy_dx(x+.5*h,y0+.5*k2*h)
  k4=dy_dx(x+h,y0+k3*h)
  y=y0+((k1+2*k2+2*k3+k4)*h)/6
  y0=y;
  x=x+h;
  printf("%f\t%f\t \n",x,y);
endfor




