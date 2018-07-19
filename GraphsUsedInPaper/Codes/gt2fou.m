
x = [0:.05:6];
% Create the x Gaussian distribution
sigma1 = 1;
mu1=3;
normpdf1 = 1/(sigma1*sqrt(2*pi)) * exp(-(x-mu1).^2/(2*sigma1^2));
% Create the y Gaussian distribution
sigma2 = 2;
mu2=3;
normpdf2 = 1/(sigma2*sqrt(2*pi)) * exp(-(x-mu2).^2/(2*sigma2^2));

height = 1; % height in Z direction is the same for all points

for i=1:length(normpdf1)

    len = normpdf2(i)/2;
    mu3=normpdf1(i);
    sigma3=normpdf2(i)/10;
    k=[normpdf1(i)- len:0.005:normpdf1(i)+ len];
    normpdf3 = 1/(sigma3*sqrt(2*pi)) * exp(-(k-mu3).^2/(2*sigma3^2));
    xdata = x(i)*ones(length(normpdf3));
    ydata = k;
    zdata = normpdf3/max(normpdf3);

    patch('Xdata',(xdata)/6, 'Ydata',ydata/0.45, 'Zdata',zdata, 'FaceColor', 'red')
ylim([0 1])
    %hold on
end
