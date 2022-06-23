clc;clear all;
alpha=0.02; gamma= 0.124; d= 3.95*10^-5;
m21= 0.05; sigma= 0.192; A= 10; beta= 0.25; %m12= 0.05;
m12=0.01:0.01:0.85;

for i= 1:1:length(m12)
    
c12=((alpha+ gamma+d+m12(i))*sigma*(sigma+d+m12(i)));

c32 = sigma* m12(i)* ((alpha+gamma+d+m12(i))+(sigma+d+m21));

c14 = sigma*m21*((alpha+gamma+d+m21)*(sigma+d+m12(i)));

c34 = sigma * ((alpha +gamma+d+m21)*(sigma+d+m21)+m21*m12(i));

Determinant= ((alpha+gamma+d+m12(i))*(alpha+gamma+d+m21)+m12*m21)*((sigma+d+m12(i))*(sigma+d+m21)-m12(i)*m21);

K11(i)= (c12*beta*A)/(m21+d);

K12(i)= (c32*beta*A)/(m21+d);

K21(i)= (c14*beta*A)/(m12(i)+d);

K22(i)= (c34*beta*A)/(m12(i)+d);

K= [K11(i) K12(i); K21(i) K22(i)];

DetK= det(K);

TraceK= trace(K);

R0(i)= 0.5 *(TraceK + sqrt((TraceK^2)- 4* DetK));
end

plot(m12, R0,'k-.','LineWidth',2)
xlabel({'Migration Rate';' (m_{12})'})
ylabel({'Reproduction Number';'(R_0) '})
legend('For m_{21}= 0.05','FontSize',12,'Location','best')
i=gcf;
%exportgraphics(i,'R0_m12.eps')