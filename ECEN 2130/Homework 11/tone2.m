function w = tone2(fs,note,instrument)
oct = note.octave;
T = note.duration;
t = 1/fs:1/fs:T;
w = 0;
for i = 1:length(oct)
    smt1 = cell2mat(note.semitone);
    smt2 = smt1(i);
    switch smt2
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
    %% a
    if smt2 ~= '-1'
        f = 440*2.^oct(i)*2^(smt/12);
        w = w + sin(2*pi*f*t);
    end
end
%% b
if nargin > 2
    if smt2 ~= '-1'
        h = instrument.harmonics;
        for n = 1:length(h)
            w = w + h(n)*sin((1+n)*2*pi*f*t);
        end
        %% c
        w = w.*instrument.envelope(t);
    end
end
end



