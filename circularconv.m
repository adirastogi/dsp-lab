%circular conv of two length n seq 
%computed by forming product of their dfts
%and then applying n-pt idft 

x = input('enter x\n');
h = input('enter h\n');

X = fft(x)
subplot(2,2,1)
stem(x)
title('sequence x')
H = fft(h)
subplot(2,2,2)
stem(h)
title('sequence h')

Y = X.*H
y = ifft(Y)
subplot(2,2,[3,4])
stem(y)
title('sequence y')
