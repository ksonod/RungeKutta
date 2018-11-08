%4th-order Runge-Kutta method
% dy/dx = func(x,y)

% You can modify the values in the following section.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Initial conditions for x and y
xint=0;  % initial value of x
yint=0;  % initial value of y

%%%Othe parameters
xfin=2*pi; % the maximum value of x.
num=1000; % # segments
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


Dx=(xfin-xint)/num; % step of x.

%Initialization
x=zeros(num,1);
y=zeros(num,1);
k=zeros(4,1);
x(1,1)=xint;
y(1,1)=yint;

%Runge-Kutta
for j=1:1:num
    k(1,1)= Dx*func(x(j,1),y(j,1)) ;
    k(2,1)= Dx*func(x(j,1)+0.5*Dx,y(j,1)+0.5*k(1,1));
    k(3,1)= Dx*func(x(j,1)+0.5*Dx,y(j,1)+0.5*k(1,1));
    k(4,1)= Dx*func(x(j,1)+Dx,y(j,1)+k(1,1));

    y(j+1,1)=y(j,1)+ (k(1,1)+2*k(2,1)+2*k(3,1)+k(4,1))/6;
    x(j+1,1)=x(j,1)+Dx;
end

clear xint xfin yint k num Dx;

