#x=[83 71 64 69 69 64 68]
#y=[183 168 171 178 176 172 165]

#x=[2000 2001 2002 2003 2004 2005 2006 2006 2007 2008 2009 2010]
#y=[142 149 154 155 159 161 163 164 164 164 166 167]

x=[1 3 4 6 7]
y=[1 2 2 5 8]
N= length(x);

sum_x=sum(x);
sum_y=sum(y);
sum_x_square=sum(x.^2);
sum_ln_y=sum(log(y));
sum_ln_y_square=sum(log(y).^2);
sum_ln_y_x=sum(log(y).*x);

x_avg=sum_x/N;
ln_avg=sum_ln_y/N;

sxx=sum_x_square-(N*(x_avg ^2));
sxy= sum_ln_y_x-(N *x_avg *ln_avg);
#B= sxy/sxx;
B= exp(sxy/sxx);
#A= exp(ln_avg-(B*x_avg));
A= exp(ln_avg-(log(B)*x_avg));

y2=A*B.^x;
#y2=A*exp(B.*x);

plot(x,y,'or',x,y2);
grid on;
legend("data","data1");

syy=sum_ln_y_square-(N*(ln_avg ^2));

r=sxy/(sqrt(sxx)*sqrt(syy));

