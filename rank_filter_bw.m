
clear
x = imread("camera_man.jpg");
bw = im2bw(x);
max_fil = ordfilt2(bw,9,ones(3));
min_fil = ordfilt2(bw,1,ones(3));
subplot(2,1,1);
imshow(min_fil);
title("noisy");
subplot(2,1,2);
imshow(max_fil);
title("fixed");


