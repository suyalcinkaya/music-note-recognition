function [noteHeads] = noteHeadDetection(imgNoLines, lines)    
    imgNoLines =  1 - (double(imgNoLines) ./ max(max(max(double(imgNoLines)))));
    [h,w] = size(imgNoLines);   

    lineDist = floor(mean(mean(lines(:,2:5) - lines(:, 1:4))));

    %Element for closing
    strClose = strel('ball', round(lineDist/3), 1, 2);
    strClose = strClose.getnhood.*strClose.getheight;
    strClose = imresize(strClose, 'Scale', [1,1]);
    strClose = imrotate(strClose, 45, 'bilinear');
    
    %Element for opening
    strOpen = strel('ball', round(lineDist/2), 1, 2);
    strOpen = strOpen.getnhood.*strOpen.getheight;
    strOpen = imresize(strOpen, 'Scale', [1,1.2]);
    strOpen = imrotate(strOpen, 45, 'bilinear');
	
    morphed = imgNoLines;
    morphed = imtophat(morphed, round(strOpen));
    morphed = imtophat(morphed, round(strOpen));
    
    correlation = imgNoLines - morphed;
    noteHeads = 1 - (correlation./max(max(double(correlation))));
end

