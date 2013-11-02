clear all; 
close all; 
rp=input('enter the pass band ripple'); 
rs=input('enter the stop band ripple'); 
fp=input('enter the pass band ferquency'); 
fs=input('enter the stop band frequency'); 
f=input('enter the sampling frequency'); 
wp=2*fp/f; 
ws=2*fs/f; 
num=-20*log10(sqrt(rp*rs))-13; 
dem=14.6*(fs-fp)/f; 
n=ceil(num/dem);
n1=n+1; 
if (rem(n,2)~=0); 
n1=n; 
n=n-1; 
end 
y=rectwin(n1); 
b=fir1(n,wp,y); 
[h,omega]=freqz(b,1,256); 
m=20*log10(abs(h)); 
plot(omega/pi,m);
title('IIR filter magnitude response')
xlabel('\omega/\pi')
ylabel('Magnitude Response(dB)')
