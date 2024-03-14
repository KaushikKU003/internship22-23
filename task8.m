folderPath="20_Images";
imageFiles = dir(fullfile(folderPath, '*.jpg'));
numImages = length(imageFiles);
binaryImages = false(30, 30, numImages);
for k = 1:numImages
    fullFileName = fullfile(folderPath, imageFiles(k).name);
    currentImage = imread(fullFileName);
    grayImage = im2gray(currentImage);
    binImage = imbinarize(grayImage,0.5);
    resizedBinImage = imresize(binImage, [30 ,30]);
    binaryImages(:, :, k) = resizedBinImage;
    imshow(currentImage)
    pause(1)
end
figure; 
firstImageRGB = imread(fullfile(folderPath, imageFiles(15).name));
firstImageGray=rgb2gray(firstImageRGB);
firstImageBin=imbinarize(firstImageGray);
subplot(3, 1, 1);
imshow(firstImageRGB);
title('Original RGB Image');
subplot(3,1, 2);
imshow(firstImageBin);
title('Original Bin Image');
subplot(3,1, 3);
imshow(binaryImages(:, :, 15));
title('Binary Image');
allVecotrs=false(numImages,30*30);
for k=1:numImages
    vectorzedImages=reshape(binaryImages(:,:,k),1,[]);
    allVecotrs(k,:)=vectorzedImages;
end
csvwrite('binary_Image_Vector.csv',allVecotrs)