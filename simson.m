f= @(x) 0.2 +25*x-200*x^2+675* x^3-900*x^4+ 400*x^5
a=0;
b=0.8;

n=input('Enter number of segment : ');
sum=f(a)+f(b)
if mod(n,2)==0
  delta_x=(b-a)/n
  for i=1:2:n-1
    sum=sum+4*f(a+i*delta_x);
  endfor
  for i=2:2:n-2
    sum=sum+2*f(a+i*delta_x);
  endfor
  I= (delta_x/3)*sum

  # elseif mod(n,3)==0
else
  delta_x= (b-a)/3
  for i=1:n-1
    sum=sum+3*f(a+i*delta_x)
  endfor
  I=((b-a)/8)*sum
endif




