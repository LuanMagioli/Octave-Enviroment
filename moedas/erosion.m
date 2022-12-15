function eroded = erosion(im, EE)
    eroded = im;
    fator = floor(size(EE, 1)/2);
    
    for(i=fator+1:size(im,1)-fator-1)
    for(j=fator+1:size(im,2)-fator-1)
        if(im(i,j)==1)
            viz = im(i-fator:i+fator,j-fator:j+fator);
            flag = false;
            for(x=1: size(EE, 1))
                for(y=1: size(EE, 2))
                    if(EE(x, y) == 1 && viz(x,y) != EE(x,y))
                        flag = true;
                        break;
                    end
                end
                if(flag)
                    break;
                end
            end
            if(flag)
                eroded(i,j) = false;
            end
        end
    end
    end
end