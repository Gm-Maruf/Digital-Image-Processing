close all;
clear all;

img = imread('E:\DIP\2\SourceImage.jpg');

img2 = img +50 ;
%figure(1); 
%imshow(img);

%figure(2); 
%imshow(img2);
subplot(2,2,1), imshow(img);
title('Original Image');

subplot(2,2,2), imshow(img2);
title('Enhanced');

