clc;
clear all;


fs=1000;
Ts=1/fs;
dt=0:Ts:2-Ts;
f1=10

y1=5+2*cos(2*pi*f1*dt-90)+3*cos(4*pi*f1*dt);

figure
plot(dt,y1)



nfft=length(y1)
nfft2=2^nextpow2(nfft);
ff=fft(y1,nfft2);
figure
plot(abs(ff));


