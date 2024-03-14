srcDir1 = 'Thushar';
rgbDir1 = 'Thushar_RGB';
grayDir1 = 'Thushar_Gray';
binDir1 = 'Thushar_Bin';
imgFiles = dir(fullfile(srcDir1, '*.jpg'));
for i = 1:length(imgFiles)
    img = imread(fullfile(srcDir1, imgFiles(i).name));
    resizedRGB = imresize(img, [256 256]);
    grayImg = rgb2gray(resizedRGB);
    
    binImg = imbinarize(grayImg);

    newRGBName = sprintf('rgb_t_resized%d_.jpg', i);
    newGrayName = sprintf('gray_t_%d_.jpg', i);
    newBinName = sprintf('bin_t_%d_.jpg', i);
    
    imwrite(resizedRGB, fullfile(rgbDir1, newRGBName));
    
    imwrite(grayImg, fullfile(grayDir1, newGrayName));
    
    imwrite(binImg, fullfile(binDir1, newBinName));
end