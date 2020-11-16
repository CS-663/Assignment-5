%% MyMainScript

tic;
%% Your code here
[U,V] = meshgrid(-100:100);
H = -4+(exp(-1j*2*pi*U/201) + exp(1j*2*pi*U/201) + exp(-1j*2*pi*V/201) + exp(1j*2*pi*V/201));
absH = log(abs(H)+1);

figure;
imshow(absH, [min(absH(:)) max(absH(:))]);
impixelinfo;
colormap('jet');
colorbar;

figure;
surf(absH);
shading('interp');
colorbar;

H = 8-(exp(-1j*2*pi*U/201) + exp(1j*2*pi*U/201) + exp(-1j*2*pi*V/201) + exp(1j*2*pi*V/201) + ...
       exp(-(1j*2*pi*U + 1j*2*pi*V)/201) + exp((1j*2*pi*U + 1j*2*pi*V)/201) + ...
       exp((-1j*2*pi*U + 1j*2*pi*V)/201) + exp((1j*2*pi*U - 1j*2*pi*V)/201));
absH = log(abs(H)+1);

figure;
imshow(absH, [min(absH(:)) max(absH(:))]);
impixelinfo;
colormap('jet');
colorbar;

figure;
surf(absH);
shading('interp');
colorbar;

toc;
