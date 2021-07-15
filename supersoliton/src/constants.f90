      SUBROUTINE constants
      USE global
      IMPLICIT NONE

!C --- Constants for Kappa function ------------------------------------

!-------- For HOT electron -----------------------------------
      PHE = -KH + 0.50      ! constant at power in Kappa
      BH = 1.0/(KH - 1.50) ! constant at dinominator in Kappa

!--------- For COLD electron ----------------------------------
      PC = -KC + 0.50      ! constant at power in Kappa
      BC = 1.0/(TU*(KC - 1.50)) ! constant at dinominator in Kappa
!-------------- For Cairns distribution ------------------------
      BTH = 4*ALPH/(3*ALPH + 1)    
      BTC = 4*ALPC/(3*ALPC + 1)      
  
   
      END SUBROUTINE constants
