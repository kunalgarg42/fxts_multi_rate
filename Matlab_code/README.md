Matlab code for the Segway simulations utilizing fixed-time barrier functions in a multi-rate control framework proposed in the paper [1]. The function FTOCP solves the MPC problem for the high-level policy, while the function CBF provides the low-level policy. MPC runs at 1/dt_mpc HZ while CBF runs at 1/dt HZ. 

Prerequisites: 
1) MPT toolbox (use install_MPT3.m and run the following commands in Matlab
tbxmanager update 
clear classes
mpt_init 

(see https://www.mpt3.org/Main/Installation for more details)

2) Gurobi (see https://www.gurobi.com/documentation/9.1/quickstart_mac/matlab_setting_up_grb_for_.html)
3) MOSEK (use command "addpath  <MSKHOME>\mosek\8\toolbox\<MATLAB VERSION> or see https://docs.mosek.com/9.2/toolbox/install-interface.html)


[1]: Garg, K., Cosner, R. K., Rosoliya, U., Ames, A. D., and Panagou, D., "Multi-rate control design under input constraints using fixed-time barrier functions", submitted to IEEE Control Systems Letters, under review. (available at http://www-personal.umich.edu/~kgarg/uploads/papers/LCSS_21_multirate.pdf)
