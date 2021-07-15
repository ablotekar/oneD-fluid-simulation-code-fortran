      SUBROUTINE poisson_sol_PHI(X,Y)
      USE global
      REAL*8 :: X(1,NXP4), Y(1,NXP4), TD(1,NX), PH0

      DO 66 IC=3, NXP2
         X(1,IC) = X(1,IC-1) - 0.5*DX*(Y(1,IC)+Y(1,IC)) 
         TD(1,IC-2) = X(1,IC)
   66 CONTINUE
      PH0 = SUM(TD)/NX
      X(1,:) = X(1,:)-PH0
      CALL boundary_condition(X(1,:)) 
      CALL FILTERn(X(1,:))
      END SUBROUTINE poisson_sol_PHI