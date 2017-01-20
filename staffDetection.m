%Returns a matrix of n*5 elements, where n is the number of staffs.
function staffs = staffDetection(input)
    [h, w] = size(input); 

    input = bwmorph(input,'erode');
	
    f = [-1 0 1];
    derivative = abs(imfilter(input, f, 'circular'));
    
    %Projects everything on the horizontal plane
    projectedDerivative = horProj(derivative);
    projectedInput = horProj(input == 0);
    
    linePoints = max(projectedInput-10*projectedDerivative, 0);
    [peaks, locations] = findpeaks(linePoints, 'MINPEAKHEIGHT', 0.1, 'MINPEAKDISTANCE', 2);
    
    %Iterate over possible upper lines
    first = 1;
    last = length(locations) - 4;
    weights = zeros([last, 1]);
    staffs = [];
    lastIndex = 0;
    
    for i = first:last
        distances = locations(i:i+3) - locations(i+1:i+4);
        diff = sum(abs(distances(2:4) - distances(1:3)));
        
        %Calculate product of all five line points
        weights(i) = prod(peaks(i:i+4));
        
        %Sum of difference cannot be smaller than 10 pixels.
        if (diff < 10)
            notOverlapping = lastIndex+4 < i;
            
            if (lastIndex == 0 || notOverlapping)
                staffs = cat(1, staffs, zeros([1, 5]));
            end
            
            [row, ~] = size(staffs);
            
            if (lastIndex == 0 || notOverlapping || weights(i) > weights(lastIndex))
                staffs(row,:) = locations(i:i+4)';
                lastIndex = i;
            end
        end
    end
end
