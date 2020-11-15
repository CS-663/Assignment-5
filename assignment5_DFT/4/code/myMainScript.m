tic;

D = 40;
img = imread('../data/barbara256.png');
myIdealLPF(D, img);
D = 80;
img = imread('../data/barbara256.png');
myIdealLPF(D, img);

sigma = 40;
img = imread('../data/barbara256.png');
myGaussianLPF(sigma, img);
sigma = 80;
img = imread('../data/barbara256.png');
myGaussianLPF(sigma, img);

toc;