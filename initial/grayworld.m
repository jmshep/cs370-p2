function [L, C] = grayworld(I)
red = I(:, :, 1);
green = I(:, :, 2);
blue = I(:, :, 3);
s = size(red);
s = s(1) * s(2);
Rave = sum(sum(red)) / s;
Gave = sum(sum(green)) / s;
Bave = sum(sum(blue)) / s;
for i = 1:size(red, 1)
    for j = 1:size(red, 2)
        red(i ,j) = red(i, j) * (128 / Rave);
        green(i ,j) = green(i, j) * (128 / Gave);
        blue(i ,j) = blue(i, j) * (128 / Bave);
    end
end
L = [Rave / 128, Gave / 128, Bave / 128];
C = cat(3, red, green, blue);
%imshow(C);
end

