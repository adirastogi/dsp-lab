clear all; 
close all; 
rp=input('enter the pass band ripple(in dB)\n'); 
rs=input('enter the stop band ripple(In dB)\n'); 
fp=input('enter the pass band ferquency\n'); 
fs=input('enter the stop band frequency\n'); 
f=input('enter the sampling frequency\n'); 

wp=2*fp/f; 
ws=2*fs/f;

[N,Wn] = buttord(wp,ws,rp,rs);
[b,a] = butter(N,Wn);
[h,omega] = freqz(b,a);
subplot(2,2,1);
plot(omega/pi,20*log10(abs(h)));
xlabel('\omega/\pi');
ylabel('Magnitude Response(dB)');
title('IIR butterworth LPF');

[N,Wn] = cheb1ord(wp,ws,rp,rs);
[b,a] = cheby1(N,rp,Wn);
[h,omega] = freqz(b,a);
subplot(2,2,2);
plot(omega/pi,20*log10(abs(h)));
xlabel('\omega/\pi');
ylabel('Magnitude Response(dB)');
title('IIR Cheby 1 LPF');

[N,Wn] = cheb2ord(wp,ws,rp,rs);
[b,a] = cheby2(N,rs,Wn);
[h,omega] = freqz(b,a);
subplot(2,2,3);
plot(omega/pi,20*log10(abs(h)));
xlabel('\omega/\pi');
ylabel('Magnitude Response(dB)');
title('IIR Cheby 2 LPF');

[N,Wn] = ellipord(wp,ws,rp,rs);
[b,a] = ellip(N,rp,rs,Wn);
[h,omega] = freqz(b,a);
subplot(2,2,4);
plot(omega/pi,20*log10(abs(h)));
xlabel('\omega/\pi');
ylabel('Magnitude Response(dB)');
title('IIR elliptic LPF');

