[filename,pathname] = uigetfile('*.*','Select the input audio');
[x,Fs] = audioread(num2str(filename));

n = length(x);
tn = n/Fs;
f = 0.25;
t = linspace(0,tn,n);
d = 100;
modsin = sin(2*pi*f*t);
modsin1 = round(d.*modsin')+d;
y = zeros(n+d,1);
a = 5.5;
xn = padarray(x,[d,0],0,'pre');
for i = (d+1):1:n
    y(i-d,1) = x(i) + a*xn(i - modsin1(i - d));
end

sound(y,Fs);
subplot(3,1,1)
plot(x);
title 'Normal Sound';
subplot(3,1,2)
plot(y);
title 'Flanged Sound';