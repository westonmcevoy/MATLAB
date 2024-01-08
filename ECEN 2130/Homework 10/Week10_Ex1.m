clear

T  = 0.5;
fs = 2^(13);

note.octave = 0;
note.semitone = 'A';
note.duration = T;

w = tone(fs,note);

sound(w);
pause(1);

%% a
mary;
%% b
song = [];
for i = 1:length(script)
    w = tone(fs,script(i));
    song = [song w];
end

%% c
sound(song,fs)