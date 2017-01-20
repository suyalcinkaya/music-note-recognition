function p = pitch(x, topLine, bottomLine)
    lineHeight = (bottomLine - topLine) / 8;
    p = round((bottomLine - x)/lineHeight);
	pFromA1 = p + 4;
    moddedPitch =  mod(pFromA1, 7);
    p = char('a' + moddedPitch);
end

