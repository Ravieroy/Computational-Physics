clear all;
L=0.1;% wall thickness
n=10;% Number of simulations modes
T0=20;% Initial temp.
T1s=100;% surface-1 temp.
T2s=25;%surface-2 temp.

dx=L/n; %node thickness
alpha= 0.0001;%thermla diffusivity
t_final=60;%simulation time
dt=0.1;%fixed time step

x= dx/2:dx:L-dx/2;

%Initialisation of temp.

T= ones(n,1)*T0;%n rows 1 column (initial temp. vector)

dTdt=zeros(n,1);

t= 0:dt:t_final;

for j= 1:length(t) %Stepping through time
    for i= 2: n-1 %Steps through time
        dTdt(i)= alpha*(-(T(i)-T(i-1))/dx^2 +(T(i+1)-T(i))/dx^2);
    end
    dTdt(1)= alpha*(-(T(1)-T1s)/dx^2 +(T(2)-T(1))/dx^2);
    dTdt(n)= alpha*(-(T(n)-T(n-1))/dx^2 +(T2s-T(n))/dx^2);
    T = T+dTdt*dt;
    figure(1)
    plot(x,T)
    axis([0 L 0 50])
    xlabel('Distance')
    ylabel('Temperature')
    pause(0.1)
end
    
    


