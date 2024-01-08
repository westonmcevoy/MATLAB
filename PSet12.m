
f = @(v,avg) ((pi*v)/(2*(avg)^2)).*exp((-pi/4).*(v/avg).^2);

v = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26];

for avg = 5:9
    f(v,avg)
end

ray = [.188,.289,.388,.475,.548];
CF = [.209,.297,.384,.471,.558];
avg = [5,6,7,8,9];

hold on;
plot(avg,ray,'^b')
plot(avg,CF,'or')
ylabel("Capacity Factor")
xlabel("Average Wind Speed(m/s)")
legend("Rayleigh CF","CF")
axis([5 9 0 .6])