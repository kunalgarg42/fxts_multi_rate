
%% TODO: Store these arrays in main.m
% They store different values which we're going to plot later. 
% 
% z_goal, (4 x N) the goal states that we're stabilizing to at the end of
%                 each MPC iteration
% t_goal, (N)     the time stamps for each of the goal states, should just
%                 be T, 2T, 3T, ..., NT
% x_plan, (? x 4) the planned trajectoryectory according to MPC
% t_plan, (? x 4) the time steps of the planned trajectoryectory 
%
%
% change "plot_data.mat" to wherever you stored the data


%% Prep Workspace
clc
% clear all
close all

% load("plot_data_working_2.mat")


% Set Config Defaults 
set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');
set(0, 'defaultAxesFontSize', 12);


%% Plot states 3D 

% Plot settings
T_MAX = 0.3;            % maximum time in 3D plot
FIGURE_WIDTH = 18;      % figure width in inches
FIGURE_HEIGHT = 7;      % figure height in inches
SAVE_FIG = false;       % toggle save figure (turn off because this takes some time!)
PLOT_RM = false;        % toggle rm plotting
global PLOT_ZI;
PLOT_ZI = false;       % toggle z_i spheres


% Find indeces from T_MAX 
i_max = max(find(time <= T_MAX));
i_max_plan = max(find(t_plan <= T_MAX));
i_max_mpc = max(find(t_goal<= T_MAX));
V = -V;

%% Plot 3D trajectoryectory 

% Generate figure and set background to white 
fig = figure('units', 'inch', 'position', [0.2, 0.2, FIGURE_WIDTH, FIGURE_HEIGHT])
set(gcf, 'color', 'w') 

% Small plots: 
% subplot(2,5,2)  % Lyapunov Function
%     plot(time(1:end-1), V, 'linewidth', 2)
%     title("$h_i$", "Interpreter", "latex")
%     xticklabels(["0T","", time(end)/dt_mpc + "T"])
%     xlabel('t', 'Interpreter', 'latex')
%     set(gca,'fontsize',20)
% subplot(2,5,6)  % Inputs
%     hold on
%     plot(time(1:end-1), uBarrier+uMPC, 'linewidth', 2)
%     line([0 time(end-1)], [-25 -25],'linewidth',2,'color','r','linestyle','--');
%     line([0 time(end-1)], [25 25],'linewidth',2,'color','r','linestyle','--');
%     axis([0 time(end-1) -30 30])    
%     title("$u_m + u_l$", "Interpreter", "latex")
%     xticklabels(["0T","", time(end)/dt_mpc + "T"])
%     xlabel('t', 'Interpreter', 'latex')
%     set(gca,'fontsize',20)
% subplot(2,5,7)  % r^* 
%     plot(time(1:end-1), gamma1/2/a, 'linewidth', 2)
%     if PLOT_RM
%         hold on 
%         plot(time(1:end-1), time(1:end-1)*0 + rm, 'linewidth', 2)
%         legend("r^*", "r_m", "Interpreter", "latex")
%     end
%     title("$r^\star-\bar r$", "Interpreter", "latex")
%     xticklabels(["0T","", time(end)/dt_mpc + "T"])
%     xlabel('t', 'Interpreter', 'latex')
%     set(gca,'fontsize',20)
%     
% % Main Plot:
% subplot(1,20,11:20)

    set(gca,'fontsize',20)
    hold on
    grid on
    trajectory_true = plot3(time(1:i_max), x_cl(1,1:i_max), x_cl(3,1:i_max), 'b', 'linewidth', 2);
    xlabel("$t$", "Interpreter", "Latex")
    ylabel("$p$", "Interpreter", "Latex")
    zlabel("$\theta$", "Interpreter", "Latex")
    
    for i = 1:i_max_mpc
        
        % Plot Linear Trajectory Segment
        i_seg_start = max(find(time <= dt_mpc*(i-1)))+1;
        i_seg_end = max(find(time <= dt_mpc*i));

        trajectory_plan = plot3(time(i_seg_start:i_seg_end), xn_cl(1,i_seg_start:i_seg_end), xn_cl(3, i_seg_start:i_seg_end), 'm', 'linewidth',2 );

        
        % Draw DoA outlines
        theta = linspace(0, 2*pi, 100);
        x_D = theta*0 + t_goal(i);
        y_D = z_goal(1,i) + d*cos(theta);
        z_D = z_goal(3,i) + d*sin(theta);
        Di = plot3(x_D, y_D, z_D, 'k', 'linewidth', 2);
        
        x_E = theta*0 + t_goal(i) + dt_mpc;
        y_E = z_goal(1,i) + c*cos(theta);
        z_E = z_goal(3,i) + c*sin(theta);
        Ei = plot3(x_E, y_E, z_E, 'r', 'linewidth', 2);
        
        % Plot cones and z_i targets
        plot_cone([t_goal(i), t_goal(i)+dt_mpc], [z_goal(1,i), z_goal(3,i)], d,c)
    
    end
    
    shading interp
    colormap autumn

    % Set 3D camera angle
    campos([   -0.838   -5.1150    2.5916 ])

    % Reposition to get everything in frame
    p = gca;
    set(p, 'XTick',([0 0.1 0.2 0.3 0.4 0.5]));
    p = p.Position;
    set(gca,'Position',[p(1) p(2)+0.03, p(3), p(4)*0.95]);
    
    % Focus Time Access
    xlim([0,T_MAX+dt_mpc*0.2])
