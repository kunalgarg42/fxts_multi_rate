import rosbag
import sys
import pdb
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.animation import FuncAnimation
import glob
import os


newest = max(glob.iglob('/home/rkcosner/Documents/Research/FxT/kunal_ws/src/segway_sim/bags/*.bag'), key=os.path.getctime)
print("Open: " + newest)
bag = rosbag.Bag(newest)
dt_mpc = 0.05

def getPred(optSol):
	xPred = []
	yPred = []
	thetaPred = []
	vPred = []
	thetaDotPred = []
	psiPred = []
	psiDotPred = []
	u1Pred = []
	u2Pred = []
	nx = 7; nu = 2; N = 40;
	for j in range(0,N+1):
		xPred.append(optSol[j*nx + 0])
		yPred.append(optSol[j*nx + 1])
		thetaPred.append(optSol[j*nx + 2])
		vPred.append(optSol[j*nx + 3])
		thetaDotPred.append(optSol[j*nx + 4])
		psiPred.append(optSol[j*nx + 5])
		psiDotPred.append(optSol[j*nx + 6])
	for j in range(0,N):
		u1Pred.append(optSol[(N+1)*nx + j*nu + 0])
		u2Pred.append(optSol[(N+1)*nx + j*nu + 1])

	return xPred, yPred, thetaPred, vPred, thetaDotPred, psiPred, psiDotPred, u1Pred, u2Pred

