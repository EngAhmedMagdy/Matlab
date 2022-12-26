clear
clc
i = imread("mri.tif")
N = imnoise(i,'salt & pepper',0.05);

med_filter = medfilt2(N)
subplot(2,2,1);
imshow(i);
title("orginal");
subplot(2,2,2);
imshow(N);
title("after noise");
subplot(2,2,3);
imshow(med_filter);
title("after med filter");
