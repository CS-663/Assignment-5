%% MyMainScript

tic;
%% Load input image
input_img = load('../data/image_low_frequency_noise.mat').Z;
imagesc(input_img);
title('Original image');
daspect([1 1 1]);
axis tight;
colormap('gray');

%% Log absolute value of fft of input
shifted_ft_img = fftshift(fft2(input_img));
ft_img_logabs = log(abs(shifted_ft_img));
figure;
imagesc(ft_img_logabs);
title('Log Fourier transform of the image');
daspect([1 1 1]);
axis tight;
colormap('jet');
impixelinfo;

%% Notching the noise frequencies
% got this using impixelinfo
shifted_ft_img(114:124, 119:129) = 0;  % masking the noise
shifted_ft_img(134:144, 129:139) = 0;  % masking the noise
figure;
imagesc(log(abs(shifted_ft_img)));
title('Log Fourier transform after applying Notch filter');
daspect([1 1 1]);
axis tight;
colormap('jet');

%% Denoised image
denoised_img = ifft2(ifftshift(shifted_ft_img));
figure;
imagesc(denoised_img);
title('Denoised - Image');
daspect([1 1 1]);
axis tight;
colormap('gray');
%%
toc;