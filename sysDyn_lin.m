function [ dxdt ] = sysDyn_lin( t, x, u, A, B )
% System dynamics: x(1) = x, x(2) = v, x(3) = phi, x(4) = \dot phi              
dxdt = A*x + B*u;

end

