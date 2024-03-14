binDir_ME = 'ME_Bin';

imgFiles_ME = dir(fullfile(binDir_ME, '*.jpg'));  
numZones = 256 / 32;

allCounts_ME = zeros(length(imgFiles_ME), numZones^2+1);

for i = 1:length(imgFiles_ME)
    binImg = imread(fullfile(binDir_ME, imgFiles_ME(i).name));
    
    zoneIndex = 1;
   
    for row = 1:32:256
        for col = 1:32:256
            zone = binImg(row:row+31, col:col+31);
            
            count = sum(zone(:));
            
            allCounts_ME(i, zoneIndex) = count;
            
            zoneIndex = zoneIndex + 1;
        end
    end
    allCounts_ME(i, end) = 1;
end

binDir_Thushar = 'Thushar_Bin';

imgFiles_Thushar = dir(fullfile(binDir_Thushar, '*.jpg'));
allCounts_Thushar = zeros(length(imgFiles_Thushar), numZones^2+1);

for i = 1:length(imgFiles_Thushar)
    binImg = imread(fullfile(binDir_Thushar, imgFiles_Thushar(i).name));
    zoneIndex = 1;
   
    for row = 1:32:256
        for col = 1:32:256
            zone = binImg(row:row+31, col:col+31);
            
            count = sum(zone(:));
            
            allCounts_Thushar(i, zoneIndex) = count;
            
            zoneIndex = zoneIndex + 1;
        end
    end
    allCounts_Thushar(i, end) = 2;
end

binDir_Soochak = 'Soochak_Bin';

imgFiles_Soochak = dir(fullfile(binDir_Soochak, '*.jpg'));
allCounts_Soochak = zeros(length(imgFiles_Soochak), numZones^2+1);

for i = 1:length(imgFiles_Soochak)
    binImg = imread(fullfile(binDir_Soochak, imgFiles_Soochak(i).name));
    zoneIndex = 1;
   
    for row = 1:32:256
        for col = 1:32:256
            zone = binImg(row:row+31, col:col+31);
            
            count = sum(zone(:));
            
            allCounts_Soochak(i, zoneIndex) = count;
            
            zoneIndex = zoneIndex + 1;
        end
    end
    allCounts_Soochak(i, end) = 3;
end

binDir_Shaman = 'Shaman_Bin';

imgFiles_Shaman = dir(fullfile(binDir_Shaman, '*.jpg'));
allCounts_Shaman = zeros(length(imgFiles_Shaman), numZones^2+1);

for i = 1:length(imgFiles_Shaman)
    binImg = imread(fullfile(binDir_Shaman, imgFiles_Shaman(i).name));
    zoneIndex = 1;
   
    for row = 1:32:256
        for col = 1:32:256
            zone = binImg(row:row+31, col:col+31);
            
            count = sum(zone(:));
            
            allCounts_Shaman(i, zoneIndex) = count;
            
            zoneIndex = zoneIndex + 1;
        end
    end
    allCounts_Shaman(i, end) = 4;
end

% Concatenate the results for both folders
allCounts = [allCounts_ME; allCounts_Thushar;allCounts_Soochak;allCounts_Shaman];

% Write the counts to a new CSV file
csvwrite('zone_counts_FE_1_4combi.csv', allCounts);
