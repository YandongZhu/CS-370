function [Y, drop] = Compress(X, tol)
    [h,w] = size(X);
    G = zeros(h, w);
    
    dropCount = 0;
    
    for width = 1:8:w
        for height = 1:8:h
            
            f = X(height:(height+7),width:(width+7));
            F = fft2(f);
            % check if the point is valid or not
            checkValid = (abs(F) >= tol);
            % set the point to 0 if it is less than tolerance
            FApply = checkValid .* F;
            G = ifft2(FApply);
            
            dropCount = dropCount + sum(sum(1-checkValid));
            
            Y(height:(height+7),(width:width+7)) = G;
        end
    end
    drop = dropCount / (w*h);
end