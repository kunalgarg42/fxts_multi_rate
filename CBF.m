function [ uBarrier,h, Vout,gamma_out] = CBF( X, Xn, uMPC, vmax, dotphimax, xmax, phimax,u_old,xPred,sol_method)
% This function computes the low-level controller using fixed-time barrier
% function
global u gamma delta ops options d c dt_mpc rm uM

% X - current closed-loop state x(t)
% Xn - current state of the reference trajectory z(t)
% xPred - last reference point (z(i-1)T)
% uMPC - high-level policy um 

% Extract States
x = X(1);      xn = Xn(1);
v = X(2);      vn = Xn(2);
phi = X(3);    phin = Xn(3);
dotphi = X(4); dotphin = Xn(4);


% Lyap function parameters
cost_factor = 1; %to scale V
vcost = cost_factor*10.0;
dotphicost = cost_factor*10.0;
xcost = cost_factor*1.0;
phicost = cost_factor*10.0;

% Sys dynamcis
dxdt_f = [v;
    (cos(phi) * ( -1.8*(uMPC) + 11.5*v + 9.8*sin( phi ) ) - 10.9*(uMPC) + 68.4*v - 1.2*dotphi^2*sin(phi) ) / ( cos(phi) - 24.7 );
    dotphi;
    ( ( 9.3*(uMPC) - 58.8*v )*cos(phi) + 38.6*(uMPC) - 234.5*v - sin(phi) * (208.3 + dotphi^2*cos(phi)) ) / (cos(phi)^2 - 24.7);
    vn;
    (11.5+68.4)/(-23.7)*vn + 9.8/(-23.7)*phin + 12.8/23.7*uMPC;
    dotphin;
    (-58.8-234.5)/(-23.7)*vn - 208.3/(-23.7)*phin - 47.9/23.7*uMPC];

dxdt_g = [0;
    (cos(phi) * ( -1.8) - 10.9) / ( cos(phi) - 24.7 );
    0;
    ( ( 9.3)*cos(phi) + 38.6) / (cos(phi)^2 - 24.7);
    0;
    0;
    0;
    0];



% Barrier (to monitor ||x(t)-z(t)||)
h = 1 - (phi - phin)^2/phimax^2 - (v - vn)^2/vmax^2 - (x - xn)^2/xmax^2 - (dotphi - dotphin)^2/dotphimax^2;

% Lyap

xn = xPred(1);
vn = xPred(2);
phin = xPred(3);
dotphin = xPred(4);

V = dotphicost*(dotphi - dotphin)^2 + phicost*(phi - phin)^2 + vcost*(v - vn)^2 + xcost*(x - xn)^2-1/2*c^2;
if V<0
    V = 0;
end

dvdx =[          xcost*(2*x - 2*xn)
    vcost*(2*v - 2*vn)
    phicost*(2*phi - 2*phin)
    dotphicost*(2*dotphi - 2*dotphin)
    0
    0
    0
    0];

mu = 2;
k = 0.33;
T = dt_mpc;
a = mu*k/(1-k)/T;
rbar = ((d^2-c^2)/2)^(1/mu)/k;
rm = rbar/2 + 1/rbar;
dm = 2*a*rm;
m1 = 10;
m2 = 1;

if sol_method == 0
    Q = [1 0 0; 0 m1 0; 0 0 m2];
    F = [0 m1 m2];
    if V>0
        Aineq = [
            dvdx'*dxdt_g -V 0; %% FxT CLF constraint LHS
%             dvdx'*dxdt_g -1 0; %% ES CLF constraint LHS
            1 0 0;
            -1 0 0
            0 1 0];
        
        Bineq = [
            -dvdx'*dxdt_f-a*(V^1.5+V^0.5); %% FxT CLF constraint RHS
%             -dvdx'*dxdt_f-a*V; %% ES CLF constraint RHS
            uM - uMPC;
            uM + uMPC;
            10000*dm];
        [u_opt] = quadprog(Q, F, Aineq, Bineq,[],[],[],[],[u_old 0 0],options);
        if isempty(u_opt)
            0
        end
        uBarrier = u_opt(1);
        gamma_out = u_opt(2)-dm;
    else
        Aineq = [
            dvdx'*dxdt_g -1 0; %% Forward-invariance of E_i LHS
            1 0 0;
            -1 0 0
            0 1 0];
        
        Bineq = [
            0   %% Forward-invariance of E_i RHS
            uM - uMPC;
            uM + uMPC;
            10000*dm];
        [u_opt] = quadprog(Q, F, Aineq, Bineq,[],[],[],[],[u_old 0 0],options);
        if isempty(u_opt)
            0
        end
        uBarrier = u_opt(1);
        gamma_out = u_opt(2)-dm;

    end    
    
elseif sol_method == 1

    cost = 1*u*u + m1*gamma^2 +2*m1*gamma+ m2*delta^2 +2*m2*delta; %- 200*u*u_old;
    
    %     constraints
    constraint = [dvdx'*dxdt_f +  dvdx'*dxdt_g*u<= gamma*V-a*(V^1.5+V^0.5);
        u <= factor_u*vmax;
        u >= -factor_u*vmax];
    %     solve QP
    if V > 0.00001
        %,'usex0',0);
        solution = solvesdp(constraint,cost,ops);
        
        if solution.problem ~= 0
            errorNotFeasible = 1
            uBarrier = u_old;
        else
            uBarrier = double(u);
        end
        gamma_out = double(gamma)-dm;
    else
        gamma_out = 0;
        uBarrier = u_old;
    end
end

Vout = V;


end

