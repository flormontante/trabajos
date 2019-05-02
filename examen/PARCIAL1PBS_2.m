clc;
clear all;
rp=3;
rs=25;
wp=3000;
ws=8000;
fs=60100;
w1=2*wp/fs;
w2=2*ws/fs;
[n,wn]=buttord(w1,w2,rp,rs,'s')

[z,p,k]=butter(n,wn);
[b,a]=zp2tf(z,p,k);
[b,a]=butter(n,wn,'s');
w=0:0.01:pi;
[h,om]=freqs(b,a,w);
m=20*log10(abs(h)); %normalizar


printsys(h,om);%FUNCION TRANSFERENCIA

G=tf(h,om);

plot(om/pi,m);

