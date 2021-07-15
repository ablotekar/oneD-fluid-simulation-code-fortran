import numpy as np
import matplotlib.pyplot as pl
import glob, os

def readline_number_x(file,x):                #
    for index,line in enumerate(iter(file)):  #   function form internet 
        if index+1 == x: return line          #
    return None                               #

# Importing data from .dat file 
dir0 = "./data/EX/"
file = open("./data/Input.txt", "r") 
line0 = readline_number_x(file,2)
dx = float(line0[9:14])
line1 = readline_number_x(file,1)
dt = float(line1[9:15]) 
files = os.chdir(dir0)
file = glob.glob("*.dat")
file = sorted(file)
m = len(file)

fname = file[0]
data=np.loadtxt(fname)           # load data from data file 
data = np.matrix(data)           
n = data.shape                   # Asking for the dimention of matrix - it give is tuple array
n=np.array(n)                    # Convertng tuple to array
x = np.arange(1, n[0]+1)         # Making x axis 
xc = int(n[0]/2)
x=(x-xc)*dx                           # Making x axis 
x=np.matrix(x)
x = x.transpose()

for i in range(0, m):
    fname = file[i]
    print(fname)
    data=np.loadtxt(fname)           # load data from data file 
    data = np.matrix(data)           
    
    dat1=data[:,1]    
    #print type(dat1)              # new array form data matrix 
    pl.clf()
    pl.plot(x, dat1,'r')            # Plotiing data
    pl.grid(color='k', linestyle='--', linewidth=0.5)        # Customizing grid size
    pl.grid(True)                   # Grid on
#a=max(dat1)
#b=[i for i, j in enumerate(dat1) if j == a]
#print  a, b                   # Print command 
    pl.xlabel('x')                 # X-lable
    pl.ylabel('data')                 # y-lable 
   # pl.xlim(-500, 500)               # xlimit
   # pl.ylim(-0.03, 0.08)               # xlimit
    pl.title('Time steps = '+str(i*1000), fontsize=18, fontweight="bold")
    pl.ion()                       # Displaying plot
    pl.pause(0.05)

