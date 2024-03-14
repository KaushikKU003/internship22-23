imagePath = '20_Images/10.jpg';
image_test=imread(imagePath);
grayscaleImage = rgb2gray(image_test);
binaryImage = imbinarize(grayscaleImage);

outputFolder = 'Output_Folder';
[~, imageName, ~] = fileparts(imagePath);
outputPath = fullfile(outputFolder, [imageName '_binary.png']);
imwrite(binaryImage, outputPath);