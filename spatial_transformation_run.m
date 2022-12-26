I = imread("A_black.jpg");
x = spatial_transformation(I,'rotate',90,'bilinear','crop',[100 100 300 300],2,'nearest');
x = spatial_transformation(x,'crop',90,'bilinear','crop',[100 100 300 300],2,'nearest');
x = spatial_transformation(x,'resize',90,'bilinear','crop',[100 100 300 300],2,'nearest',[550 550]);

subplot(2,1,1)
imshow(I)
title("orginal")
subplot(2,1,2)
imshow(x)
imwrite(x,"after_tans.png")
title("after transoformation")
