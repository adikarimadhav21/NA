f=@(x) log(x);
x0=1;
x1=4;
x2=6;

b0=f(x0)
b1=(f(x1)-f(x0))/(x1-x0)
b2= (((f(x2)-f(x1))/(x2-x1))-((f(x1)-f(x0))/(x1-x0)))/(x2-x0)

a0=b0-b1*x0+b2*x0*x1
a1= b1-b2*x0-b2*x1
a2=b2

f2=@(x) a0+a1*x+a2*x^2
f_2=f2(2)

error =abs((log(2)-f_2)/log(2))*100
