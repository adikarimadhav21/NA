x=[0 1 2 3 4 5]
y=[2.1 7.7 13.6 27.2 40.9 61.1]

n=length(x);
sum_x=sum(x);
sum_y=sum(y);
sum_x_2=sum(x.^2);
sum_x_3=sum(x.^3);
sum_x_4=sum(x.^4);
sum_xy=sum(x.*y);
sum_x_2_y=sum(x.^2.*y);

A=[n sum_x sum_x_2;sum_x sum_x_2 sum_x_3;sum_x_2 sum_x_3 sum_x_4]
B=[sum_y;sum_xy;sum_x_2_y]

a=A\B
a0=a(1)
a1=a(2)
a2=a(3)


y2=a0+a1.*x+a2.*x.^2

plot(x,y,'or',x,y2)a
#plot
m=2;
y_bar=sum_y/n;

sum_y_y_bar_2=sum((y-y_bar).^2)

sr=sum( (y-a0-a1.*x-a2.*x.^2).^2)


sybyx=sqrt((sr)/(n-(m+1)))

r= sqrt( (sum_y_y_bar_2-sr)/sum_y_y_bar_2)

#A=[6 15 55;15 55 225;55 225 979]
#det_A= det(A)
#B=[152.6; 585.6 ;2488.8]
#p= A\B

#det_a2=det([6 15 55;15 55 225;152.6 585.6 2488.8])
#a2=det_a2/det_A
