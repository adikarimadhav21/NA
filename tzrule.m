#f= @(x) 0.2 +25*x-200*x^2+675* x^3-900*x^4+ 400*x^5
#a=0;
#b=0.8;

#f= @(x) sin(x)
#a= -pi;
#b=pi;

f= @(x) (x^2-2)/3
a= -1;
b=6;
n=input('Enter number of segmnet: ');

sum=f(a)+f(b)
delta_x=(b-a)/n
if n==1
  I= ((b-a)/2) *sum
else
  for i=1:n-1
    p=a+i*delta_x
    z= 2*f(a+i*delta_x)
    sum=sum+ 2*f(a+i*delta_x)
  endfor
  I= (delta_x/2)*sum
endif


