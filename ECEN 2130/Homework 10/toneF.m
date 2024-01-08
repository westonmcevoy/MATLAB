function w = toneF(fs,note,instrument)
oct = note.octave;
T = note.duration;
t = 1/fs:1/fs:T;
w = 0;
    switch note.semitone
        case 'A'
            smt = 0;
        case 'A#'
            smt = 1;
        case 'B'
            smt = 2;
        case 'C'
            smt = 3;
        case 'C#'
            smt = 4;
        case 'D'
            smt = 5;
        case 'D#'
            smt = 6;
        case 'E'
            smt = 7;
        case 'F'
            smt = 8;
        case 'F#'
            smt = 9;
        case 'G'
            smt = 10;
        case 'G#'
            smt = 11;
        case '-1'
            w = zeros(length(t),1);
    end
f = 440*2^oct*2^(smt/12);
%% e
a = f/(1/T);
b = round(a);
c = (1/T)*round(a);
w = w + sin(2*pi*f*t);
if nargin > 2
    h = instrument.harmonics;
    for n = 1:length(h)
        w = w + h(n)*sin((1+n)*2*pi*f*t);
    end
    w = w.*instrument.envelope(t);
end
end