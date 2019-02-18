clc;
clear;
close all;

haze=imread('data/canyon.png');
haze=double(haze)./255;
tic
dehaze=run_cnn(haze);
toc
imshow(dehaze);
