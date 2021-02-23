%
%
clc
clearvars
close all

% init
global u gamma delta ops options d c dt_mpc rm uM

% Initialize Parameters
rm = 0;
options = optimoptions('quadprog','Display','off');
u = sdpvar(1);
gamma = sdpvar(1);
delta = sdpvar(1);
T  = 1;         % Simulation time
dt = 0.001;      % Discretization time
dt_mpc = 0.2;    % MPC discretization time
uM= 25;
useLowLevel  = 1; % 1 for low level active and 0 for low level non-active
constrActive = 1; % 1 for constraint on \theta and 0 for unconstrained case
d = 0.6;  % Parameter that defines the set \mathcal D_i
c = 0.005; % Parameter that defines the set \mathcal E_i
% Pick Initial Condition
x0    =  -1.0;
v0    =   0.0;
phi0  =   0.1;
dotphi0=  0.3;
% Initialize Linear Dyanmics (continous time from small angle approzimation)
Alinear =[0                     1              0  0;
    0   (11.5+68.4)/(-23.7)    9.8/(-23.7)  0;
    0                     0              0  1;
    0 (-58.8-234.5)/(-23.7)  -208.3/(-23.7) 0];

Blinear =[0;
    12.8/23.7;
    0;
    -47.9/23.7;];


% Initialize MPC and Barrrier parameters
Q  = diag([10,0.001,0.00001,0.00001]);
Qf = 10*diag([100,100,100,200]);
Qe = 100;
R = 0.001;
N = 25;

n = size(Q,2);
m = size(R,2);

% System Matrices Converted in Discrete Time
sys = ss(Alinear,Blinear,eye(n),0);
sysd=c2d(sys,dt_mpc);
[Alin,Blin,Clin,Dlin]=ssdata(sysd);

xPred = zeros(size(Q,2),N+1);


% Compute Constraint Tightening
% Q_e = diag(xmax, vmax, phimax, dotphimax)
xmax      = 0.2;
vmax      = 0.1;
phimax    = 0.01;
dotphimax = 0.1;

% Compute the propagation for the vx, phi, dotphi (the position is
% independent!)
[K_small,~,~] = dlqr(Alin(2:end,2:end),Blin(2:end),eye(3),1);
K = [0, K_small];
Astable = Alin(2:end,2:end) - Blin(2:end)*K_small;
Alin_small = Astable; % pick 3X3 matrix

bVector = [vmax; phimax; dotphimax];

% Initialize Constraint Sets
if constrActive == 1
    state_cnstr = [10;
        5;
        0.3;
        10*pi];
else
    state_cnstr = [10;
        5;
        2*pi;
        10*pi];
end

MPC_cnstr = 15;

Xtot = Polyhedron([eye(n); -eye(n)], [state_cnstr; state_cnstr]);
U = Polyhedron([eye(m); -eye(m)], [MPC_cnstr; MPC_cnstr]);
C = Polyhedron([eye(n); -eye(n)], [c*ones(n,1); c*ones(n,1)]);

X = Xtot - C;

% Matrices Used To Compute Evolution of the Nominal Model
sys = ss(Alinear,Blinear,eye(n),0);
sysd=c2d(sys,dt);
[A_int,B_int,C_int,D_int]=ssdata(sysd);


