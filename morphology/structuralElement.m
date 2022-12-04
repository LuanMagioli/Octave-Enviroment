function EE = structuralElement(type)
    switch type
        case 'square'
            EE = [1 1 1; 
                  1 1 1; 
                  1 1 1];
        case 'cross'
            EE = [0 1 0; 
                  1 1 1; 
                  0 1 0];
        case 'vertical_line'
            EE = [0 1 0; 
                  0 1 0; 
                  0 1 0];
        case 'horizontal_line'
            EE = [0 0 0; 
                  1 1 1; 
                  0 0 0];
        case 'rhombus'
            EE = [0 1 1 1 0; 
                  1 1 1 1 1; 
                  1 1 1 1 1; 
                  1 1 1 1 1; 
                  0 1 1 1 0];
        otherwise
        fprintf('Error, no such shape is found! Try again!\n')
    end
