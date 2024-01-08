clear
clc
close all
%% a
fs = 2^13;
T = 0.5;

piano.harmonics = [0.5 0];
piano.envelope = @(t) min(40*t,1).*exp(-4*t);

%% b
mary2;
mar2 = [];
for i = 1:length(script)
    w = tone2(fs,script(i),piano);
    mar2 = [mar2 w];
end

happy;
hap = [];
for i = 1:length(script)
    k = tone2(fs,script(i),piano);
    hap = [hap k];
end

z = mar2+hap;

t = (1:length(z))/fs;
plot(t,z)

sound(z,fs)
tic

%% c
t_start = 0;
t = (1:length(z))/fs;
snew = [];
figure(2);
for  i = 1:length(script)
    T = script(i).duration;
    
    z1 = z((t>t_start) & (t<=t_start+T));
    
    f = 0:1/T:fs-1/T;
    Z = fft(z1/length(z1));
    
    stem(f,abs(Z))
    hold on
    
    Z((f>880) & (f<fs-880)) = 0;
    snew = [snew ifft(Z*length(Z))];
    
    stem(f,abs(Z))
    hold off
    
    pause(0.01)
    
    t_start = t_start+T;
    
    while toc<t_start
    end

end

%% d
sound(snew,fs);