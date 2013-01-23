function [ y ] = ex5( x, lx, ux, y, ly, uy )
    subplot(3, 1, 1);
    stem([lx:ux], x);
    
    subplot(3, 1, 2);
    stem([ly:uy], y);
    
    y = conv(x, y);
    subplot(3, 1, 3);
    stem([lx + ly: ux + uy], y);
end

