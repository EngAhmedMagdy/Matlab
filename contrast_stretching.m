i = imread("low.jpg");
s = imadjust(i,[150/255 240/255],[0 1]);


subplot(2,2,1);
imshow(i);
title("orginal");
subplot(2,2,2);
imshow(s);
title("after stretch");
subplot(2,2,3);
imhist(i);
title("orginal histogram");
subplot(2,2,4);
imhist(s);
title("after filter histogram");