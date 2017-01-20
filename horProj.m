function[horizontalProjection] = horProj(image)
    [~, w] = size(image);
    horizontalProjection = sum(image, 2)/w;
end