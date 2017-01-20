function [staffBounds] = staffBox(BWimg, lines)
    horHist = horProj(BWimg == 0);
    numStaffs = size(lines,1);
    staffBounds = zeros(numStaffs,2);
    
    [h, w] = size(BWimg);
    
    %Loop through all lines
    for i = 1:size(lines,1)
        %Loop to upper bounds
        index = lines(i,1);
        upperBound = 1;
        lowerBound = h;
        
        if (i > 1)
            upperBound = lines(i - 1, 5) + 3*lineDist(lines);
        end
        
        if (i < size(lines))
            lowerBound = lines(i + 1, 1) - 3*lineDist(lines);
        end
        
        while(index > 1)
            index = index - 1;
            %If the y coordinate only has white pixels
            if(horHist(index) == 0 || index < upperBound)
                staffBounds(i,1) = index;
                break;
            end
        end
        
        %Loop to lower bounds
        index = lines(i,end);
        while(index < size(horHist,1))
            index = index + 1;
            %If the y coordinate only has white pixels
            if(horHist(index) == 0 || index > lowerBound)
                staffBounds(i,2) = index;
                break;
            end
        end
    end
end

