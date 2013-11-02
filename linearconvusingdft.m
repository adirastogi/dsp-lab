a=[1 6 0 1]
b=[2 2 19 1]
alen=length(a)
blen=length(b)
c=fft(a,alen+blen-1)
d=fft(b,alen+blen-1)
e=c.*d
f=ifft(e)
x=0:length(f)-1
stem(x,f)
