function outputImage = lineRemoval(image, staffs)
    image = 1 - image;
    dimage = image;
    lines = image;
    
    %All staff lines, no matter which of the five different ones.
    yCoordinates = staffs(:)';
    
    %Distance between lines in one staff
    lineDist = mean(mean(staffs(:,2:5) - staffs(:, 1:4)));
    st = ones(floor(lineDist/2), 1);
    
    new = imopen(image, st);
    outputImage = new;
	
	%figure();
    %imshow(outputImage);
    
    outputImage = 1-outputImage;
end
