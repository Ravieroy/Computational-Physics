clc, close all, clear all
timerange= 0:0.5:360;
N01=10^8;N02=10^7;
% IC= [N01-1001, 1000, 1, 0, N02/2, N02/4, N02/4, 0];%initial conditions(S1,E1,I1,R1,S2,E2,I2,R2)
IC= [N01-1001, 1000, 1, 0, N02-1001, 1000, 1, 0];
[t,y] =ode45(@(t,y) fn(t,y),timerange, IC);

%----Infected Population------
plot(t,y(:,3),'r','LineWidth',1.5)
hold on
plot(t,y(:,7),'r--','LineWidth',1.5) 
hold on
grid off
xlabel('Time (in days)')
ylabel({'Infected';' population '})
legend('City-1','City-2','FontSize',12)
xticks([15 30 45 60 75 90 105 120 135 150])
xticklabels({'L_1','30','L_2', '60', 'L_3', '90','L_4', '135' 'L_5' '150'})
% grid on
i=gcf;
% exportgraphics(i,'infected_mig_0.01_0.eps')
% exportgraphics(i,'infected_mig_0.05_0.05.eps')
% exportgraphics(i,'infected_mig_0.1_0.05.eps')
% exportgraphics(i,'punc_lock.eps')
figure
%------Exposed Population----
plot(t,y(:,2),'b','LineWidth',1.5)
hold on
plot(t,y(:,6),'b--','LineWidth',1.5) 
hold on
grid off
xlabel('Time (in days)')
ylabel({'Exposed';' population '})
legend('City-1','City-2','FontSize',12)
xticks([15 30 45 60 75 90 105 120 135 150])
xticklabels({'L_1','30','L_2', '60', 'L_3', '90','L_4', '135' 'L_5' '150'})
% e=gcf;
% exportgraphics(e,'exposed_mig.eps')
figure
%-----Suceptible Population---
plot(t,y(:,1),'m','LineWidth',1.5)
hold on
plot(t,y(:,5),'m--','LineWidth',1.5) 
hold on
grid off
xlabel('Time (in days)')
ylabel({'Susceptible';' population '})
legend('City-1','City-2','FontSize',12)
xticks([15 30 45 60 75 90 105 120 135 150])
xticklabels({'L_1','30','L_2', '60', 'L_3', '90','L_4', '135' 'L_5' '150'})
% s=gcf;
% exportgraphics(s,'recovered_mig.eps')
figure
%-----Recovered Population------
plot(t,y(:,4),'g','LineWidth',1.5)
hold on
plot(t,y(:,8),'g--','LineWidth',1.5) 
hold on
grid off
xlabel('Time (in days)')
ylabel({'Recovered';' population '})
legend('City-1','City-2','FontSize',12,'Location','best')
xticks([15 30 45 60 75 90 105 120 135 150])
xticklabels({'L_1','30','L_2', '60', 'L_3', '90','L_4', '135' 'L_5' '150'})
r=gcf;
% exportgraphics(r,'recovered_mig_0.01_0.eps')
% exportgraphics(r,'recovered_mig_0.05_0.05.eps')
% exportgraphics(r,'recovered_mig_0.1_0.05.eps')


max(y(:,3))

max(y(:,7))
function rk1 =fn(t,y)

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

% if I1>=1000 &&  I2>=1000
%     eta1=1;
%     eta2=0.5;
%     m12=0.02;
%     m21= 0.01;
% else
%     eta1=0.05;
%     eta2=0.025;
%     m12= 0.5;
%     m21= 0.05;
% 
% end
if t<20 %Normalcy
    eta1=0.05;
    eta2=0.025;
    m12=0.75;
    m21= 0.25;
    
elseif 20<=t & t<30
    eta1=0.9;
    eta2=0.5;
    m12=0.05;
    m21= 0.02;
    
 elseif 30<=t & t<50
    eta1=0.05;
    eta2=0.025;
    m12=0.75;
    m21= 0.25;
    
     
 elseif 50<=t & t<60
    eta1=0.9;
    eta2=0.5;
    m12=0.05;
    m21= 0.02;
    
    
  elseif 60<=t & t<80
    eta1=0.05;
    eta2=0.025;
    m12=0.75;
    m21= 0.25;
    
    
  elseif 80<=t & t<90
    eta1=0.9;
    eta2=0.5;
    m12=0.05;
    m21= 0.02;
    
  elseif 90<=t & t<110
    eta1=0.05;
    eta2=0.025;
    m12=0.75;
    m21= 0.25;
    
    
  elseif 110<=t & t<120
    eta1=0.9;
    eta2=0.5;
    m12=0.05;
    m21= 0.02;
    
    
   elseif 120<=t & t<140
    eta1=0.05;
    eta2=0.025;
    m12=0.75;
    m21= 0.25;
    
  elseif 140<=t & t<150
    eta1=0.9;
    eta2=0.5;
    m12=0.05;
    m21= 0.02
    
%    elseif 150<=t & t<170
%     eta1=0.05;
%     eta2=0.025;
%     m12=0.75;
%     m21= 0.25;
%     
%     elseif 170<=t & t<180
%     eta1=0.9;
%     eta2=0.5;
%     m12=0.05;
%     m21= 0.02
%     
%     elseif 180<=t & t<200
%     eta1=0.05;
%     eta2=0.025;
%     m12=0.75;
%     m21= 0.25;
%     
%     elseif 200<=t & t<210
%     eta1=0.9;
%     eta2=0.5;
%     m12=0.05;
%     m21= 0.02
%     
%     elseif 210<=t & t<230
%     eta1=0.05;
%     eta2=0.025;
%     m12=0.75;
%     m21= 0.25;
%     
%     elseif 230<=t & t<240
%     eta1=0.9;
%     eta2=0.5;
%     m12=0.05;
%     m21= 0.02
%     
%     elseif 240<=t & t<260
%     eta1=0.05;
%     eta2=0.025;
%     m12=0.75;
%     m21= 0.25;
%     
%     elseif 260<=t & t<270
%     eta1=0.9;
%     eta2=0.5;
%     m12=0.05;
%     m21= 0.02
    
    
else t>=150
    eta1=0.05;
    eta2=0.025;
    m12=0.75;
    m21= 0.25;
    
end



% eta1=0.75;
% eta2=0.25;
% 
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
