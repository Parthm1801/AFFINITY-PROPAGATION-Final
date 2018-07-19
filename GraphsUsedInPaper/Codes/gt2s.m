x = [0:.05:6];
sigma1 = 0.5;
mu1=3;
normpdf1 = 1/(sigma1*sqrt(2*pi)) * exp(-(x-mu1).^2/(2*sigma1^2));
h=area(x/6,normpdf1/0.8);
set(h, 'FaceColor', [1 0 0]);