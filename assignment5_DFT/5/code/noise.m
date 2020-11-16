%% Function to Introduce noise in the image
% https://in.mathworks.com/matlabcentral/answers/253208-add-gaussian-distributed-noise-with-mean-and-variance-to-matrix
function noise_img = noise(img)
    noise_img = img + 20.0*randn(size(img));
end