      SUBROUTINE POISSON_SOL_KAPPA(X, Z)
      USE global
      IMPLICIT NONE 

      REAL*8 ::  X(1,NXP4), Z(1,NXP4), DIFF(1,NXP4)
      REAL*8 :: PP, X_OLD(1,NXP4), PO, YH, YC
      INTEGER :: IT, IC  
      pp = 2.0
      DO WHILE (PP .GT. TOL)
         X_OLD = X
         DO 113 IC= 3,NXP2
         YH =  (1-BH*X(1,IC))**PHE
         YC = (1-BC*X(1,IC))**PC
         PO = 0.5*(X(1,IC+1)+X(1,IC-1) + (Z(1,IC) - (1-F)*YH  - F*YC)*DX*DX)
         X(1,IC) =PO + W*(PO-X_OLD(1,IC));
  113    CONTINUE
!C---- Boundary condition -------   
      X(1,1)      = X(1,NXP1)
      X(1,2)      = X(1,NXP2)
      X(1,NXP3)   = X(1,3)
      X(1,NXP4)   = X(1,4)
!C-------------------------------
      DIFF = X_OLD-X
      DIFF = ABS(DIFF)
      PP   = MAXVAL(DIFF)     
      END DO
      RETURN
      END
