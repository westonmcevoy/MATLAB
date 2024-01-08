close all
 
 
%s = tf('s');

 R = .1;
 L = 10*10^-6;
 C = 160*10^-6;
 

 
s = tf('s');
wz = 1/(R*C)
wp = 1/((L*C)^(1/2))

Zo = ((1+(s/wz))*s*L)/(1+(s/(1/(R*C)))+(s/wp)^2)

Rs = 1
RL = .03
Vb = 12
VM = 1
fp = 50
wp = 2*pi*fp
Gm = .865
wl = 72971.46


Tu = ((Rs*Vb)/(RL*VM))*(1/(1+(s/wp)))
G = (1/Rs)*(Tu/(1+Tu))
Gc = Gm*(1+(wl/s))
T = Tu*Gc


bode(T)
 
%G = -4*(1+(s/1000))/((1+(s/100))*(1+(s/400000)+((s^2)/(25*10^8))))
%bode(G)
