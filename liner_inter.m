f1=@(x)log(x);
x0=1;
x1=4;
x2=6;

A=[x0 1;x1 1]
B=[f1(x0);f1(x1)]
C=A\B

m=C(1)
b=C(2)
y1=@(x) m*x+b;

f_2=y1(2)

error=abs((log(2)-f_2)/log(2))*100

