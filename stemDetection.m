%Returns a matrix of n*5 elements, where n is the number of staffs.
function stemsImage = findStems(noLinesImage, lines)
    noLinesImage = 1 - noLinesImage;
    lineDist = mean(mean(lines(:,2:5) - lines(:, 1:4)));
    opened = imopen(noLinesImage, ones(round(2.2*lineDist), 1)); 
    stemsImage = 1 - opened;
end
