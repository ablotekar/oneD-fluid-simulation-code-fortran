      SUBROUTINE FD4n(X, Y)
      USE global
      IMPLICIT NONE
      REAL*8 :: Y(1,NXP4), X(1,NXP4)
      INTEGER ::  IC 
!----------------------------------------------------------------------
!     Derivative by 4 th order central central finite difference scheam 
!     X = Matric of which derivative is wanted to find
!     Y = Derivative of matirx 
!----------------------------------------------------------------------
      DO 111 IC = 3,NXP2
         Y(1,IC) = (8*X(1,IC+1) - 8*X(1,IC-1) - X(1,IC+2) &
     &   + X(1,IC-2))/(12*DX)
  111 CONTINUE

      RETURN 
      END
