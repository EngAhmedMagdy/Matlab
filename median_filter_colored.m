clear

i = imread("me.jpg");
N = imnoise(i,'salt & pepper',0.5);

R = N(:,:,1)
G = N(:,:,2)
B = N(:,:,3)


red_channel = medfilt2(R,[3 3]);
green_channel = medfilt2(G,[3 3]);
blue_channel = medfilt2(B,[3 3]);

noise_free = cat(3,red_channel,green_channel,blue_channel);

subplot(2,2,1);
imshow(i);
title("orginal");
subplot(2,2,2);
imshow(N);

title("after noise");
subplot(2,2,3);
imshow(noise_free);
imwrite(noise_free,"me_fil.jpg")
title("after median filter");
