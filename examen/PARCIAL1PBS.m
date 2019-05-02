clc;
clear all;


fs=4;
Ts=1/fs;
dt=0:Ts:100;
f1=1;
f2=2;


y1=5+2*cos(2*pi*dt-90*f1)+3*cos(2*pi*dt*f2);

figure(1)
plot(dt,y1)



nfft=length(y1)
nfft2=2^nextpow2(nfft);
ff=fft(y1,nfft2);
figure(2)
plot(abs(ff));


