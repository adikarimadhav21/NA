# logarithm graph

x=[ 1 2 3 4 5 6 7 8 9 10 11]
y= [6 9.5 13 15 16.5 17.5 18.5 19 19.5 19.7 19.8]

N= length(x)
sum_y_square=sum(y.^2)
sum_ln_x=sum(log(x))
sum_ln_square=sum(log(x).^2)
sum_ln_x_y=sum(log(x).*y)

average_ln_x=mean(log(x))
avg_y= mean(y)
sxx=(sum_ln_square-(N*average_ln_x^2))
sxy=(sum_ln_x_y-(N*average_ln_x*avg_y))
B= sxy/sxx

A=avg_y-(B*average_ln_x)

y2= A+B.*log(x)

plot(x,y,'or',x,y2);
xlabel("Age of Trees [years]");
ylabel("Height [feet]");
title("Log graph");
grid on;
legend("data","log");

syy=sum(y.^2)-(N*avg_y^2);

r=(sxy/(sqrt(sxx)*sqrt(syy)))


