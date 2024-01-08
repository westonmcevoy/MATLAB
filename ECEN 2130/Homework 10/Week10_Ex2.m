
fs = 2^(13);
%% e
piano.harmonics = [.6 .2];
piano.envelope = @(t) min(40.*t,1).*exp(-4.*t);

%% f
mary2;
%% e
song = [];
for i = 1:length(script)
    w = tone2(fs,script(i),piano);
    song = [song w];
end
sound(w(1));

for i = 1:length(script)
    tic
    sound(tone2(fs,script(i)),fs)
    while toc<script(i).duration
    end
end