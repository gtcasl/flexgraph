#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import os
import subprocess
import multiprocessing
import re
import math
import numpy as np
import matplotlib.pyplot as plt

def GetStats(logdir, injection_rate):
	logfile = logdir + '/result_' + str(injection_rate) + '.log'
	
	with open(logfile, 'r') as f:
		lines = f.readlines()		
	
	for (i, line) in enumerate(lines):
		if 'average packet latency' in line:
			match = re.search('average packet latency *= *([+-]?(\d+(\.\d*)?|\.\d+)([eE][+-]?\d+)?)', line)
			latency = float(match.group(1))
			break
		
	print('injection_rate=%f, latency=%f' % (injection_rate, latency))
	return latency

def Plot(logdir, injection_rates, outputfile) :
	_colors = ['r', 'b', 'g', 'c', 'm', 'y', 'k', 'w']
	
	latencies = []	
	for injection_rate in injection_rates:
		latencies.append(GetStats(logdir, injection_rate))
		
	fig = plt.figure()
	plt.title('latency vs throughput')
	plt.xlabel('injection-rate (flit/node/cycle)')
    plt.ylabel('average flit latency (ticks)')
	plt.plot(injection_rates, latencies)   
	plt.grid()
	fig.savefig(outputfile)

def Plot2(logdirs, labels, injection_rates, outputfile) :
	_colors = ['r', 'b', 'g', 'c', 'm', 'y', 'k', 'w']
	
	fig = plt.figure()
	
	for idx in xrange(len(logdirs)):
		latencies = []	
		for injection_rate in injection_rates:
			latencies.append(GetStats(logdirs[idx], injection_rate))	
		plt.plot(injection_rates, latencies, color=_colors[idx], label=labels[idx])        
    	
	plt.title('latency vs throughput')
	plt.xlabel('injection-rate (flit/node/cycle)')
    plt.ylabel('average flit latency (ticks)')
	plt.plot(injection_rates, latencies)   
	plt.grid()
	plt.legend()	
	fig.savefig(outputfile)
	
Plot('results_x', (np.arange(16)+1)/16.0, 'resuls_x.png')
#Plot('results_5', (np.arange(16)+1)/16.0, 'resuls_5.png')
#Plot('results_6', (np.arange(16)+1)/16.0, 'resuls_6.png')
#Plot2(['results_4', 'results_5', 'results_6'], ['s4', 's5', 's6'], (np.arange(16)+1)/16.0, 'resuls_4_5_6.png')

