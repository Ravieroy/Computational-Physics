clc, close all, clear all
timerange= 0:0.5:180;
N01=10^8;N02=10^7;
% IC= [N01-1001, 1000, 1, 0, N02/2, N02/4, N02/4, 0];%initial conditions(S1,E1,I1,R1,S2,E2,I2,R2)
IC= [N01-1001, 1000, 1, 0, N02-1001, 1000, 1, 0];
% N_0=10^8;
% IC= [N_0-1000, 1000, 0, 0, N_0/2, N_0/2,0, 0];%initial conditions(S1,E1,I1,R1,S2,E2,I2,R2)
% IC= [N_0-10, 10, 0, 0, N_0-10, 10, 0, 0];
% opts = odeset('RelTol',1e-5,'AbsTol',1e-5);
% [t,y] =ode45(@(t,y) fn(t,y,0.05, 0.01),timerange, IC);
% [t1,y1] =ode45(@(t,y) fn(t,y,0.1,0.5),timerange, IC);
% [t2,y2] =ode45(@(t,y) fn(t,y,0.9,0.1),timerange, IC);
% [t3,y3] =ode45(@(t,y) fn(t,y,0.75),timerange, IC);
% [t4,y4] =ode45(@(t,y) fn(t,y,0.05),timerange, IC,opts);

% [t,y] =ode45(@(t,y) fn(t,y,0.002, 0.001),timerange, IC);
% [t1,y1] =ode45(@(t,y) fn(t,y,0.08, 0.04),timerange, IC);
% [t2,y2] =ode45(@(t,y) fn(t,y,0.5, 0.1),timerange, IC);

[t,y] =ode45(@(t,y) fn(t,y,0.001, 0.002),timerange, IC);
[t1,y1] =ode45(@(t,y) fn(t,y,0.04, 0.08),timerange, IC);
[t2,y2] =ode45(@(t,y) fn(t,y,0.1, 0.5),timerange, IC);

% plot(t,y(:,1),'m','LineWidth',1.5)
% hold on
% plot(t1,y1(:,1),'m--','LineWidth',1.5) 
% hold on
% plot(t2,y2(:,1),'m.-','LineWidth',1.5) 
% hold on
% grid off
% lgd=legend('m_{12}= 0.002, m_{21}= 0.001', 'm_{12}= 0.08, m_{21}= 0.04', 'm_{12}= 0.5, m_{21}= 0.1')
% % lgd=legend('m_{12}= 0.001, m_{21}= 0.002', 'm_{12}= 0.04, m_{21}= 0.08', 'm_{12}= 0.1, m_{21}= 0.5')
% lgd.FontSize = 12;
% legend('boxoff')
% xlabel('Time (in days)')
% ylabel({'Number of';'susceptible individuals'})
% % title('Population of City-1 Vs migration parameter m_1 & m_2')
% 
% figure
% 
% plot(t,y(:,2),'b','LineWidth',1.5)
% hold on
% plot(t1,y1(:,2),'b--','LineWidth',1.5) 
% hold on
% plot(t2,y2(:,2),'b-.','LineWidth',1.5) 
% hold on
% grid off
% % lgd=legend('m= 0.05', 'm= 0.1', 'm= 0.9')
% lgd=legend('m_{12}= 0.002, m_{21}= 0.001', 'm_{12}= 0.08, m_{21}= 0.04', 'm_{12}= 0.5, m_{21}= 0.1')
% % lgd=legend('m_{12}= 0.001, m_{21}= 0.002', 'm_{12}= 0.04, m_{21}= 0.08', 'm_{12}= 0.1, m_{21}= 0.5')
% lgd.FontSize = 12;
% legend('boxoff')
% xlabel('Time (in days)')
% ylabel({'Number of';'Exposed individuals'})
% title('Population of City-1 Vs migration parameter m_1 & m_2')
% 
% figure
% 
plot(t,y(:,3),'r','LineWidth',1.5)
hold on
plot(t1,y1(:,3),'b--','LineWidth',1.5) 
hold on
plot(t2,y2(:,3),'k-.','LineWidth',1.5) 
hold on
grid off
% lgd=legend('m= 0.05', 'm= 0.1', 'm= 0.9')
% lgd=legend('m_{12}= 0.002, m_{21}= 0.001', 'm_{12}= 0.08, m_{21}= 0.04', 'm_{12}= 0.5, m_{21}= 0.1')
lgd=legend('m_{12}= 0.001, m_{21}= 0.002', 'm_{12}= 0.04, m_{21}= 0.08', 'm_{12}= 0.1, m_{21}= 0.5')
lgd.FontSize = 12;
legend('boxoff')
xlabel('Time (in days)')
ylabel({'Number of';'Infected individuals'})
% title('Population of City-1 Vs migration parameter m_1 & m_2')
i=gcf;
% exportgraphics(i,'infected_mig_city1.eps')
% exportgraphics(i,'rev_infected_mig_city1.eps')


