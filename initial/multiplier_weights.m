function [t, g] = multiplier_weights()
turquoise = [0.2896; 0.8862; 0.7471];
goldenrod = [0.8567; 0.6874; 0.1408];
R = Tristimulus_theory();
Ri = R.^-1;
t = Ri*turquoise
g = Ri*goldenrod
end