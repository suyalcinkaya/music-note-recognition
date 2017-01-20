function [BWImage] = thresh(inputImage)
    threshold = graythresh(inputImage);
    BWImage = im2bw(inputImage, threshold);
end

