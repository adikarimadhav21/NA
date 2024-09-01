#Eulers

#dy_dx=@(x,y) 3*exp(-x)-0.4*y
dy_dx=@(x,y) cos(x)+.3^y

x0=0
y0=5
xn=3
n=4
h=(xn-x0)/n

disp("x \t \t y \t \n");
printf("%f\t%f\t \n",x0,y0);

#for i=0:n-1
for x=x0:h:xn-h
  y=y0+ dy_dx(x,y0)*h;
 # x0=x0+h;
  y0=y;
  x=x+h;
  printf("%f\t%f\t \n",x,y0);

endfor

#calculate error

