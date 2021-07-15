import numpy as np
import matplotlib.pyplot as pl, mpld3
import glob, os

def readline_number_x(file,x):                #
    for index,line in enumerate(iter(file)):  #   function form internet 
        if index+1 == x: return line          #
    return None                               #

# Importing data from .dat file 
dir0 = "./data/EX/*.dat"
file = open("./data/Input.txt", "r") 
line0 = readline_number_x(file,2)
dx = float(line0[9:14])
line1 = readline_number_x(file,1)
dt = float(line1[9:15])
file = glob.glob(dir0)
file = sorted(file)
m = len(file)-1

fname = file[m]
data=np.loadtxt(fname)           # load data from data file 
data = np.matrix(data)           
n = data.shape                   # Asking for the dimention of matrix - it give is tuple array

n=np.array(n)                    # Convertng tuple to array
x = np.arange(1, n[0]+1)         # Making x axis 
xc = int(n[0]/2)
x=(x-xc)*dx                           # Making x axis 
x=np.matrix(x)
x = x.transpose()

pl.plot(x, data[:,0],'r')   
pl.plot(x, data[:,1],'b')   

#pl.grid(color='k', linestyle='--', linewidth=0.1)        # Customizing grid size
#pl.grid(True)                   # Grid on
pl.xlabel('x')                 # X-lable
pl.ylabel('data')  
pl.title(fname)
pl.show()                       # Displaying plot
