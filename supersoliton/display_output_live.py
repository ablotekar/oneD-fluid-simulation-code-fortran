"""
Name  : display_output_live.py
Author: Ajay Lotekar
e-mail: ablotekar@gmail.com
Date  : 2021-07-18 

DESC  : This program display the output from simulation as movie. 
"""

import numpy as np 
import matplotlib.pyplot as plt
import glob

# Function to read the text file 
def readline_number_x(file, x):                
    for index, line in enumerate(iter(file)):   
        if index + 1 == x: return line          
    return None                               


# Reading constants from input file  
inputfile = open("./data/Input_data.dat", "r")  # Reading input file

dxstr = readline_number_x(inputfile, 3)  # Reading dx
dx = float(dxstr[12:37])  # Converting string to float

dtstr = readline_number_x(inputfile, 3)  # Reading dt
dt = float(dtstr[12:37])  # Converting string to float

f, (ax1, ax2) = plt.subplots(2, 1, sharex=True) # Initializing plotting window


number_of_files_old=1

while 1:

    # Reading data from fiels 
    filedir = "./data/*.dat"           # Path for data files
    filelist = glob.glob(filedir)      # Get list of files in directory
    filelist = sorted(filelist)        # Sorting by name 
    number_of_files = len(filelist)-2
    new_files = number_of_files - number_of_files_old
    
    if (new_files > 0):
        fname = filelist[number_of_files]  # Recent file name 
        data = np.loadtxt(fname)           # Read text from data file
        data = np.matrix(data)             # Converting text matrix 
        
        x = (np.arange(1, data.shape[0] + 1) 
            - int(data.shape[0] / 2)) * dx  # x axis 

        # Potential
        ph = data[:, 2]
        # Calculate Electric field
        E = np.transpose(np.diff(np.transpose(ph)))
        xforE = np.delete(x, -1)

        # Plotting the Electric and potential 
        
        ax1.plot(xforE, E, 'r')     # Electric field
        ax1.set_xlim([min(x), max(x)])
        ax1.set_ylabel('E')
        ax1.grid(color='black', linestyle='--', linewidth=0.5,
             alpha=0.4)

        titlestr = " $\omega_{pi}t$ = " + str(float(fname[11:21]) * dt)

        ax1.set_title(titlestr)
        ax2.plot(x, ph, 'b')     # Electrostatic potential
        ax2.set_xlim([min(x), max(x)])
        ax2.set_xlabel('x')
        ax2.set_ylabel('$\phi$')
        ax2.grid(color='black', linestyle='--', linewidth=0.5,
             alpha=0.4)
        
        plt.ion()
    
    plt.pause(1)
    number_of_files_old = number_of_files
    ax1.cla()
    ax2.cla()