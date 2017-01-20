function[verticalProjection] = vertProj(image)
    [h, ~] = size(image);
    verticalProjection = sum(image, 1)/h;
end


