binDir = 'ME_Bin';
imgFiles = dir(fullfile(binDir, '*.jpg'));

allCounts = zeros(length(imgFiles), 512);

for i = 1:length(imgFiles)
    binImg = imread(fullfile(binDir, imgFiles(i).name));
    
    rowCount = sum(binImg, 2);
    
    colCount = sum(binImg, 1)';
    
    mergedCount = [rowCount; colCount];
    
    allCounts(i, :) = mergedCount';
end

csvwrite('merged_counts.csv', allCounts);