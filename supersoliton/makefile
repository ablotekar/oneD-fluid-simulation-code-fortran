#--------------------------------------------------------------------------
# This is make file of 1D fluid code 3-component plasma model
#
# Developer : (1) Ajay Lotekar
#
#
# Date: March 20, 2017 (v0.4a)
#
#--------------------------------------------------------------------------

# Make file for the all compiler
CAMP = gfortran    # Change compiler name acourdingly

# Making executable file "RUN"
PROGRAM = RUN
SRCDIR = ./src/
BILDIR = ./obj/

FLAGS = -c
LINKR = -o

OBJS  = global.o \
	main.o \
	main_vector_kappa.o \
	main_vector_mb.o \
    main_vector_cairn.o \
    main_matrix_kappa.o \
	main_matrix_cairn.o \
	main_matrix_mb.o \
	perturbation_gaussian.o \
	perturbation_gaussian_p2.o \
	perturbation_step.o \
	datawriting_matrix.o \
	FILTERn.o \
	counter.o \
    constants.o\
	datawriting.o \
    initial_parameter_write.o\
	initial.o \
	input.o \
    POISSON_SOL_KAPPA.o \
	POISSON_SOL_CAIRN.o \
	POISSON_SOL_MAXWELL.o \
	FD4n.o \
	out_dir.o \

MOD = global.mod

$(PROGRAM): $(OBJS)
	@$(CAMP)  $(LINKR) $(PROGRAM) $(OBJS)
	@mv $(OBJS) $(BILDIR)
	@mv $(MOD) $(BILDIR)
	@echo "Now you can execute file < $(PROGRAM) > "

global.mod:global.o $(SRCDIR)global.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)global.f90

global.o: $(SRCDIR)global.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)global.f90

main.o: global.mod $(SRCDIR)main.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)main.f90

main_vector_kappa.o: global.mod $(SRCDIR)main_vector_kappa.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)main_vector_kappa.f90

main_vector_mb.o: global.mod $(SRCDIR)main_vector_mb.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)main_vector_mb.f90

main_vector_cairn.o: global.mod $(SRCDIR)main_vector_cairn.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)main_vector_cairn.f90

main_matrix_kappa.o: global.mod $(SRCDIR)main_matrix_kappa.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)main_matrix_kappa.f90

main_matrix_mb.o: global.mod $(SRCDIR)main_matrix_mb.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)main_matrix_mb.f90

main_matrix_cairn.o: global.mod $(SRCDIR)main_matrix_cairn.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)main_matrix_cairn.f90

perturbation_gaussian.o: global.mod $(SRCDIR)perturbation_gaussian.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)perturbation_gaussian.f90

perturbation_gaussian_p2.o: global.mod $(SRCDIR)perturbation_gaussian_p2.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)perturbation_gaussian_p2.f90

perturbation_step.o: global.mod $(SRCDIR)perturbation_step.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)perturbation_step.f90


FILTERn.o: global.mod $(SRCDIR)FILTERn.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)FILTERn.f90

counter.o: global.mod $(SRCDIR)counter.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)counter.f90

constants.o: global.mod $(SRCDIR)constants.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)constants.f90

datawriting.o: global.mod $(SRCDIR)datawriting.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)datawriting.f90

datawriting_matrix.o: global.mod $(SRCDIR)datawriting_matrix.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)datawriting_matrix.f90

initial_parameter_write.o: global.mod $(SRCDIR)initial_parameter_write.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)initial_parameter_write.f90

initial.o: global.mod $(SRCDIR)initial.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)initial.f90

#INPUT_READ.o: global.mod $(SRCDIR)INPUT_READ.f90
#	@$(CAMP) $(FLAGS)  $(SRCDIR)INPUT_READ.f90

input.o: global.mod $(SRCDIR)input.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)input.f90

POISSON_SOL_KAPPA.o: global.mod $(SRCDIR)POISSON_SOL_KAPPA.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)POISSON_SOL_KAPPA.f90

POISSON_SOL_MAXWELL.o: global.mod $(SRCDIR)POISSON_SOL_MAXWELL.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)POISSON_SOL_MAXWELL.f90

POISSON_SOL_CAIRN.o: global.mod $(SRCDIR)POISSON_SOL_CAIRN.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)POISSON_SOL_CAIRN.f90

out_dir.o: global.mod $(SRCDIR)out_dir.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)out_dir.f90

FD4n.o: global.mod $(SRCDIR)FD4n.f90
	@$(CAMP) $(FLAGS)  $(SRCDIR)FD4n.f90


.PHONY : clean
clean:
	rm -f *.o *.mod
