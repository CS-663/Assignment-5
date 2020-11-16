%% MyMainScript

tic;
%% Your code here

% Normal translated rectangles
I = make_I();
figure;
imshow(I);
colorbar;
impixelinfo;

J = make_J();
figure;
imshow(J);
colorbar;

[cps, cps_log] = crossPowerSepectrum(I,J);
figure;
imagesc(cps_log);
colorbar;

C = ifft2(cps);
figure; 
imshow(C/max(C(:)));
colorbar;
impixelinfo;

% Rectangles with noise
I = noise(make_I());
figure;
imshow(I);
impixelinfo;
colorbar;

J = noise(make_J());
figure;
imshow(J);
colorbar;

[cps, cps_log] = crossPowerSepectrum(I,J);

figure;
imagesc(cps_log);
colorbar;

C = ifft2(cps);
figure; 
imshow(C/max(C(:)));
colorbar;
impixelinfo;

toc;
