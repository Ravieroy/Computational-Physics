% Reference Paper: Weyl and Dirac semimetals in three-dimensional solids
% N. P. Armitage, E. J. Mele, and Ashvin Vishwanath
% Rev. Mod. Phys. 90, 015001
% page: 6

clear;
close all;
clc

% parameters 
m = 0.5;
b = 1;
bp = 0;
v =1;

%ranges 
x = -pi : pi/16 : pi; % x from -pi tp pi with dE separation
y = -pi : pi/16 : pi;
z = -pi : pi/16 : pi;
% z = zeros(1,length(x));

M = length(x);
[kx,ky,kz] = meshgrid(x,y,z);


%Pauli Matrices

sigma_x = [0,1;1,0];
sigma_y = [0,-1j;1j,0];
sigma_z = [1,0;0,-1];
I = [1,0;0,1];

%Hamiltonian elements 

a11 = m .* I + b .* sigma_z + bp .* sigma_x;
a22 = -m .*I + b .*sigma_z - bp .*sigma_x;

E = nan(M,M,M,4);

for i = 1:M
	for j = 1:M 
        for k = 1:M
            
            sigma_dot_k = sigma_x .* kx(i,j,k) + sigma_y .* ky(i,j,k) + sigma_z .* kz(i,j,k);
            
            H = [a11,sigma_dot_k; ...
                    sigma_dot_k,a22]; 
                
                E(i,j,k,:) = eig(H);
            
            
        end
    end 
end
% 

figure(1); 
surf(y,z,squeeze(E(17,:,:,1)),'facealpha',.5,'edgecolor','none');
hold on
surf(y,z,squeeze(E(17,:,:,2)),'facealpha',.5,'edgecolor','none');
surf(y,z,squeeze(E(17,:,:,3)),'facealpha',.5,'edgecolor','none');
surf(y,z,squeeze(E(17,:,:,4)),'facealpha',.5,'edgecolor','none');
hold off
xlabel('y')
ylabel('z')
zlabel('Energy')