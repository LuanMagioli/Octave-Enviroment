function im = contraste(im)
    minValue = min(min(im));
    maxValue = max(max(im));
    im = 255 * (double(im - minValue)./double(maxValue-minValue));
    im = uint8(im);
endfunction