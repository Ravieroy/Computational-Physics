clc, close all, clear all
timerange= 0:0.5:300;
% N_0=10^5;
% IC= [N_0-1000, 1000, 0, 0, N_0/2, N_0/2, 0, 0, N_0/4, N_0/4, N_0/2, 0];%initial conditions(S1,E1,I1,R1,S2,E2,I2,R2)

N01=10^6;E01=1000;I01=1;R01=0;S01=N01-(E01+I01);
N02=10^7;E02=1000;I02=1;R02=0;S02=N02-(E02+E02);
N03=10^8;E03=1000;I03=1;R03=0;S03=N03-(E03+I03);
IC= [S01,E01,I01,R01,S02,E02,I02,R02,S03,E03,I03,R03];
% IC= [10^7,1000,1,0,10^7,1000,10^5,0, 10^8,1000,1,0];


[t,y] =ode45(@(t,y) fn(t,y),timerange, IC);

plot(t,y(:,3),'r','LineWidth',1.5)
hold on
plot(t,y(:,7),'b--','LineWidth',1.5) 
hold on
plot(t,y(:,11),'m-.','LineWidth',1.5) 
hold on
grid off
xlabel('Time (in days)')
ylabel({'Infected';' population '})
legend('Rural','Urban','Metropolitan','FontSize',11)
i=gcf;
% exportgraphics(i,'no_mig.eps')
% exportgraphics(i,'mig_1.eps')
exportgraphics(i,'rev_mig.eps')

% figure
% 
% plot(t,y(:,2),'b','LineWidth',1.5)
% hold on
% plot(t,y(:,6),'b--','LineWidth',1.5) 
% hold on
% plot(t,y(:,10),'m-.','LineWidth',1.5) 
% hold on
% grid off
% xlabel('Time (in days)')
% ylabel({'Exposed';' population '})
% legend('City-1','City-2','city-3','FontSize',12)
% % title(tt,'Preventive Measure : Threshold =1%')
% figure
%exportgraphics(tt,'thres_10.eps')

% plot(t,y(:,1),'m','LineWidth',1.5)
% hold on
% plot(t,y(:,5),'m--','LineWidth',1.5) 
% hold on
% plot(t,y(:,9),'b-.','LineWidth',1.5) 
% grid off
% xlabel('Time (in days)')
% ylabel({'Susceptible';' population '})
% legend('City-1','City-2','city-3','FontSize',12)

% figure
% plot(t,y(:,4),'g','LineWidth',1.5)
% hold on
% plot(t,y(:,8),'g--','LineWidth',1.5) 
% hold on
% plot(t,y(:,12),'b-.','LineWidth',1.5) 
% grid off
% xlabel('Time (in days)')
% ylabel({'Recovered';' population '})
% legend('City-1','City-2','city-3','FontSize',12)
%

% title(tt,'Preventive Measure : Threshold= 1%')

max(y(:,3))

max(y(:,7))

max(y(:,11))
function rk1 =fn(t,y)

S1=y(1);
E1=y(2);
I1=y(3);
R1=y(4);

S2=y(5);
E2=y(6);
I2=y(7);
R2=y(8);

S3=y(9);
E3=y(10);
I3=y(11);
R3=y(12);

d=3.95*10^-5;beta= 0.25;
sigma=0.19; delta= 0.02;
gamma=0.125; alpha=0.02;

eta1=0.5;
eta2=0.25;
eta3=1;



% m21=0.000;m12=0.000;
% m32=0.00;m23=0.00;
% m31= 0.00;m13=0.00;
%1=Rural 2= Urban 3= Metro

% m21=0.02;m12=0.15;
% m32=0.05;m23=0.25;
% m31= 0.05;m13=0.35;

m21=0.15;m12=0.05;
m32=0.25;m23=0.02;
m31= 0.35;m13=0.05;



beta_n1= (beta/(1+eta1*I1));
beta_n2= (beta/(1+eta2*I2));
beta_n3= (beta/(1+eta3*I3));
A=10;

% N1=(S1+E1+I1+R1);
% N2= (S2+E2+I2+R2);
% N3= (S3+E3+I3+R3);
% % m1=0.1;m2= 0.5;
rk1(1)= A-d*S1-(beta_n1*S1*I1)+delta*R1 -m21*S1-m31*S1+m12*S2+m13*S3;     %Susceptible

rk1(2)= (beta_n1*S1*I1)-sigma*E1 -d*E1 -m21*E1-m31*E1+m12*E2+m13*E3 ; 

rk1(3)= -m21*I1-m31*I1+m12*I2+m13*I3+(sigma*E1 -gamma*I1 -alpha*I1-d*I1);

rk1(4)= (gamma*I1 -delta*R1 -d*R1 -m21*R1-m31*R1+m12*R2+m13*R3);%Recovered

%-----------------------------------------------

rk1(5)=A-d*S2- (beta_n2*S2*I2)+delta*R2 -m32*S2-m12*S2 +m23*S3+m21*S1 ;%Susceptible

rk1(6)= (beta_n2*S2*I2)-sigma*E2 -d*E2 -m32*E2-m12*E2 +m23*E3+m21*E1;%Exposed 
 
rk1(7)= -m32*I2-m12*I2 +m23*I3+m21*I1+(sigma*E2 -gamma*I2 -alpha*I2-d*I2); %Infected
 
rk1(8)= (gamma*I2 -delta*R2 -d*R2-m32*R2-m12*R2 +m23*R3+m21*R1);%Recovered

%------------------------------------------------
rk1(9)=A-d*S3- (beta_n3*S3*I3)+delta*R3 -m13*S3-m23*S3+m31*S1+m32*S2 ;%Susceptible

rk1(10)= (beta_n3*S3*I3)-sigma*E3 -d*E3 -m13*E3-m23*E3+m31*E1+m32*E2; %Exposed
 
rk1(11)= -m13*I3-m23*I3+m31*I1+m32*I2+(sigma*E3 -gamma*I3 -alpha*I3-d*I3); %Infected
 
rk1(12)= (gamma*I3 -delta*R3 -d*R3-m13*R3-m23*R3+m31*R1+m32*R2);%Recovered

rk1=rk1(:);
end