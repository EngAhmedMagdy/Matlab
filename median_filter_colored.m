clear

i = imread("me.jpg");
N = imnoise(i,'salt & pepper',0.5);


red_channel = medfilt2(N(:,:,1),[3 3]);
green_channel = medfilt2(N(:,:,2),[3 3]);
blue_channel = medfilt2(N(:,:,3),[3 3]);


red_channel = medfilt2(i(:,:,1),[3 3]);
green_channel = medfilt2(i(:,:,2),[3 3]);
blue_channel = medfilt2(i(:,:,3),[3 3]);

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