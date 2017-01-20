function dist = lineDist(lines) 
    dist = mean(mean(lines(:,2:5) - lines(:, 1:4)));
end