%%This code plots the Reproduction number vs migration parameter for COVID
%%paper

clc;clear all;
alpha=0.02; gamma= 0.124; d= 3.95*10^-5;sigma= 0.192; A= 10; %beta= 0.005;
m12=0.1; m21= 0.1;
% m13=0.25; 
m31=0.1;
m23=0.1; m32=0.1;
m13=0.1:0.001:1;
% 
% m12=0.02; m21= 0.15;
% % m13=0.05; 
% m31=0.25;
% m23=0.05; m32=0.15;
beta=[0.005,0.05, 0.01];
for j= 1:length(beta)
    
for i= 1: length(m13)
S10= (A/(m21+m31+d));
S20= (A/(m12+m32+d));
S30= (A/(m13(i)+m23+d));

T=[0 beta(j)*S10 0 0 0 0; 0 0 0 0 0 0; 0 0 0 beta(j)*S20 0 0; 0 0 0 0 0 0; 0 0 0 0 0 beta(j)*S30; 0 0 0 0 0 0 ];

a11= -(sigma+d+m21+m31);
a12= 0;
a13= m12;
a14= 0;
a15(i)=m13(i);
a16=0;

a21= sigma;
a22= -(gamma+ alpha+d+m21+m31);
a23= 0;
a24= m12;
a25=0;
a26(i)=m13(i);

a31= m21;
a32= 0;
a33= -(sigma+d+m12+m32);
a34= 0;
a35=m23;
a36=0;

a41= 0;
a42= m21;
a43= sigma;
a44= -(gamma+ alpha+d+m12+m32);
a45=0;
a46=m23;

a51= m31;
a52= 0;
a53= m32;
a54= 0;
a55(i)=-(sigma+d+m13(i)+m23);
a56=0;

a61= 0;
a62= m31;
a63= 0;
a64= m32;
a65=sigma;
a66(i)=-(gamma+ alpha+d+m13(i)+m23);

E= [a11 a12 a13 a14 a15(i) a16; a21 a22 a23 a24 a25 a26(i); a31 a32 a33 a34 a35 a36;...
    a41 a42 a43 a44 a45 a46; a51 a52 a53 a54 a55(i) a56; a61 a62 a63 a64 a65 a66(i)];

InvE= inv(E);

KL= -T*InvE ;

eigenvalues = eig(KL);

R0(i,j)= max(eigenvalues);
end
end

plot(m13, R0(:,1),'b-','LineWidth',2)
xlabel({'Migration Rate';' (m_{13})'})
ylabel({'Reproduction Number';'(R_0) '})
legend('For \beta= 0.005','FontSize',12,'Location','southeast')
% xlim([0 1])
hold on
axes('Position',[.49 .49 .4 .4])
box on
plot(m13, R0(:,2),'k-.','LineWidth',2)
xlabel({'Migration Rate (m_{13})'})
ylabel({'Reproduction Number';'(R_0) '})
legend('For \beta= 0.05','FontSize',12,'Location','best')
i=gcf;
%exportgraphics(i,'R0_m13_inset.eps')

figure
plot(m13, R0(:,3),'k-.','LineWidth',2)
xlabel({'Migration Rate (m_{13})'})
ylabel({'Reproduction Number';'(R_0) '})

