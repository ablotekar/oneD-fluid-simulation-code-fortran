      SUBROUTINE FILTERn(Z)  
      USE global
      IMPLICIT NONE
!     This function implements 3 point filter for j=3
!
      REAL*8 ::  Z(1,NXP4), Z1(1,NXP4)
      INTEGER ::  IC
 
      DO 117 IC = 3, NXP2
         Z1(1,IC)=(-1*Z(1,IC-2)+4*Z(1,IC-1)+10*Z(1,IC)+4*Z(1,IC+1) &
     &   -Z(1,IC+2))/16
  117 CONTINUE
      Z = Z1
!---- Boundary condition ------- 
      CALL boundary_condition(Z(1,:))
!------------------------------
      RETURN
      END
