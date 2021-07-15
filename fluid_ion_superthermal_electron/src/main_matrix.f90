      SUBROUTINE main_matrix   
      USE global
      INTEGER  ::IC, FC

      FC=1
!C === Main Loop =======================================================
      DO 99 J = 1, NTIME

!C---- Computation of parameter at integral time steps -----------------
      CALL FD4n(VX(1,:), FD0(1,:))
      CALL FD4n(NI(1,:), FD1(1,:))
      CALL FD4n(PH(1,:), FD2(1,:))

      DO 17 IC = 3, NXP2
         NI(2,IC) = NI(2,IC) - DT*(NI(1,IC)*FD0(1,IC)+ VX(1,IC)*FD1(1,IC)) 
         VX(2,IC) = VX(2,IC) - DT*(VX(1,IC)*FD0(1,IC) + FD2(1,IC))
   17 CONTINUE

!C---- Boundary condition ------- 
      NI(2,1)      = NI(2,NXP1)
      NI(2,2)      = NI(2,NXP2)
      NI(2,NXP3)   = NI(2,3)
      NI(2,NXP4)   = NI(2,4)
!C
      VX(2,1)      = VX(2,NXP1)
      VX(2,2)      = VX(2,NXP2)
      VX(2,NXP3)   = VX(2,3)
      VX(2,NXP4)   = VX(2,4)
!C---- FILTERING -------------------------------------------------------         
      CALL FILTERn(NI(2,:))
      CALL FILTERn(VX(2,:))
!c---- Giving initla value --------------------------------------------- 
      PH(2,:) = PH(1,:)
!C --- Poisson solveer -------------------------------------------------  
      CALL POISSON_SOL(PH(2,:), NI(2,:))
!C---- FILTERING -------------------------------------------------------        
      CALL FILTERn(PH(2,:))
!
!C---- Computation of parameter at HALF integral time steps ------------
      CALL FD4n(VX(2,:), FD0(1,:))
      CALL FD4n(NI(2,:), FD1(1,:))
      CALL FD4n(PH(2,:), FD2(1,:))
!C
      DO 20 IC = 3, NXP2
         NI(1,IC) = NI(1,IC) - DT*(NI(2,IC)*FD0(1,IC) + VX(2,IC)*FD1(1,IC)) 
         VX(1,IC) = VX(1,IC) - DT*(VX(2,IC)*FD0(1,IC) + FD2(1,IC))
   20 CONTINUE
!C---- Boundary condition ------- 
      NI(1,1)      = NI(1,NXP1)
      NI(1,2)      = NI(1,NXP2)
      NI(1,NXP3)   = NI(1,3)
      NI(1,NXP4)   = NI(1,4)
!C
      VX(1,1)      = VX(1,NXP1)
      VX(1,2)      = VX(1,NXP2)
      VX(1,NXP3)   = VX(1,3)
      VX(1,NXP4)   = VX(1,4)
!C
!C---- FILTERING -------------------------------------------------------        
      CALL FILTERn(NI(1,:))
      CALL FILTERn(VX(1,:))
!c---- Giving initla value --------------------------------------------- 
      PH(1,:) = PH(2,:)
!C   
      CALL POISSON_SOL(PH(1,:), NI(1,:))
!C---- FILTERING -------------------------------------------------------        
      CALL FILTERn(PH(1,:))

      IF (MOD(J,TRES)==0) THEN 
      DO 203 IC=1,NXP4
          PHM(FC,IC) = PH(1,IC)
          VXM(FC,IC) = VX(1,IC)
          NIM(FC,IC) = NI(1,IC)
!         NEM(FC,IC) = NE(1,IC)
  203 CONTINUE
      FC=FC+1
      END IF

      IF ((MOD(J, TIDATA)==0) .AND. (J .GE. FFTSRT)) THEN 
      CALL datawriting_matrix
      FC=1
      END IF

   99 CONTINUE


      END SUBROUTINE main_matrix




