%% run_jumble_words

% Clear workspace
clear; close all; clc;

% Read an audio file
[my_audio,fs]=audioread('my_sentence.wav');
new_audio=my_audio(:,1);

%Play audio file
soundsc(new_audio,fs);
pause(7);

%Visualize Indices
figure;
plot(new_audio);
xlabel('Indices');
ylabel('Amplitude');

% word this
word_this=new_audio(14310:19050);

% word is
word_is=new_audio(22240:29100);

% word really
word_really=new_audio(33470:41110);

% Word fun 
word_fun=new_audio(46210:51370);

jumbled=[word_really;word_this;word_is;word_fun];
soundsc(jumbled,fs);
pause(5);

%Jumbled plot
figure;
plot(jumbled);
xlabel('Indices');
ylabel('Amplitude');

% save it as a wave file
audiowrite('jumbled_sentence.wav',jumbled,fs);
