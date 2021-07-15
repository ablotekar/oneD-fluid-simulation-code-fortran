#-------------------------------------------------
# Make file for the 1D full fluid code (4C)
# Date January 6, 2018
# Mod. Date & version : Jan. 6, 2018 (v0.0)
# Copyright 2018, Indian Institute of Geomagnetism
#
# Devoloper : Ajay Lotekar
#
#-------------------------------------------------

#-------- Make file for all compiler --------------
CAMP = gfortran           # Change compiler name a
                         # (1) gfortran (for PC) 
                         # (2) ifort (for IIG HPC)
#--------------------------------------------------


PROGRAM = RUN
SRCDIR  = ./src/
BILDIR  = ./obj

FLAGS = -c
LINKR = -o

OBJS = MAIN.o\
	   input.o\
	   global.o\
	   datawriting.o\
	   initial.o\
	   boundary_condition.o\
	   perturbation_gaussian.o\
	   poisson_sol_E2.o\
	   FILTERn.o\
	   FD4n.o\
	   CONTINUTYn.o\
	   poisson_sol_PHI.o\


MOD = global.mod

$(PROGRAM): $(OBJS)
	@$(CAMP)  $(LINKR) $(PROGRAM) $(OBJS)
	@mv $(OBJS) $(BILDIR)
	@mv $(MOD) $(BILDIR)
	@echo "Now you can execute file < $(PROGRAM) >"


MAIN.o:global.o $(SRCDIR)MAIN.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)MAIN.f90

global.mod:global.o $(SRCDIR)global.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)global.f90 

global.o: $(SRCDIR)global.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)global.f90

input.o:global.mod $(SRCDIR)input.f90
	@$(CAMP) $(FLAGS) $(SRCDIR)input.f90

datawriting.o:global.mod $(SRCDIR)datawriting.f90
	@$(CAMP) $(FLAGS) $(SRCDIR)datawriting.f90

initial.o:global.mod $(SRCDIR)initial.f90
	@$(CAMP) $(FLAGS) $(SRCDIR)initial.f90

boundary_condition.o:global.mod $(SRCDIR)boundary_condition.f90
	@$(CAMP) $(FLAGS) $(SRCDIR)boundary_condition.f90

perturbation_gaussian.o:global.mod $(SRCDIR)perturbation_gaussian.f90
	@$(CAMP) $(FLAGS) $(SRCDIR)perturbation_gaussian.f90

poisson_sol_E2.o:global.mod $(SRCDIR)poisson_sol_E2.f90
	@$(CAMP) $(FLAGS) $(SRCDIR)poisson_sol_E2.f90


poisson_sol_PHI.o:global.mod $(SRCDIR)poisson_sol_PHI.f90
	@$(CAMP) $(FLAGS) $(SRCDIR)poisson_sol_PHI.f90

FILTERn.o:global.mod $(SRCDIR)FILTERn.f90
	@$(CAMP) $(FLAGS) $(SRCDIR)FILTERn.f90

FD4n.o:global.mod $(SRCDIR)FD4n.f90
	@$(CAMP) $(FLAGS) $(SRCDIR)FD4n.f90

CONTINUTYn.o:global.mod $(SRCDIR)CONTINUTYn.f90
	@$(CAMP) $(FLAGS) $(SRCDIR)CONTINUTYn.f90

.PHONY : clean
clean:
	rm -f *.o *.mod
    
