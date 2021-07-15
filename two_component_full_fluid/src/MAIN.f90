      PROGRAM MAIN  
      USE global
      IMPLICIT NONE
      INTEGER :: IC
      
      CALL input
      CALL initial 
      CALL perturbation_gaussian
      J=0
      CALL datawriting
      DO 99 J = 1, NTIME
      CALL CONTINUTYn(NI,VXI, PI, EX, ZI, MI, 2, 1)
      CALL CONTINUTYn(NE,VXE, PE, EX, ZE, ME, 2, 1)
      CALL poisson_sol_E2(NI(2,:), NE(2,:), EX(2,:))
      CALL poisson_sol_PHI(PH(2,:), EX(2,:))
      CALL CONTINUTYn(NI,VXI, PI, EX, ZI, MI, 1, 2)
      CALL CONTINUTYn(NE,VXE, PE, EX, ZE, ME, 1, 2)
      CALL poisson_sol_E2(NI(1,:), NE(1,:), EX(1,:))
      CALL poisson_sol_PHI(PH(1,:), EX(1,:))
      IF (MOD(J, TIDATA)==0) THEN 
      CALL datawriting
      END IF
   99 CONTINUE 

      END PROGRAM MAIN