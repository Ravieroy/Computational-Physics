clear all 
clc 
t=1; 
a=1;
s=0:0.02:1; %parameter

%K' -----> Gamma
k_x1=(2*pi/(sqrt(3)*a))*(1-s);
k_y1=(2*pi/(3*a))*(1-s);
E1=t.*sqrt(1+4.*cos((sqrt(3).*a/2).*k_x1).*cos((a/2).*k_y1)+4.*cos((a/2).*k_y1).^2);
plot(E1,'.');
hold on 
plot(-E1,'.');

%Gamma -----> M
k_x2=(2*pi/(sqrt(3)*a))*s;
k_y2=0;
E2=t.*sqrt(1+4.*cos((sqrt(3).*a/2).*k_x2).*cos((a/2).*k_y2)+4.*cos((a/2).*k_y2).^2);
plot(E2,'-');
hold on 
plot(-E2,'-');

%M ------> K

k_x3=(2*pi/(sqrt(3)*a))*(1-s);
k_y3=(4*pi/(3*a))*s;
E3=t.*sqrt(1+4.*cos((sqrt(3).*a/2).*k_x3).*cos((a/2).*k_y3)+4.*cos((a/2).*k_y3).^2);
plot(E3,'o');
hold on 
plot(-E3,'o');

%Collecting all the figures into one
E = [E1 E2 E3];
figure
plot(E)
hold on 
plot(-E)