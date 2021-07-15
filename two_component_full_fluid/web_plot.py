import matplotlib.pyplot as plt
import numpy as np
import glob, os
import mpld3

def readline_number_x(file,x):                #
    for index,line in enumerate(iter(file)):  #   function form internet 
        if index+1 == x: return line          #
    return None                               #

# Setting up path 
dir0 = "./data/EX/*.dat"
dir1 = "./data/N/*.dat"
dir2 = "./data/VX/*.dat"
dir3 = "./data/P/*.dat"

file = open("./data/Input.txt", "r") 
line0 = readline_number_x(file,2)
dx = float(line0[9:14])
line1 = readline_number_x(file,1)
dt = float(line1[9:15])

file = glob.glob(dir0)
file = sorted(file)
m = len(file)-1
fname = file[m]
print(fname)
EX_PH=np.loadtxt(fname)           # load data from data file 
EX_PH = np.matrix(EX_PH)

file = glob.glob(dir1)
file = sorted(file)
fname = file[m]
N=np.loadtxt(fname)           # load data from data file 
N = np.matrix(N)

file = glob.glob(dir2)
file = sorted(file)
fname = file[m]
VX=np.loadtxt(fname)           # load data from data file 
VX = np.matrix(VX)

file = glob.glob(dir3)
file = sorted(file)
fname = file[m]
P = np.loadtxt(fname)           # load data from data file 
P = np.matrix(P)

n = P.shape                   # Asking for the dimention of matrix - it give is tuple array

n=np.array(n)                    # Convertng tuple to array
x = np.arange(1, n[0]+1)         # Making x axis 
xc = int(n[0]/2)
x=(x-xc)*dx                           # Making x axis 
x=np.matrix(x)
x = x.transpose()

color = ['r', 'b', 'y', 'g']

# multiple subplots, shared axes
fig, ax = plt.subplots(2, 2, figsize=(26, 10),sharex=True)
fig.subplots_adjust(hspace=0.3)
axi = ax.flat[0]
for i in range(0,2):
    axi.plot(x, EX_PH[:,i], c=color[i], lw=2, alpha=0.7)   
    axi.set_title('E-field and Phi')

axi = ax.flat[1]
for i in range(0,4):
    axi.plot(x, N[:,i], c=color[i], lw=2, alpha=0.7)   
    axi.set_title("Densities")

axi = ax.flat[2]
for i in range(0,4):
    axi.plot(x, VX[:,i], c=color[i], lw=2, alpha=0.7)   
    axi.set_title("Velocity")

axi = ax.flat[3]
for i in range(0,4):
    axi.plot(x,P[:,i], c=color[i], lw=2, alpha=0.7)   
    axi.set_title("Pressure")

a = mpld3.show();
