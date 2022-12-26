 
x = imread("camera_man.jpg");
bw = im2bw(x);
8
minf = @(x) min(x(:));
test = minf(x)
min_image = nlfilter(bw,[3 3],minf);
maxf = @(x) max(x(:));
max_image = nlfilter(bw,[3 3],maxf);

subplot(2,1,1);
imshow(min_image);
title("min_image");
subplot(2,1,2);
imshow(max_image);
title("max_image");




