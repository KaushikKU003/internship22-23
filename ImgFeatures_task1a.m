srcDir = 'ME';
rgbDir = 'ME_RGB';
grayDir = 'ME_Gray';
binDir = 'ME_Bin';
imgFiles = dir(fullfile(srcDir, '*.jpg'));
for i = 1:length(imgFiles)
    img = imread(fullfile(srcDir, imgFiles(i).name));
    resizedRGB = imresize(img, [256 256]);
    grayImg = rgb2gray(resizedRGB);
    
    binImg = imbinarize(grayImg);
    newRGBName = sprintf('rgb_original_resized%d_.jpg', i);
    newGrayName = sprintf('gray_original%d_.jpg', i);
    newBinName = sprintf('bin_original%d_.jpg', i);
    
    imwrite(resizedRGB, fullfile(rgbDir, newRGBName));
    
    imwrite(grayImg, fullfile(grayDir, newGrayName));
    
    imwrite(binImg, fullfile(binDir, newBinName));
end