% cost matrices
Qdiag = diag(Q);
Qfdiag = diag(Qf);
Rdiag = diag(R);
costMatrices=[Qdiag', Qfdiag', Rdiag'];

% Simulation Loop
mpcCounter = dt_mpc/dt;
time = zeros(mpcCounter,1); % simulation time
x_cl  = [x0; v0; phi0; dotphi0]; % set initial conditions
timeIndex = 1;

sol_method = 0; % 0 for quadprog, 1 for gurobi
uMPC = zeros(mpcCounter,1);
xn_cl = zeros(4,mpcCounter);
uBarrier = zeros(mpcCounter,1);
gamma1 = zeros(mpcCounter,1);
h = zeros(mpcCounter,1);
V = zeros(mpcCounter,1);
u1 = zeros(mpcCounter,1);
mpc_timer = 0;
ops = sdpsettings('verbose',0,'solver','gurobi','cachesolvers',1);
z_goal = [];
t_goal = [];
x_plan = [];
t_plan = 0;

while (time(end) <= T)
    
    if mpcCounter == dt_mpc/dt % every dt_mpc compute MPC solution
        time(timeIndex)/dt_mpc
        mpcCounter = 0
        [uMPC(timeIndex), xPred, uPred] = FTOCP(x_cl(:,timeIndex), Alin, Blin, X, U, N, Q, R, Qf, zeros(4,1), K);%, X_constrTightening, U_constrTightening);
        xn_cl(:,timeIndex) = xPred(:,1);
        mpc_timer = 0;
        tspan=[0 dt_mpc];
        [t_MPC,x_MPC]=ode45(@(t, x) sysDyn_lin(t,x,uMPC(timeIndex), Alinear, Blinear),tspan, xn_cl(:,timeIndex));
        x_MPC_fut = x_MPC(end,:)';
        % variables for 3D plot
        z_goal = [z_goal, x_MPC_fut];
        t_goal = [t_goal, time(timeIndex)];
        x_plan = [x_plan; x_MPC];
        t_plan = [t_plan; t_plan(end) + t_MPC];
    else
        uMPC(timeIndex) = uMPC(timeIndex - 1);
        if timeIndex == 1
            x_MPC_fut = xPred(:,1);
        end
    end
    % compute barrier
    if timeIndex>1
        [uBarrier(timeIndex), h(timeIndex), V(timeIndex),gamma1(timeIndex)] = CBF(x_cl(:,timeIndex), xn_cl(:,timeIndex), uMPC(timeIndex), vmax, dotphimax, xmax, phimax,uBarrier(timeIndex-1), x_MPC_fut,sol_method);
    else
        [uBarrier(timeIndex), h(timeIndex), V(timeIndex),gamma1(timeIndex)] = CBF(x_cl(:,timeIndex), xn_cl(:,timeIndex), uMPC(timeIndex), vmax, dotphimax, xmax, phimax,0, x_MPC_fut,sol_method);
    end
    u1(timeIndex) = useLowLevel * uBarrier(timeIndex) + uMPC(timeIndex);
    
    % integrate system
    tspan=[0 dt];
    [~,NextStates]=ode45(@(t, x) sysDyn(t,x,u1(timeIndex)),tspan, x_cl(:,timeIndex));
    x_cl(:,timeIndex + 1) = NextStates(end,:)';
    
    % integrate nominal system
    xn_cl(:,timeIndex + 1) = A_int * xn_cl(:,timeIndex) + B_int * uMPC(timeIndex);
    
    
    % update time
    time(timeIndex+1) = time(timeIndex) + dt;
    mpc_timer = mpc_timer+dt;
    timeIndex = timeIndex + 1;
    mpcCounter = mpcCounter + 1;
    if norm(x_cl(:,timeIndex))<0.01
        break
    end
    if x_cl(3,end)>1.25
        break
    end
    
end

% Plotting
figure
subplot(5,1,1)
plot(time, x_cl(1,:),'-o')
hold on
plot(time, xn_cl(1,:),'-rs')
xlim([0 T])
ylabel('x')
subplot(5,1,2)
plot(time, x_cl(2,:),'-o')
hold on
plot(time, xn_cl(2,:),'-rs')
xlim([0 T])
ylabel('v')
subplot(5,1,3)
plot(time, x_cl(3,:),'-o')
hold on
plot(time, xn_cl(3,:),'-rs')
xlim([0 T])
ylabel('phi')
subplot(5,1,4)
plot(time, x_cl(4,:),'-o')
hold on
plot(time, xn_cl(4,:),'-rs')
xlim([0 T])
ylabel('dotphi')
subplot(5,1,5)
hold on
plot(time(1:end-1), uBarrier,'-o')
plot(time(1:end-1), uMPC,'-rs')
plot(time(1:end-1), u1,'-k*')
xlim([0 T ])
ylabel('u')


figure
subplot(2,1,1)
plot(time(1:end-1), h,'-o')
xlim([0 T])
ylabel('h')
subplot(2,1,2)
plot(time(1:end-1), V,'-o')
xlim([0 T])
ylabel('V')

figure
hold on
plot(time(1:end-1), uBarrier,'-o')
plot(time(1:end-1), uMPC,'-rs')
plot(time(1:end-1), u1,'-k*')
xlim([0 T ])
ylabel('u')

figure
mu = 2;
k = 0.33;
a = mu*k/(1-k)/dt_mpc;
gamma1(1) = gamma1(2);

plot(time(1:end-1), gamma1/2/a,'linewidth',3)

