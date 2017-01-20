close all;

images = {'im1s'; 'im2s'; 'im3s'; 'im4s'; 'im5s'; 'im6s'};
path = 'input_images/';
suffix = '.jpg';
numImages = size(images,1);
numGrid = ceil(sqrt(numImages));

[referenceNames, referenceStrings] = textread(strcat(path, 'references.txt'),'%q %q\n');

for i = 1:numImages
    %Read the image
    fileString = char(strcat(path,images{i},suffix));
    img = im2double(imread(fileString));
	
	%Uncomment to show original image
	%imgResized = imresize(img, 0.33);
	%figure();
	%imshow(imgResized);
	%title(['Original image for ' fileString]);
    
    img = illumination(img);
    
    %Straighten the image
    straightened = straighten(img);
    
    %Threshold the image
    imgThresh = thresh(straightened);
	
	%Uncomment to show thresholded image
	%imgThreshResized = imresize(imgThresh, 0.33);
	%figure();
    %imshow(imgThreshResized);
	%title(fileString);
    
    %Gets the staffs
    lines = staffDetection(imgThresh);
	
	imgThresh = horizontalCrop(imgThresh, lines);
    
	%Uncomment to show lines
    %for y = lines(:)
	%	figure()
    %    plot([0, 1000], [y y], 'r'); hold on;
	%	title(['Lines for ' fileString]);
    %end
    
    %Uncomment to show staffs seperated
    %staffBounds = staffBox(imgThresh, lines);
    %for j = 1:size(lines,1)
	%	imgThreshResized = imresize(imgThresh(staffBounds(j,1):staffBounds(j,2),:), 0.5);
	%	figure()		
	%	imshow(imgThreshResized)
	%	title(fileString);
	%end
        
    noLines = lineRemoval(straightened, lines);
   
    staffs = staffBox(imgThresh, lines);
    [nStaffs, ~] = size(staffs);
    
	outputString = '';   

    for j = 1:nStaffs 
        staffImg = noLines(staffs(j, 1):staffs(j, 2),:);
        staffImgWithLines = imgThresh(staffs(j, 1):staffs(j, 2),:);
        
		[stems, heads, misc] = categorize(staffImg, lines);
        topLine = lines(j, 1) - staffs(j, 1) + 1;
        bottomLine = lines(j, 5) - staffs(j, 1) + 1;
        
		[boxes, heads, flagPositions] = boundingBoxes(stems, heads, lineDist(lines), staffImgWithLines, topLine, bottomLine);
        [nBoxes, ~] = size(boxes);
        values = noteValue(flagPositions, misc, lineDist(lines));
		
        for k = 1:nBoxes
            [nHeads, ~] = size(heads{k});
            for l = 1:nHeads
                y = heads{k}(l, 2);
                p = pitch(y, topLine, bottomLine);
                value = values(k);
                p = upper(p);
                outputString = strcat(outputString, p);
            end
        end
        if (j ~= nStaffs)
            outputString = strcat(outputString, 'n');
        end
    end
        
    imageName = images(i);
    imageReferenceName = imageName(1:end-1);
    
    referenceIndex = 0;
    for j = 1:numel(referenceNames)
        chName = char(imageName);
        if (strcmp(char(referenceNames(j)), chName(1:end-1)))
            referenceIndex = j;
        end
    end
   
    if (referenceIndex) 
       ref = referenceStrings(referenceIndex);
       d = strdist(char(ref), outputString);
       failRate = double(d)/double(length(char(ref)));
       fprintf('%s failed Count: %d fail Rate: %#5.0f \n', chName, d, failRate*100);
       fprintf('ref: %s\n', char(ref));
       fprintf('out: %s\n', char(outputString)); 
    end
end
