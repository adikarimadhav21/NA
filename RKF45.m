f = @(x, y) (4*exp(0.8*x))-(0.5*y) ;% Define your ODE sysxem here
#Initializing Variables:
tol = 0.001; % tolerance for error control
h = 2; % Initial step size
x = 0; % Initial conditions
y = 2; % Initial conditions
i = 0;
xn=2;

fprintf('Step %d: x = %f, y = %f, h = %f\n', i, x, y,h);

# loop until target values
while x<xn

  # calculate Runge-Kutta terms using formulas:
  h = min(h, xn-x); #is a step size control mechanism that ensures the step size doesn't exceed the remaining distance to the next time point.
  k1 = f(x,y);
  k2 = f(x+h/5, y+k1*h/5);
  k3 = f(x+(3*h)/10, y+(3*k1*h)/40+(9*k2*h)/40);
  k4 = f(x+(3*h)/5, y+(3*k1*h)/10-(9*k2*h)/10+(6*k3*h)/5);
  k5 = f(x+h, y-(11*k1*h)/54+(5*k2*h)/2-(70*k3*h)/27+(35*k4*h)/27);
  k6 = f(x+(7*h)/8, y+(1631*k1*h)/55296+(175*k2*h)/512+(575*k3*h)/13824+(44275*k4*h)/110592+(253*k5*h)/4096);
  #fprintf('Step %d: k1 = %f, k2 = %f, k3 = %f, k4 = %f, k5 = %f, k6 = %f\n', i,k1, k2, k3,k4,k5,k6);

 # compute the fourth-order prediction
  y1 = y + ( (37*k1)/378+(250*k3)/621+(125*k4)/594+(512*k6)/1771)*h;
 # compute the fifth-order prediction
  y2 = y + ( (2825*k1)/27648+(18575*k3)/48384+(13525*k4)/55296+ (277*k5)/14336+(1*k6)/4)*h;
#Error Control and Step Size Adjustment:

%. When we detect the expected error is larger than tolerance, reduce the step size and recalculate the
% current step. When we detect the expected error is less than tolerance, keep the current step and slightly
% enlarge the step size in the next step.%
  R = abs(y1-y2)/h;
  delta = 0.84*(tol/R)^(1/4);
  if R<=tol
    x = x+h;
    y = y1;
    i = i+1;
    fprintf('Step %d: x = %f, y = %f, h = %f\n', i, x, y,h);
    h = delta*h;
  else
   fprintf('Step %d: x = %f, y = %f, h = %f\n', i, x, y,h);
   h = delta*h;
  endif
endwhile




