clear
i = imread("camera_man.jpg");

lap_f = fspecial("laplacian")
lap_f_free = imfilter(i,lap_f)

subplot(2,2,1);
imshow(i);
title("orginal");
subplot(2,2,2);
imshow(lap_f_free);
title("after gaussian filter");
subplot(2,2,3);
imshow(lap_f_free);
title("after nonlinear med filter");