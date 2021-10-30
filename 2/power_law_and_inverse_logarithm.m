clc;
close all;
clear all;

row = 2;
col = 2;
img = imread('E:\DIP\2\SourceImage.jpg');

% subplot(row,col,1);
% imshow(img);
% title('Grayscale Image');

img_d = im2double(img);
subplot(row,col,1);
imshow(img_d);
title('Double valued Grayscale Image');

impixelinfo;


[rr,cc] = size(img_d);

s_log = zeros(rr,cc);
s_pow = zeros(rr,cc);         % Why double?
s_neg = zeros(rr,cc);         % Why uint8?

r = img_d;
C = 2;
L = 256;

for i = 1:rr
    for j = 1:cc
        s_log(i,j) = C*log(1+r(i,j));
        s_pow(i,j) = C*r(i,j)^2;
        s_neg(i,j) = (L-1)-img(i,j);
    end
end

s_log = 255*s_log;
s_log = uint8(s_log);

s_pow = 255*s_pow;
s_pow = uint8(s_pow);

s_neg = uint8(s_neg);

subplot(row,col,2);
imshow(s_log);
title('Log Transformation Result: ');

subplot(row,col,3);
imshow(s_pow);
title('Power Law Transformation Result: ');

subplot(row,col,4);
imshow(s_neg);
title('Inverse Logarith Result: ');
impixelinfo;

% x = zeros(rr,cc);
% x =255*(r);
% 
% y = zeros(rr,cc);
% y = 255*(s_pow);
% 
% subplot(row,col,4);
% plot(x,y);