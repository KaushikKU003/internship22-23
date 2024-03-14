final_bin_img = imread("Output_Folder/15_binary.png");
[rows,cols] = size(final_bin_img);
subsampleSize = 10;
numberrows = floor(rows/subsampleSize);
numbercols = floor(cols/subsampleSize);
counts = cell(numberrows, numbercols);
for i = 1:numberrows
    for j = 1:numbercols
        subMatrix = final_bin_img((i-1)*subsampleSize+1:i*subsampleSize,(j-1)*subsampleSize+1:j*subsampleSize);
        count = sum(subMatrix(:) == 1);
        counts{i, j} = count;
        csvFileName = sprintf('SubImage_%d_%d.csv', i, j);
        csvwrite(csvFileName,count);
    end
end