%     set(p, 'XTick',([0 0.2 0.4 0.6 0.8 1]));
    xlabels = ["0T", "1T", "2T", "3T", "4T", "5T"];
    xticklabels(xlabels)
   

    % Add legend
    if PLOT_ZI
        z_i = plot3(nan, nan, nan, 'ro', 'MarkerFaceColor', 'r'); % fake legend entry for z_i's
        legend([trajectory_true, trajectory_plan, Di, E_i, z_i], {'$x(t)$', '$z(t)$', '$\mathcal{D}_i$', '$\mathcal{E}_i$', '$z^-(iT)$'}, 'Location', 'SouthEast')
    else
        legend([trajectory_true, trajectory_plan, Di, Ei], {'$x(t)$', '$z(t)$', '$\mathcal{D}_i$', '$\mathcal{E}_i$'}, 'Location', 'SouthEast')
    end
    
    % Add colorbar
    h = colorbar;%('southoutside');
    h.Title.String = '$h_i(x)$';
    set(h, 'YTick', [0, 0.1])
    set(h, 'YTickLabel', ["0", "-0.1"])
    h.Title.Interpreter = 'latex';
    h.TickLabelInterpreter = 'latex';
    axes('Position',[.7 .7 .2 .2])
box on
plot([1,1],[0,1])
    
if SAVE_FIG
    print(gcf,'sim_trajectory.png','-dpng','-r600');
end


%% Plot 2D State Space 

figure
hold on 
t_max = 10;
d = 0.2;

i_max = max(find(time <= t_max));
X = patch([-10, -10, 10, 10], [-0.3, 0.5, 0.5, -0.5], 'b')
X_T = patch([-10, -10, 10, 10], [-0.5, 0.3, 0.3, -0.5], 'g')



trajectory_true = plot(x_cl(1,1:i_max), x_cl(3,1:i_max), 'b', 'linewidth', 2);
xlabel("$p$", "Interpreter", "Latex")
ylabel("$\theta$", "Interpreter", "Latex")

theta = linspace(0, 2*pi, 50); 
x_circ = cos(theta); 
y_circ = sin(theta); 

plot(x_cl(1,1), x_cl(3,1), 'ko', 'linewidth', 2, 'MarkerFaceColor', 'w')
for i = 1:length(z_goal)

    % Plot Linear Trajectory Segment
    i_seg_start = max(find(time <= dt_mpc*(i-1)))+1;
    i_seg_end = max(find(time <= dt_mpc*i));

    x_iT = plot(x_cl(1,i_seg_end), x_cl(3,i_seg_end), 'ko', 'linewidth',2 , 'MarkerFaceColor', 'w');

end
   i_seg_end = max(find(time <= dt_mpc*3));

% r = linspace(d, c, 3); 
% theta = linspace(0, 2*pi, 1000);
% [R, TH] = meshgrid(r, theta);
% Z_decay = R-c; 
% Y_decay = R.*sin(TH) + z_goal(3, 3);
% X_decay = R.*cos(TH) + z_goal(1, 3);
% surf(X_decay, Y_decay, Z_decay, 'FaceAlpha', 0.5)
% shading interp
% colormap autumn


txt = "$x("+3+"T)$";patch
text(x_cl(1,i_seg_end)+0.03, x_cl(3, i_seg_end), txt, "Interpreter", "latex", "FontSize", 14);

txt = "$\mathcal{E}_"+3+"$";
text(x_cl(1,i_seg_end)-2*c, x_cl(3, i_seg_end)-2*c, txt, "Interpreter", "latex", 'FontSize', 14);

txt = "$\mathcal{D}_"+3+"$";
text(x_cl(1,i_seg_end)-d+0.04, x_cl(3, i_seg_end)-d+0.04, txt, "Interpreter", "latex", 'FontSize', 14);



    i_seg_end = max(find(time <= dt_mpc*2));

txt = "$x("+2+"T)$";
text(x_cl(1,i_seg_end)+0.03, x_cl(3, i_seg_end), txt, "Interpreter", "latex", 'FontSize', 14);
 





for i = [3,length(z_goal)]
    plot(d*x_circ + z_goal(1,i), d*y_circ + z_goal(3,i), 'k', 'linewidth', 2)
    plot(c*x_circ + z_goal(1,i), c*y_circ + z_goal(3,i), 'r', 'linewidth', 2)
end



xlim([-1.4, -0.5])
ylim([-0.1, 0.7])

legend([trajectory_true, x_iT, X_T,X], {"$x(t)$", "$x(iT)$", "$\mathcal{X}_T$","$\mathcal{X}$"}, 'Interpreter', 'latex')



%% 


function plot_cone(t_span,center, d, c)
    global PLOT_ZI 
    dt = t_span(2) - t_span(1);
    
    % Create and plot cone
    t = linspace(t_span(2) - t_span(1), 0, 2); 
    theta = linspace(0, 2*pi, 1000);
    [T, TH] = meshgrid(t, theta);
    C_decay = T; 
    Y_decay = ((d/dt*T)+(c/dt*(dt-T))).*sin(TH) + center(1);
    Z_decay = ((d/dt*T)+(c/dt*(dt-T))).*cos(TH) + center(2);
    X_decay = t_span(2) - T;
    surf(X_decay, Y_decay, Z_decay, C_decay, 'FaceAlpha', 0.5)

    % Create and plot goal marker z_i 
    if PLOT_ZI
        [z_x, z_y, z_z] = sphere(); 
        r = 0.01 % user parameter to change sphere shape. This is better than 
                  % a marker, because markers are technically singletons, so 
                  % lines don't go "through" them and matlab will mix up the 
                  % rendering. It is annoying and finicky though
        surf(r*0.5*z_x+ t_span(2), r*z_y+center(1), r*z_z+center(2), z_z*0, 'FaceAlpha', 1)
    end
end









