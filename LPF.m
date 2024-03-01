[filename,pathname] = uigetfile('*.*','Select the input audio');
[x,Fs] = audioread(num2str(filename));

Fsf = 44100;
Fp = 8e3;
Fst = 8.4e3;
Ap = 1;
Ast = 95;

df=designfilt('lowpassfir','PassbandFrequency',Fp,'StopbandFrequency',Fst,'PassbandRipple',Ap,'StopbandAttenuation',Ast,'SampleRate',Fsf);

fvtool (df);
xn=awgn(x,15,'measured');
y=filter(df,xn);
subplot(3,1,1)
plot(x);
title 'Original Signal';
subplot(3,1,2)
plot(xn);
title 'Noisy Signal'; 
subplot(3,1,3)
plot(y);
title 'Filtered Signal';


sound(y,Fs);

