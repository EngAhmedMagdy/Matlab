x = imread("Text_bef.jpg");
N = imnoise(x,'salt & pepper',0.1);
imshow(N);
red_c = N(:,:,1);
green_c = N(:,:,2);
blue_c = N(:,:,3);

red_c = ordfilt2(red_c,15,zeros(5));
green_c = ordfilt2(green_c,15,ones(5));
blue_c = ordfilt2(blue_c,15,ones(5));
F = cat(3,red_c,green_c,blue_c);

subplot(2,1,1);
imshow(N);
title("noisy");
subplot(2,1,2);
imshow(F);
title("fixed");


