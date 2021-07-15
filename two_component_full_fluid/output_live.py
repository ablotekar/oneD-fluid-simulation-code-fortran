import matplotlib.pyplot as plt
import numpy as np
import glob, os
import mpld3

def readline_number_x(file,x):                #
    for index,line in enumerate(iter(file)):  #   function form internet 
        if index+1 == x: return line          #
    return None                               #

# multiple subplots, shared axes
fig, ax = plt.subplots(1, 2, figsize=(26, 10),sharex=True)
fig.subplots_adjust(hspace=0.1)
# Setting up path 
dir0 = "./data/EX/*.dat"

file = open("./data/Input.txt", "r") 
line0 = readline_number_x(file,2)
dx = float(line0[9:14])
line1 = readline_number_x(file,1)
dt = float(line1[9:15])

m_old = 1
jj=1
while (jj==1):
    file = glob.glob(dir0)
    file = sorted(file)
    m = len(file)-1
    lg = m-m_old
    m_old=m
    if (lg > 0):
        tm = m*10000
        fname = file[m]
#print(fname)
        EX_PH=np.loadtxt(fname)           # load data from data file 
        EX_PH = np.matrix(EX_PH)


        n = EX_PH.shape                   # Asking for the dimention of matrix - it give is tuple array

        n=np.array(n)                    # Convertng tuple to array
        x = np.arange(1, n[0]+1)         # Making x axis 
        xc = int(n[0]/2)
        x=(x-xc)*dx                           # Making x axis 
        x=np.matrix(x)
        x = x.transpose()

        color = ['r', 'b', 'y', 'g']


        axi = ax.flat[0]
        axi.cla()

        axi.plot(x, EX_PH[:,0], 'r', lw=2, alpha=0.7)   
        axi.set_title('Time steps = '+str(tm), fontsize=18, fontweight="bold")
        axi.set_xlabel('x', fontsize=18, fontweight="bold")
        axi.set_ylabel('E-field', fontsize=18, fontweight="bold")
        axi.grid(color='k', linestyle='--', linewidth=0.5, alpha=0.3)        # Customizing grid size
        axi.grid(True) 
        
        axi = ax.flat[1]
        axi.cla()
        axi.plot(x, EX_PH[:,1], 'b', lw=2, alpha=0.7)   
        axi.set_title('Time steps = '+str(tm), fontsize=18, fontweight="bold")
        axi.set_xlabel('x', fontsize=18, fontweight="bold")
        axi.set_ylabel('Phi', fontsize=18, fontweight="bold")
        axi.grid(color='k', linestyle='--', linewidth=0.5, alpha=0.3)        # Customizing grid size
        axi.grid(True) 
        
        plt.ion()
    plt.pause(5)

