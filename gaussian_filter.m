clear
i = imread("camera_man.jpg");
N = imnoise(i,'salt & pepper',0.05);
gaussin_f = fspecial("gaussian",3,1)
gaussin_f_free = imfilter(N,gaussin_f)
subplot(2,2,1);
imshow(i);
title("orginal");
subplot(2,2,2);
imshow(N);
title("after noise");
subplot(2,2,3);
imshow(gaussin_f_free);
title("after gaussian filter");
