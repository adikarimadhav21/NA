pkg load symbolic   % Load the symbolic package (if not already loaded)

function derivative = first_derivative(f)
  syms x;           % Define symbolic variable x
  df = diff(f(x), x);  % Differentiate f(x) with respect to x
  derivative = function_handle(df); % Convert the symbolic expression to a function handle
endfunction

#f= @(x) x^3-20;
f= @(x) exp(-x)-x;
% Calculate the first derivative of f(x)
f1 = first_derivative(f)
#f2= primes(f)
#f1= @ (x)  3*x^2;
es=0.1;
#x=3;
x=0;
i=0;
#while true
while i<5
  x_new= x-(f(x)/f1(x))
  ea=abs((x_new-x)/x_new)*100
  i=i+1
  if ea <es
     printf("This is root: %d\n",x_new);
     printf("This is error: %d\n",ea);
     printf("No of interation : %d\n",i);
     break;
   endif
  x=x_new
endwhile



