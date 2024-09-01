#start
#x=[2,3,5,7,9]
#y=[4,5,7,10,15]

#x=[-1.1 2.2 -3.3 4.4 -5.5]
#y=[2.2 -.8 4.2 -3.5 -4.9]
x=[-3 -2 .5 2 4]
y=[3 1 0 -3 -5]

%compute terms for slope%

N= length(x);
sum_x=sum(x);
sum_y=sum(y);
sum_xy=sum(x.*y);
sum_x_square= sum(x.^2);

printf("N= %d \n",N);
printf("sum_x= %d \n",sum_x);
printf("sum_y= %d \n",sum_y);
printf("sum_xy= %d \n",sum_xy);
printf("sum_x_sqaure= %d \n",sum_x_square);

m_numerator= (N *sum_xy)-(sum_x *sum_y)
m_denometer= (N *sum_x_square)-(sum_x ^2)

m= m_numerator/m_denometer

b= mean(y)-(m*mean(x))


y2= m.*x+b

plot(x,y,'or',x,y2,"linewidth",1);
xlabel("Cuurent |amp|");
ylabel("Voltage |voltage|");
title(" Linear graph : current vs voltage");
grid on

legend("data","linear");

#compute term for r

root_x=sqrt(m_denometer)
 root_y=sqrt( (N*sum(y.^2))-(sum_y ^2))

 r=(m_numerator/(root_x * root_y));

disp(r)