% figure
% plot(t,y(:,4),'g','LineWidth',1.5)
% hold on
% plot(t1,y1(:,4),'g--','LineWidth',1.5) 
% hold on
% plot(t2,y2(:,4),'g-.','LineWidth',1.5) 
% hold on
% grid off
% % lgd=legend('m= 0.05', 'm= 0.1', 'm= 0.9')
% % lgd=legend('m_{12}= 0.002, m_{21}= 0.001', 'm_{12}= 0.08, m_{21}= 0.04', 'm_{12}= 0.5, m_{21}= 0.1')
% lgd=legend('m_{12}= 0.001, m_{21}= 0.002', 'm_{12}= 0.04, m_{21}= 0.08', 'm_{12}= 0.1, m_{21}= 0.5')
% lgd.FontSize = 12;
% legend('boxoff')
% xlabel('Time (in days)')
% ylabel({'Number of';'Recovered individuals'}) 
% 
% title('Population of City-1 Vs migration parameter m_1 & m_2')
% 
% figure
% 
% plot(t,y(:,5),'m','LineWidth',1.5)
% hold on
% plot(t1,y1(:,5),'m--','LineWidth',1.5) 
% hold on
% plot(t2,y2(:,5),'m.-','LineWidth',1.5) 
% hold on
% grid off
% % lgd=legend('m= 0.05', 'm= 0.1', 'm= 0.9')
% % lgd=legend('m_{12}= 0.002, m_{21}= 0.001', 'm_{12}= 0.08, m_{21}= 0.04', 'm_{12}= 0.5, m_{21}= 0.1')
% lgd=legend('m_{12}= 0.001, m_{21}= 0.002', 'm_{12}= 0.04, m_{21}= 0.08', 'm_{12}= 0.1, m_{21}= 0.5')
% lgd.FontSize = 12;
% legend('boxoff')
% xlabel('Time (in days)')
% ylabel({'Number of';'susceptible individuals'})
% title('Population of City-2 Vs migration parameter m_1 & m_2')
% 
% % legend('City-1','City-2')
% figure 
% plot(t,y(:,6),'b','LineWidth',1.5)
% hold on
% plot(t1,y1(:,6),'b--','LineWidth',1.5) 
% hold on
% plot(t2,y2(:,6),'b-.','LineWidth',1.5) 
% hold on
% grid off
% % lgd=legend('m= 0.05', 'm= 0.1', 'm= 0.9')
% % lgd=legend('m_{12}= 0.002, m_{21}= 0.001', 'm_{12}= 0.08, m_{21}= 0.04', 'm_{12}= 0.5, m_{21}= 0.1')
% lgd=legend('m_{12}= 0.001, m_{21}= 0.002', 'm_{12}= 0.04, m_{21}= 0.08', 'm_{12}= 0.1, m_{21}= 0.5')
% lgd.FontSize = 12;
% legend('boxoff')
% xlabel('Time (in days)')
% ylabel({'Number of';'Exposed individuals'})
% title('Population of City-2 Vs migration parameter m_1 & m_2')

figure

plot(t,y(:,7),'r','LineWidth',1.5)
hold on
plot(t1,y1(:,7),'b--','LineWidth',1.5) 
hold on
plot(t2,y2(:,7),'k-.','LineWidth',1.5) 
hold on
grid off
% lgd=legend('m= 0.05', 'm= 0.1', 'm= 0.9')
% lgd=legend('m_{12}= 0.002, m_{21}= 0.001', 'm_{12}= 0.08, m_{21}= 0.04', 'm_{12}= 0.5, m_{21}= 0.1')
lgd=legend('m_{12}= 0.001, m_{21}= 0.002', 'm_{12}= 0.04, m_{21}= 0.08', 'm_{12}= 0.1, m_{21}= 0.5')
lgd.FontSize = 12;
legend('boxoff')
xlabel('Time (in days)')
ylabel({'Number of';'Infected individuals'})
% title('Population of City-2 Vs migration parameter m_1 & m_2')
i=gcf;
% exportgraphics(i,'infected_mig_city2.eps')
% exportgraphics(i,'rev_infected_mig_city2.eps')

