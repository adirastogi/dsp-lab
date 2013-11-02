% Numerical computation of DTFT using DFT

k = 0:15
x = cos(2*pi*k*3/16)
X= fft(x)
XE = fft(x,512)

L = 0:511;
plot(L/512,abs(XE))
hold
stem(k/16,abs(X))
title('Magnitude Response')
xlabel('Normalized angular freq')
ylabel('Magnitude')
