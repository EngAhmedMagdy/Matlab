clear 
x = imread('mri.tif');

sobel_edge = edge(x ,'sobel',0.1,'horizontal')

subplot(2,2,1)
imshow(x)
subplot(2,2,2)
imhist(x)
subplot(2,2,3)
imshow(sobel_edge)
subplot(2,2,4)
imhist(sobel_edge)