## =======================================================
## Read Low Level Log
## =======================================================
input_received = 'y' #input("Do you want to plot low-level data? [y/n] ")
if input_received == 'y':
	X = []
	Xn = []
	uMPC = []
	uCBF = []
	uTot = []
	flagQP = []
	V = []
	h = []
	time_lowLevel = []
	error_lowLevel = []
	dt_lowlevel = 0.001
	for topic, msg, t in bag.read_messages(topics=['/segway_sim/lowLevelLog']):
		X.append(msg.X)
		Xn.append(msg.Xn)
		error_lowLevel.append( (np.array(msg.X)-np.array(msg.Xn)).tolist() )
		time_lowLevel.append((len(time_lowLevel))*dt_lowlevel)
		flagQP.append(msg.flagQP)
		uMPC.append(msg.uMPC)
		uCBF.append(msg.uCBF)
		uTot.append(msg.uTot)
		V.append(msg.V)
		h.append(msg.h)

	"""
	plt.figure()
	plt.plot(time_lowLevel, h, '-o', label='h')
	plt.ylabel('h')
	plt.xlabel('Time')
	plt.ylim(-1.1, 1)
	"""
	t_max = 5
	min_val = min(i for i in time_lowLevel if i > t_max) 
	index_tmax = time_lowLevel.index(min_val)

	plt.figure()
	plt.subplot(211)
	plt.plot(time_lowLevel[:index_tmax], h[:index_tmax], '-o', label='h', linewidth=0.1, markersize=1)
	plt.ylim((-0.1,1.1))
	plt.hlines(0, 0, t_max, color='k', label="safety constraint")
	plt.legend()
	plt.subplot(212)
	plt.plot(time_lowLevel[:index_tmax], V[:index_tmax], '-o', label='V', linewidth=0.1, markersize=1)
	plt.ylim((0.05, 5))
	plt.yscale('log')
	plt.legend()

	t_max = 1
	min_val = min(i for i in time_lowLevel if i > t_max) 
	index_tmax = time_lowLevel.index(min_val)

	plt.figure()
	plt.subplot(211)
	plt.plot(time_lowLevel[:index_tmax], h[:index_tmax], '-o', label='h', linewidth=0.1, markersize=1)
	plt.ylim((-0.1,1.1))
	plt.hlines(0, 0, t_max, color='k', label="safety constraint")
	plt.legend()
	plt.subplot(212)
	plt.plot(time_lowLevel[:index_tmax], V[:index_tmax], '-o', label='V', linewidth=0.1, markersize=1)
	plt.ylim((0.05, 5))
	plt.yscale('log')
	plt.legend()
	"""
	uMPC_array = np.array(uMPC);
	uCBF_array = np.array(uCBF);
	uTot_array = np.array(uTot);

	plt.figure()
	plt.subplot(211)
	plt.plot(time_lowLevel, uMPC_array[:, 0], '-o', label='MPC')
	plt.plot(time_lowLevel, uCBF_array[:, 0], '-o', label='CBF')
	plt.plot(time_lowLevel, uTot_array[:, 0], '-o', label='tot')
	plt.subplot(212)
	plt.plot(time_lowLevel, uMPC_array[:, 1], '-o', label='MPC')
	plt.plot(time_lowLevel, uCBF_array[:, 1], '-o', label='CBF')
	plt.plot(time_lowLevel, uTot_array[:, 1], '-o', label='tot')
	plt.ylabel('input')
	plt.legend()

	plt.figure()
	plt.plot(time_lowLevel, uMPC_array[:, 0], '-o', label='MPC')
	plt.plot(time_lowLevel, uCBF_array[:, 0], '-o', label='CBF')
	plt.plot(time_lowLevel, uTot_array[:, 0], '-o', label='tot')
	plt.figure()
	plt.plot(time_lowLevel, uMPC_array[:, 1], '-o', label='MPC')
	plt.plot(time_lowLevel, uCBF_array[:, 1], '-o', label='CBF')
	plt.plot(time_lowLevel, uTot_array[:, 1], '-o', label='tot')
	plt.ylabel('input')
	plt.legend()

	error_array = np.array(error_lowLevel)
	X_array = np.array(X)
	Xn_array = np.array(Xn)

	plt.figure()
	plt.subplot(711)
	plt.plot(time_lowLevel, error_array[:,0], '-o', label='x')
	plt.subplot(712)
	plt.plot(time_lowLevel, error_array[:,1], '-o', label='x')
	plt.subplot(713)
	plt.plot(time_lowLevel, error_array[:,2], '-o', label='x')
	plt.subplot(714)
	plt.plot(time_lowLevel, error_array[:,3], '-o', label='x')
	plt.subplot(715)
	plt.plot(time_lowLevel, error_array[:,4], '-o', label='x')
	plt.subplot(716)
	plt.plot(time_lowLevel, error_array[:,5], '-o', label='x')
	plt.subplot(717)
	plt.plot(time_lowLevel, error_array[:,6], '-o', label='error')
	plt.legend()

	plt.figure()
	plt.subplot(711)
	plt.plot(time_lowLevel, error_array[:,0], '-o', label='x')
	plt.plot(time_lowLevel, X_array[:,0], '-o', label='x')
	plt.plot(time_lowLevel, Xn_array[:,0], '-o', label='x')
	plt.subplot(712)
	plt.plot(time_lowLevel, error_array[:,1], '-o', label='x')
	plt.plot(time_lowLevel, X_array[:,1], '-o', label='x')
	plt.plot(time_lowLevel, Xn_array[:,1], '-o', label='x')
	plt.subplot(713)
	plt.plot(time_lowLevel, error_array[:,2], '-o', label='x')
	plt.plot(time_lowLevel, X_array[:,2], '-o', label='x')
	plt.plot(time_lowLevel, Xn_array[:,2], '-o', label='x')
	plt.subplot(714)
	plt.plot(time_lowLevel, error_array[:,3], '-o', label='x')
	plt.plot(time_lowLevel, X_array[:,3], '-o', label='x')
	plt.plot(time_lowLevel, Xn_array[:,3], '-o', label='x')
	plt.subplot(715)
	plt.plot(time_lowLevel, error_array[:,4], '-o', label='x')
	plt.plot(time_lowLevel, X_array[:,4], '-o', label='x')
	plt.plot(time_lowLevel, Xn_array[:,4], '-o', label='x')
	plt.subplot(716)
	plt.plot(time_lowLevel, error_array[:,5], '-o', label='x')
	plt.plot(time_lowLevel, X_array[:,5], '-o', label='x')
	plt.plot(time_lowLevel, Xn_array[:,5], '-o', label='x')
	plt.subplot(717)
	plt.plot(time_lowLevel, error_array[:,6], '-o', label='error')
	plt.plot(time_lowLevel, X_array[:,6], '-o', label='x')
	plt.plot(time_lowLevel, Xn_array[:,6], '-o', label='xn')
	plt.legend()

	plt.figure()
	plt.plot(time_lowLevel, flagQP, '-o', label='x')
	"""

	plt.show()

bag.close()

## Read and plot STATE
