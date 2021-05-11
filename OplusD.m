%generate orange-labeled images
clear;clc;close all
addpath('.\photos')%contains predicted labels and corresponding original images in validation set
%this is for one kind of parameter setting; create new folders to save pre-labels from different paramter settings
for i = 1:54
    [fid, errmsg] = fopen(['img_' num2str(i) '.png'], 'r');
    if contains(errmsg,'No such file or directory')
        continue;
    else
        img = imread(['img_' num2str(i) '.png']);
        mask = imread(['label_' num2str(i) '.png']);
        f = zeros(size(img));
        for j = 1:size(img,1)
            for k = 1:size(img,2)
                if mask(j,k) == 0;
                    f(j,k,:) = [0,0,0];
                else
                    f(j,k,:) = [255,70,0]; % define mask color（RGB）
                end
            end
        end
        curt = 0.3*img+0.9*uint8(f);
%         imshow(curt)
        imwrite(curt,[num2str(i) '_original.png']);
    end
end
