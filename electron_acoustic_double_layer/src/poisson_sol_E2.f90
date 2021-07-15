      SUBROUTINE poisson_sol_E2(X,Y,Z,T)
      USE global
      REAL*8 :: X(1,NXP4), Y(1,NXP4), Z(1,NXP4)
      REAL*8 :: W(1,NXP4), T(1,NXP4), TD(1,NX),TNI, TNE, EX0
      INTEGER :: R
      EX0 = 0
      DO 44 IC=3, NXP2
         TNI = X(1,IC-1)+X(1,IC)
         TNE = Y(1,IC-1)+Y(1,IC)+ Z(1, IC-1)+ Z(1,IC)
         T(1,IC) = T(1,IC-1) + (TNI-TNE)*dx*0.5
         TD(1,IC-2) = T(1,IC)
   44 CONTINUE
      EX0 = SUM(TD)/NX
      T(1,:) = T(1,:)-EX0
      CALL boundary_condition(T(1,:)) 
      CALL FILTERn(T(1,:))
      END SUBROUTINE poisson_sol_E2