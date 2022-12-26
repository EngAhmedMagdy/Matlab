clear
i = imread("camera_man.jpg");
N = imnoise(i,'salt & pepper',0.1)

av = ones(3)/9;
averg_f = fspecial('average',4);
noise_free = filter2(av,N,"full")/255
subplot(2,2,1);
imshow(i);
title("orginal");
subplot(2,2,2);
imshow(N);
imwrite(N,"saltpaper.jpg");
title("after noise");
subplot(2,2,3);
imshow(noise_free);
title("after mean filter");