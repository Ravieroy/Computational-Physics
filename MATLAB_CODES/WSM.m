clear all
clc

%Parameters 
t1 = 1;
t_so = 1;
a = 3.13;

KPOINTS = load("KPOINT");
k1 = KPOINTS(:,1,:);
k2 = KPOINTS(:,2,:);
k3 = KPOINTS(:,3,:);

M = length(KPOINTS);
%Matrix Entries 

N1 = t_so * sin(k1 * a);
N2 = t_so * sin(k2 * a);
N3 = t_so * sin(k3 * a);
N0 = -2 * t1 * (cos(k1 * a) + cos(k2 * a) + cos(k3 * a));

sigma_x = [0,1;1,0];
sigma_y = [0,-1j;1j,0];
sigma_z = [1,0;0,-1];
I = [1,0;0,1];
%Pre-allocation
E = nan(M,2);

%hamiltonian
for i = 1:M
            
            N0_t = N0(i);
            N1_t = N1(i);
            N2_t = N2(i);
            N3_t = N3(i);
            
            H = N0_t * I + N1_t * sigma_x + N2_t * sigma_y + N3_t * sigma_z;
            E(i,:) = eig(H);
            
end

plot(E(:,1),'LineWidth',2.0)
hold on
plot(E(:,2),'LineWidth',2.0)
xticks([0,64,128,192,256,320,384,448])
xticklabels({'\Gamma','M1','M2','M3','X1','X2','X3','R'})
grid on
ylabel('Energy')
title('Weyl Excitations at High Symmetry Points')
subtitle('PRB.92.161110')