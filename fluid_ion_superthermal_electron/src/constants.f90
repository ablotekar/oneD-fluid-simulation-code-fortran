      SUBROUTINE constants
      USE global
      IMPLICIT NONE

!C --- Constants for Kappa function ------------------------------------

      P = -K + 0.50      ! constant at power in Kappa
      B = 1.0/(K - 1.50) ! constant at dinominator in Kappa

!-------------- For Cairns distribution ------------------------
      BT = 4*ALP/(3*ALP + 1) 
   
      END SUBROUTINE constants
