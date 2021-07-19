      SUBROUTINE input                                                            
      USE global                                                                  
      IMPLICIT NONE                                                               
                                                                                  
!___________________________________________________________________              
!Input parameters                                                                 
!___________________________________________________________________              
      LX       = 2000       ! System Length
                                                                                  
! ----------- KAPPA INDEX ------------------------------                          
      KH       = 10          ! Kappa Index                                        
      KC       = 10          ! Kappa Index                                        
! ------------------------------------------------------                          
                                                                                  
!--------- CAIRNS INDEX ---------------------------------                         
      ALPH     = 0.9D0      ! Non-thermal index cairns for hot electron           
      ALPC     = 0.9D0      ! Non-thermal index cairns for cold electron          
!-------------------------------------------------------                          
                                                                                  
      DX       = 0.20D0      ! Space grid size                                    
      DT       = 0.1D0       ! Time grid size                                     
                                                                                  
      TU       = 0.12D0         ! Temprature ratio                                
      F        = 0.055D0         ! Density ratio                                  
                                                                                  
      N0EH     = (1-F)          ! Equilibrium HOT electron density                
      N0EC     = F         ! Equilibrium COLD electron density                    
                                                                                  
      N0I      = 1D0          ! Equilibrium ion  density                          
      VX0      = 0D0         ! Ion equilibrium velocity                           
                                                                                  
      DNEH     = 32D-2     ! Amplitude of perturbation in HOT electron density    
      L0EH     = 31D0       ! Perturbation widht for COLD electron                
                                                                                  
      DNEC     = 32D-2        ! Amplitude of perturbation in electron density     
      L0EC     = 31D0       ! Perturbation widht for electron                     
                                                                                  
      DNI      = 32D-2       ! Amplitude of perturbation in ion density           
      L0I      = 31D0       ! Perturbation widht for ion                          
                                                                                  
      DNV      = 40D-2        ! Amplitude of perturbation in ion velocity         
      L0V      = 20D0       ! Perturbation widht for ion velocity                 
                                                                                  
      TIDATA   = 10      ! time interval of data save                            
      NTIME    = 10000     ! time of simulation
      TOL      = 1D-8      ! Number of itration in poisson solver                 
      W        = 1D-1       ! SOR PARAMETER                                       
                                                                                  
      TIMAT    = 10        ! Matrix dimension                                     
      FFTSRT   = 1      ! Starting time of data save opration                     
      TRES     = 1     ! Resolution of data                                       
                                                                                  
      NX       = aint(LX/DX)+1 ! Number of grid point                             
                                                                                  
! ----------- Distribution choice ---------------------------                     
      DC       = 11       ! 11 = Kappa distribution                               
                         ! 22 = Maxwell-Boltzman distribution                     
                         ! 33 = Cairns distribution                               
!-------------------------------------------------------------                    
                                                                                  
! ----------- peruturbation choice ---------------------------                    
      PRC      = 1        ! 1 = Gaussian perturbation                             
                         ! 2 = Step function perturbation                         
!-------------------------------------------------------------                    
                                                                                  
! -------------- Data save options ---------------------------------              
      CC       = 1          ! 1 = data save in vector (1 X N) formate             
                           ! 2 = Data save in matrix (M X N) formate              
!-------------------------------------------------------------------              
                                                                                  
      END SUBROUTINE input                                                        
