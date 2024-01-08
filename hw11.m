H = @(w) (1j*10.*w)/((1j.*w+1)*(1j.*w+10))
w = linspace(1,100);
bode(H(w))