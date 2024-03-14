binDir = 'ME_Bin';

imgFiles = dir(fullfile(binDir, '*.jpg'));  
numZones = 256 / 32;

allCounts = zeros(length(imgFiles), numZones^2);

for i = 1:length(imgFiles)
    binImg = imread(fullfile(binDir, imgFiles(i).name));
    
    zoneIndex = 1;
   
    for row = 1:32:256
        for col = 1:32:256
            zone = binImg(row:row+31, col:col+31);
            
            count = sum(zone(:));
            
            allCounts(i, zoneIndex) = count;
            
            zoneIndex = zoneIndex + 1;
        end
    end
end

csvwrite('zone_counts_ME.csv', allCounts);