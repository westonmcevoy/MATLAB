
%% a
T  = 0.5;
fs = 2^(13);
note.octave = 0;
note.semitone = 'A';
note.duration = T;

pure.harmonics = [0.6 0.4 0.2];
pure.envelope = @(t) 1;
%% b
w = tone(fs,note,pure);
W = fft(w/length(w));

%% c
freq = 0:1/T:fs-1/T;
stem(freq,abs(W))
title('Middle A')
axis([0 fs 0 1])

fs-440
% There is a frequency(fs-440) of equal magnitude for each frequency
% plotted
%% d
note.octave = 0;
note.semitone = 'E';
note.duration = T;

w = tone(fs,note,pure);
W = fft(w/length(w));

freq = 0:1/T:fs-1/T;
figure(2);
subplot(1,2,1)
stem(freq,abs(W))
title('Middle E')
axis([0 fs 0 1])

% Results are not as clean as middle a since frequency is much much higher

%% f
w = toneF(fs,note,pure);
W = fft(w/length(w));

freq = 0:1/T:fs-1/T;
subplot(1,2,2)
stem(freq,abs(W))
title('Middle E Adjusted Freq')
axis([0 fs 0 1])

% Difference is hard to appreciate

%% g
mary2;

w = tone2(fs,script(2),pure);
W = fft(w/length(w));

freq = 0:1/T:fs-1/T;
figure(3);
stem(freq,abs(W))
title('Second Note of Mary2')
axis([0 fs 0 1])