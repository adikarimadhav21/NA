x=[1 5 7 9 12]
y=[10 15 12 15 21]

n= length(x);
sum_lnx=sum(log(x));
sum_lny=sum(log(y));
sum_lnx_square=sum(log(x).^2);
sum_lny_square=sum(log(y).^2);
sum_lnxy=sum(log(x).*log(y));

printf("sumx= %d\n",sum_lnx);
printf("sumy= %d\n",sum_lny);

avg_lnx= mean(log(x));
avg_lny=mean(log(y));

sxx= (sum_lnx_square-(n*avg_lnx^2));
sxy= (sum_lnxy-(n*avg_lnx*avg_lny));

B= sxy/sxx;

A= exp(avg_lny-(B*avg_lnx));

y2=A*x.^B;

plot(x,y,'or',x,y2);
xlabel("x");
legend("data","tata");

set (gca, 'color', 'green');
syy= (sum_lny_square-(n*avg_lny^2));
r= (sxy/(sqrt(sxx)*sqrt(syy)));

