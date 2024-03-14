image_test12 = imread("20_Images/4.jpg");
grayscaleImage_12 = rgb2gray(image_test12);
binaryImage_12 = imbinarize(grayscaleImage_12);
numForegroundPixels = sum(binaryImage_12(:)==1);
numBackgroundPixels = numel(binaryImage_12) - numForegroundPixels;
fprintf('Number of foreground pixels: %d\n', numForegroundPixels);
fprintf('Number of background pixels: %d\n', numBackgroundPixels);
