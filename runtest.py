#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import os
import subprocess
import multiprocessing
import re
import math
import numpy as np

MAX_THREADS = 2

def RunTestOnce(params):
	(mtxfile, logfile) = params
	# build the command line
	cmd = './spmv.out -m %s > %s' % (mtxfile, logfile)
	print(cmd)
	# spawn the process in pipe mode
	process = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
	output = process.communicate()[0];
	exitcode = process.returncode   # get return value
	if exitcode != 0:
		print('usimm failed with exitcode %d' % exitcode)
		print(output)		
	return exitcode

def RunTest(matrices, log_dir):	
	num_samples = len(matrices)
	print('number of samples = %d' % num_samples)
	
	# create processors pool 
	num_procs = min(multiprocessing.cpu_count(), MAX_THREADS)
	print('number of processors = %d' % num_procs)
	procs_pool = multiprocessing.Pool(processes=num_procs)
	
	wIdx = 0
	done = False
	while not done:			
		# fill up the input list
		input_args = []
		for p in range(0, num_procs):
			matrix = matrices[wIdx]
			logfile = log_dir + '/' + matrix + '.log'
			input_args.append((matrix, logfile))
			wIdx += 1
			if wIdx == num_samples:
				done = True
				break
		
		# execute the job batch
		procs_pool.map(func=RunTestOnce, iterable=input_args)

RunTest(['graph500_6.mtx','graph500_8.mtx','graph500_10.mtx','graph500_12.mtx', 'graph500_14.mtx', 'graph500_16.mtx', 'graph500_18.mtx', 'graph500_20.mtx'], 'results')
