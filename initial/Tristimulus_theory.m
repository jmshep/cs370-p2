function R = Tristimulus_theory()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
F1 = [ 0.00, 0.01, 0.01, 0.02, 0.01, 0.02, 0.07, 0.29, 0.35, 0.12 ];
F2 = [ 0.00, 0.01, 0.02, 0.11, 0.20, 0.25, 0.21, 0.10, 0.01, 0.00 ];
F3 = [ 0.03, 0.10, 0.25, 0.27, 0.13, 0.02, 0.01, 0.01, 0.00, 0.00 ];
Sr = [ 0.16, 0.26, 0.28, 0.15, 0.10, 0.03, 0.02, 0.00, 0.00, 0.00 ];
Sg = [ 0.00, 0.00, 0.04, 0.23, 0.34, 0.23, 0.15, 0.01, 0.00, 0.00 ];
Sb = [ 0.00, 0.00, 0.00, 0.00, 0.01, 0.04, 0.08, 0.23, 0.35, 0.29 ];
R = [cross(F1, Sr), cross(F2, Sr), cross(F3, Sr); cross(F1, Sg), cross(F2, Sg), cross(F3, Sg); cross(F1, Sb), cross(F2, Sb), cross(F3, Sb)];
end
function c = cross(f, s)
c = 0;
for m = 1:10
    c = c + (f(m)*s(m));
end
end
