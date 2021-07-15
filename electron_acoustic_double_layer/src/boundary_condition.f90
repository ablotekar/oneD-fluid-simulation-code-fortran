      SUBROUTINE boundary_condition(Z) 
      USE global
      IMPLICIT NONE
      REAL*8 ::  Z(1,NXP4)
      Z(1,1)      = Z(1,NXP1)
      Z(1,2)      = Z(1,NXP2)
      Z(1,NXP3)   = Z(1,3)
      Z(1,NXP4)   = Z(1,4)
      RETURN
      END
