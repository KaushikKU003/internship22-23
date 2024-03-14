%USing threshold
image_rgb=imread('hello.jpg');
image_r=image_rgb(:,:,1);
image_g=image_rgb(:,:,2);
image_b=image_rgb(:,:,3);
grayImage=0.2989*image_r+0.5870*image_g+0.1140*image_b;
threshold=122;
BinImage=grayImage>threshold;
imshow(BinImage)