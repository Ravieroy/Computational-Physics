clear;
close all;
clc

a0 = 1.42;
alpha0 = 1;

% Define k range
k = -2*pi/(3*a0):2*pi/(3*49.5*a0):2*pi/(3*a0);

M = length(k);

[x,y] = meshgrid(k);

a = 3*a0/2;
b = sqrt(3)*a0/2;

% compute hk for all pairs of kx and ky
hk = exp(1i*y*a0) + exp(1i*(a*x- b*y)) + exp(-1i*(a*x+ b*y));

% pre-allocate your results matrix
E = nan(M,M,2);

for i = 1:M
	for j = 1:M
		H = -alpha0*[0,hk(i,j);conj(hk(i,j)),0];
		E(i,j,:) = eig(H);
	end
end
figure; 
surf(x,y,E(:,:,1),'facealpha',.5,'edgecolor','none');
surf(x,y,E(:,:,2),'facealpha',.5,'edgecolor','none');

hold on
surf(x,y,-E(:,:,1),'facealpha',.5,'edgecolor','none');
surf(x,y,-E(:,:,2),'facealpha',.5,'edgecolor','none');

view(15,15)