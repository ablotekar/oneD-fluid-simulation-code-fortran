      SUBROUTINE input                                                            
      USE global                                                                  
      IMPLICIT NONE 

                                                          
!-------------------------------------------------------------------              
!Input parameters                                                                 
!-------------------------------------------------------------------              
      LX      = 20000        ! System Length

 !--------- KAPPA INDEX ---------------------------------                                                  
      K       =  2          ! Kappa Index

 !--------- CAIRNS INDEX ---------------------------------     
      ALP     = 0.2D0

      DX      = 0.2D0       ! Space grid size                                      
      DT      = 0.1D0       ! Time grid size                                      
      N0E     = 1D0         ! Equilibrium electron density                       
      N0I     = 1D0         ! Equilibrium ion  density                           
      VX0     = 0D0         ! Ion equilibrium velocity                            
      DNE     = 50D-2       ! Amplitude of perturbation in electron density     
      L0E     = 2D0         ! Perturbation widht for electron                     
      DNI     = 50D-2       ! Amplitude of perturbation in ion density          
      L0I     = 2D0         ! Perturbation widht for ion                          
      DNV     = 0D0         ! Amplitude of perturbation in ion velocity           
      L0V     = 50D0        ! Perturbation widht for ion velocity                 
      TIDATA  = 100          ! time interval of data save                            
      NTIME   = 500000          ! Time of simulation                                        
      TOL     = 1D-10       ! Number of itration in poisson solver                 
      W       = 0.7D0       ! SOR PARAMETER                                       
           
      TIMAT   = 1         ! Matrix dimension                                    
      FFTSRT  = 1           ! Starting time of data save opration                      
      TRES    = 1           ! Resolution of data                                        
      NX      = aint(LX/DX)+1 ! Number of grid point 


! ----------- Distribution choice ---------------------------
      DC      = 11      ! 11 = Kappa distribution 
                         ! 22 = Maxwell-Boltzman distribution 
                         ! 33 = Cairns distribution
!------------------------------------------------------------- 

! ----------- peruturbation choice ---------------------------
      PRC      = 1        ! 1 = Gaussian perturbation 
                         ! 2 = Step function perturbation 
!------------------------------------------------------------- 

! -------------- Data save options ---------------------------------                         
      CC      = 1          ! 1 = data save in vector (1 X N) formate
                           ! 2 = Data save in matrix (M X N) formate
!-------------------------------------------------------------------         
! ------------------ Input parameter write -------------------------------------
! ------------------------------------------------------------------------------
                                                                    
      END SUBROUTINE input                                                        
