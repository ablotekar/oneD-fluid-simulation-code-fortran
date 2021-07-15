# Fluid simulation of ion acoustic solitary wave

This code can be used to perform the fluid simualtion of the ion acoustic
solitary wave. It has been used to produce the result presented in the 
following research article 

1. [Lotekar et. al. Phy. Plasm., 2016](https://doi.org/10.1063/1.4964478)
2. [Lotekar et. al. Phy. Plasm., 2017](https://doi.org/10.1063/1.4991467)

## Numerical model 

The code is written for the plasma system consist of the fluid ion and 
superthermal electron. The ions are governed by fluid equation and 
electron followes the kappa/maxwellian/Cairn velocity distribution. 

User can choose plasma model from followeing list

1. Fluid ions - Suprthermal electrons
2. Fluid ions - thermal (Maxwellian) electron 
3. Fluid ions - non-thermal (Cairn's) electron 

To choose the model user need to change the associate flag in **./src/input.f90** 
file. 

