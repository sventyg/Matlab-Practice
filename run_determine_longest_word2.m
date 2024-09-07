%% Audio Processing

% Clear workspace
clear; close all; clc;

% Read an audio file
[my_audio,fs]=audioread('my_sentence.wav');

% word this
word_this=my_audio(14310:19050);

% word is
word_is=my_audio(22240:29100);

% word really
word_really=my_audio(33470:41110);

% Word fun 
word_fun=my_audio(46210:51370);

%% Time Domain

% Duration of the words
time_duration_this=length(word_this)/fs;

time_duration_is=length(word_is)/fs;

time_duration_really=length(word_really)/fs;

time_duration_fun=length(word_fun)/fs;

% Duration of the audio
time_duration=length(my_audio)/fs;

% Time
time=linspace(0,time_duration,length(my_audio));

% Time indices
time_idx=find(time>2 & time<5);
extracted_audio=my_audio(time_idx);

%Print longest word
fprintf('Longest word is really \n');
fprintf('The duration equaled %0.3f seconds\n',time_duration_really);

