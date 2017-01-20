%http://www.mathworks.se/help/images/examples/correcting-nonuniform-illumination.html?s_eid=PSM_5532
%
%The aim of illumination correction is to remove uneven illumination of the image caused by sensor defaults (eg., vignetting), 
%non uniform illumination of the scene, or orientation of the objects surface.
function [outputImage] = illumination(inputImage)
    I = inputImage;
    
    %Convert image to greyscale
    I = rgb2gray(I);
	
    %Invert image
    I = imcomplement(I);
	
    %Calculates the morphological opening and subtracts it from the original image.
    I2 = imtophat(I,strel('disk',15));
	
    %Increases the image contrast                 
    I3 = imadjust(I2);
    I4 = imcomplement(I3);
    
    outputImage = I4;
end