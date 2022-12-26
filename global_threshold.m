clear
x = imread("mri.tif")


lvl = graythresh(x)
new_img = im2bw(x,lvl);


subplot(2,2,1)
imshow(x)
subplot(2,2,2)
imhist(x)
subplot(2,2,3)
imshow(new_img)
subplot(2,2,4)
imhist(new_img)