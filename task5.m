image_rgb=imread('without_subejct.jpg');
image_r=image_rgb(:,:,1);
image_g=image_rgb(:,:,2);
image_b=image_rgb(:,:,3);
allBlack = zeros(size(image_rgb, 1), size(image_rgb, 2), 'uint8');
just_red = cat(3, image_r, allBlack, allBlack);
just_green = cat(3, allBlack, image_g, allBlack);
just_blue = cat(3, allBlack, allBlack, image_b);
subplot(2,2, 1);
imshow(image_rgb);
title('Original Image');
subplot(2,2, 2);
imshow(just_red);
title('Red channel');
subplot(2,2, 3);
imshow(just_green);
title('Red channel');
subplot(2,2, 4);
imshow(just_blue);
title('Red channel');
