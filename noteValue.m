function values = noteValue(flagPositions, img, lineDist)
    [h, ~] = size(flagPositions);
	
    values = zeros(h, 1);
    
    [height, width] = size(img);
    img = max(zeros(height, width), img);
    img = img/max(max(img));
    
    for i = 1:h
       y1 = round(max(flagPositions(i,1), 1));
       y2 = round(min(flagPositions(i,2), height));
       
       x1 = round(max(flagPositions(i,3) - lineDist/2, 1));
       x2 = round(min(flagPositions(i,3), width));
       
       projection = horProj(img(y1:y2,x1:x2));
       warning off;
       [pks,leftLocs] = findpeaks(projection, 'MINPEAKDISTANCE', 4, 'MINPEAKHEIGHT', 0.2);
       warning on;
       
       x1 = round(max(flagPositions(i,3), 1));
       x2 = round(min(flagPositions(i,3) + lineDist/2, width));
       
       projection = horProj(img(y1:y2,x1:x2));
	   
       warning off;
       [pks,rightLocs] = findpeaks(projection, 'MINPEAKDISTANCE', 4, 'MINPEAKHEIGHT', 0.2);
       warning on;
       
       nFlags = max(length(leftLocs), length(rightLocs));
       if (nFlags == 1)
           values(i) = 8;
       elseif(nFlags == 2)
           values(i) = 16;
       else
           values(i) = 4;
       end
    end
end

