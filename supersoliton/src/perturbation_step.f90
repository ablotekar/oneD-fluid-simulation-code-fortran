      SUBROUTINE perturbation_step
      USE global
      IMPLICIT NONE
      REAL*8  ::X1(1,NX)
      INTEGER :: IC, CL0EH, CL0EC, CL0I, CL0V
!
!---------------------------------------------------------------------
!   
      XC = aint(0.5*NX)      ! Center of the system lenght 

!--------- HOT Electron density perturbation ------------------------------      
      CL0EH = aint(0.5*L0EH)      ! Center of PERTURBATION WIDHT

!
      DO 121 IC=3, NXP2
          IF ((IC < XC-CL0EH) .OR. (IC > XC+CL0EH)) THEN
             NEH(1,IC) = N0EH;
          ELSE
             NEH(1,IC) = N0EH + N0EH*DNEH;
          END IF 
  121 CONTINUE


! ---- Boundary condition -------  
      NEH(1,1)      = NEH(1,NXP1)
      NEH(1,2)      = NEH(1,NXP2)
      NEH(1,NXP3)   = NEH(1,3)
      NEH(1,NXP4)   = NEH(1,4)
!
      NEH(2,:) = NEH(1,:)
!--------- COLD Electron density perturbation ------------------------------      
      CL0EC = aint(0.5*L0EC)      ! Center of PERTURBATION WIDHT

!
      DO 11 IC=3, NXP2
          IF ((IC < XC-CL0EC) .OR. (IC > XC+CL0EC)) THEN
             NEC(1,IC) = N0EC;
          ELSE
             NEC(1,IC) = N0EC + N0EC*DNEC;
          END IF 
  11  CONTINUE


! ---- Boundary condition -------  
      NEC(1,1)      = NEC(1,NXP1)
      NEC(1,2)      = NEC(1,NXP2)
      NEC(1,NXP3)   = NEC(1,3)
      NEC(1,NXP4)   = NEC(1,4)
!
      NEC(2,:) = NEC(1,:)      
! -------------- Ion density perturbation ----------------------------
      CL0I = aint(0.5*L0I)      ! Center of PERTURBATION WIDHT

!
      DO 191 IC=3, NXP2
          IF ((IC < XC-CL0I) .OR. (IC > XC+CL0I)) THEN
             NI(1,IC) = N0I;
          ELSE
             NI(1,IC) = N0I + N0I*DNI;
          END IF 
  191 CONTINUE


! ---- Boundary condition ------- 
      NI(1,1)      = NI(1,NXP1)
      NI(1,2)      = NI(1,NXP2)
      NI(1,NXP3)   = NI(1,3)
      NI(1,NXP4)   = NI(1,4)
!
      NI(2,:) = NI(1,:)
! --------- Velocity perutrubation -----------------------------------
      CL0V = aint(0.5*L0V)      ! Center of PERTURBATION WIDHT

!
      DO 13 IC=3, NXP2
          IF ((IC < XC-CL0V) .OR. (IC > XC+CL0V)) THEN
             VX(1,IC) = VX0;
          ELSE
             VX(1,IC) = VX0 + DNV;
          END IF 
  13  CONTINUE


! ---- Boundary condition ------- 
      VX(1,1)      = VX(1,NXP1)
      VX(1,2)      = VX(1,NXP2)
      VX(1,NXP3)   = VX(1,3)
      VX(1,NXP4)   = VX(1,4)
!
! ------- Calculating "Phi" form the initial purturbation -------------
          DO 553 IC = 3, NXP2
          PH(1,IC+1) = 2*PH(1,IC) - PH(1,IC-1) - DX*DX*(NI(1,IC) - NEH(1,IC)- NEC(1,IC))
  553     CONTINUE
! ---- Boundary condition ------- 
      PH(1,1)      = PH(1,NXP1)
      PH(1,2)      = PH(1,NXP2)
      PH(1,NXP3)   = PH(1,3)
      PH(1,NXP4)   = PH(1,4)
!
      PH(2,:) = PH(1,:)    
!
      END SUBROUTINE perturbation_step
