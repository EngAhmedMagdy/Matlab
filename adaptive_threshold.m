clear
i = imread('mri.tif')
average_filter = fspecial('average',[15 15]);
mean_image = imfilter(i,average_filter)
subtract = i - mean_image

bw = im2bw(subtract,0)

subplot(2,2,1)
imshow(x)
subplot(2,2,2)
imhist(x)
subplot(2,2,3)
imshow(bw)
subplot(2,2,4)
imhist(bw)
