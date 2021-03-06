clc;
close all;
clear all;

img = imread('E:\DIP\2\SourceImage.jpg');
img2 = img;
img = rgb2gray(img);
img = imresize(img, [512 512]);

[rows, columns] = size(img);

mask = 240; %3bit mask

%imhist(img);

three_msb_img = img;

for i = 1 : rows
    for j = 1 : columns
        three_msb_img(i,j) = bitand(img(i,j), mask);
    end
end

%imhist(output_img)

difference_image = imabsdiff(img, three_msb_img);


subplot(2,2,1);
imshow(img2);
title('Source Image');

subplot(2,2,2);
imshow(img);
title('Original Image');

subplot(2,2,3);
imshow(three_msb_img);
title('Three MSB image');

subplot(2,2,4);
imshow(difference_image);
title('Difference Image');

