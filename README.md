# About this repository
This simple MATLAB code is made for numerically solving the first-order ordinary differential equation, dy/dx=func(x,y), using the 4th-order Runge-Kutta method. Because of its simpleness, you can easily modify it or combine it with your other codes.

# How does it work?
- At first, you have to set your **func(x,y)** in **func.m**, where func(x,y) is given by **dy/dx=func(x,y)**. 
- As a next step, you should set initial conditions and other parameters in **RungeKutta.m**. There are 4 parameters that you can adjust in **RungeKutta.m**: xint, yint, xfin, and num. The initial values for x and y are represented by xint and yint, respectively. The maximum value of x is defined by xfin. The most important parameter is num (the number of the segments) because it directly affects the error of the numerical calculation. This value should be large in order to avoid a significant error. 
- To start your calculation, please run the code **RungeKutta.m**. In the workspace of MATLAB, you will see that x and y are created. You can visualize your final results by the command "plot(x,y)."
