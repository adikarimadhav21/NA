#f= @(x) x^3-20
f= @(x) exp(-x)-x;

#x_previous=4
x_previous=0
#x_current=5.5
x_current=3
i=0;
while i<3
  x_new=x_current- (f(x_current)*(x_previous-x_current))/(f(x_previous)-f(x_current))
  ea=abs((x_new-x_current)/x_new)*100
  i=i+1
  if ea <es
     printf("This is root: %d\n",x_new);
     printf("This is error: %d\n",ea);
     printf("No of interation : %d\n",i);
     break;
   endif
  x_previous=x_current
  x_current=x_new

endwhile

