image=imread("hello.jpg");
image_gray=im2gray(image);
image_bin=imbinarize(image_gray);
imshow(image_bin)

subplot(3, 1, 1);
imshow(image);
title('Original RGB');

subplot(3, 1, 2);
imshow(image_gray);
title('Grayscale');

subplot(3, 1, 3);
imshow(image_bin);
title('Binary');