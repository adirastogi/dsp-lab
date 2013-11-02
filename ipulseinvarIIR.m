%impulse invariance filter

clear all; 
close all; 
rp=input('enter the pass band ripple(in dB)\n'); 
rs=input('enter the stop band ripple(In dB)\n'); 
fp=input('enter the pass band ferquency\n'); 
fs=input('enter the stop band frequency\n'); 
f=input('enter the sampling frequency\n'); 

wp=2*fp/f; 
ws=2*fs/f;

[N,Wn] = buttord(wp,ws,rp,rs,'s');
[b,a] = butter(N,Wn,'s');
[bz,az] = impinvar(b,a,f);
[h,omega] = freqz(bz,az);

plot(omega/pi,20*log10(abs(h)));
xlabel('\omega/\pi');
ylabel('Magnitude Response(dB)');
title('IIR butterworth LPF');



