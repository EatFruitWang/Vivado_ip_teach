%% 指令
clear;
clc;
close('all');
tic;
%% 參數
fs = 100 * power(10,6);% 採樣頻率100 MHz
dt = 1/fs;% 一個週期的時間
fc = 10.68115234 * power(10,3);% 載波頻率
t  = (0:dt:(1/fc)-dt);% 建立時間線，從0每次+dt時間進行採樣，採樣到載波頻率經過一個週期
%% 建立訊號
y  = sin(2*pi*fc*t);% 建立sine訊號
y1 = cos(2*pi*fc*t);% 建立cosine訊號
%% 輸出圖
plot(t,y);
hold on;
plot(t,y1);
xlim([0,t(end)]);
toc;