% figure
% 
% plot(t,y(:,8),'g','LineWidth',1.5)
% hold on
% plot(t1,y1(:,8),'g--','LineWidth',1.5) 
% hold on
% plot(t2,y2(:,8),'g-.','LineWidth',1.5) 
% hold on
% grid off
% lgd=legend('m= 0.05', 'm= 0.1', 'm= 0.9')
% lgd=legend('m_{12}= 0.002, m_{21}= 0.001', 'm_{12}= 0.08, m_{21}= 0.04', 'm_{12}= 0.5, m_{21}= 0.1')
% lgd=legend('m_{12}= 0.001, m_{21}= 0.002', 'm_{12}= 0.04, m_{21}= 0.08', 'm_{12}= 0.1, m_{21}= 0.5')
% lgd.FontSize = 12;
% legend('boxoff')
% xlabel('Time (in days)')
% ylabel({'Number of';'Recovered individuals'})
% 
% title('Population of City-2 Vs migration parameter m_1 & m_2')

disp('red')
% max(y(:,3))
% max(y(:,7))

disp('blue')
% max(y1(:,3))
% max(y1(:,7))

disp('black')
max(y2(:,3))
max(y2(:,7))

function rk1 =fn(t,y,m12,m21)

S1=y(1);
E1=y(2);
I1=y(3);
R1=y(4);

S2=y(5);
E2=y(6);
I2=y(7);
R2=y(8);

    
d=3.95*10^-5;beta= 0.25;
sigma=0.19; delta= 0.02;
gamma=0.125; alpha=0.02;

% eta1=0.75;
% eta2=0.25;
eta1=0.9;
eta2=0.5;

% m21=0.05; %from city 1 to city 2
% m12=0.02; %from city 2 to city 1


% m21=0.25; %from city 1 to city 2
% m12=0.05; %from city 2 to city 1


beta_n1= (beta/(1+eta1*I1));
beta_n2= (beta/(1+eta2*I2));
A=10;
% % lambda12=100;
% % lambda21=0;
% 
% N1=(S1+E1+I1+R1);
% N2= (S2+E2+I2+R2);
% m1=0.1;m2= 0.5;
rk1(1)= A-d*S1-(beta_n1*S1*I1)+delta*R1 +m12*S2-m21*S1;     %Susceptible

% rk1(2)= (beta_n1*S1*I1)-sigma*E1 -d*E1 - (lambda12*m12*E2*I2)/N2 -m21*E1+m12*E2 ;%Exposed  
rk1(2)= (beta_n1*S1*I1)-sigma*E1 -d*E1 -m21*E1+m12*E2 ;
 
% rk1(3)= lambda12*m12*E2*I2/N2 -m21*I1+ m12*I2+(sigma*E1 -gamma*I1 -alpha*I1-d*I1); %Infected
rk1(3)= -m21*I1+ m12*I2+(sigma*E1 -gamma*I1 -alpha*I1-d*I1); %Infected

 
rk1(4)= (gamma*I1 -delta*R1 -d*R1 -m21*R1 +m12*R2);%Recovered

%-----------------------------------------------

rk1(5)=A-d*S2- (beta_n2*S2*I2)+delta*R2 -m12*S2+m21*S1 ;%Susceptible

% rk1(6)= (beta_n2*S2*I2)-sigma*E2 -d*E2 - (lambda21*m21*E1*I1)/N1 +m21*E1-m12*E2;%Exposed       
rk1(6)= (beta_n2*S2*I2)-sigma*E2 -d*E2 +m21*E1-m12*E2;%Exposed     
 
% rk1(7)=(lambda21*m21*E1*I1)/N1+ m21*I1- m12*I2+(sigma*E2 -gamma*I2 -alpha*I2-d*I2); %Infected
rk1(7)=m21*I1- m12*I2+(sigma*E2 -gamma*I2 -alpha*I2-d*I2); %Infected
 
rk1(8)= (gamma*I2 -delta*R2 -d*R2+m21*R1 -m12*R2);%Recovered

rk1=rk1(:);
end





















