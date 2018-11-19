function I = hybridImage(im1, im2, sigma1, sigma2)
%fspecial('gaussian', hsize, sigma)
red1 = im1(:, :, 1);
green1 = im1(:, :, 2);
blue1 = im1(:, :, 3);
red2 = im2(:, :, 1);
green2 = im2(:, :, 2);
blue2 = im2(:, :, 3);
hsize1 = 6*sigma1+1;
hsize2 = 6*sigma2+1;
C = cat(3, filter2(red1, fspecial('gaussian', hsize1, sigma1), 'same'), filter2(green1, fspecial('gaussian', hsize1, sigma1), 'same'), filter2(blue1, fspecial('gaussian', hsize1, sigma1), 'same'));
D = cat(3, filter2(red2, fspecial('gaussian', hsize2, sigma2), 'same'), filter2(green2, fspecial('gaussian', hsize2, sigma2), 'same'), filter2(blue2, fspecial('gaussian', hsize2, sigma2), 'same'));
size(D)
size(im2)
D = im2 - D;
I = C + D;
end

