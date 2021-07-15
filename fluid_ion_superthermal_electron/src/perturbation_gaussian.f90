      SUBROUTINE perturbation_gaussian
      USE global
      IMPLICIT NONE
      REAL*8  ::X1(1,NX)
      INTEGER :: IC
!
!---------------------------------------------------------------------
!   
      XC = aint(0.5*NX)      ! Center of the system lenght 
!--------- Electron density perturbation ------------------------------      
      DO IC = 1, NX
         X1(1,IC)=(IC -XC)*DX/L0E;  ! Argument of gaussion purturbation
      END DO 
!
         DO 11 IC = 3, NXP2
         NE(1,IC) = N0E + DNE*N0E*exp(0-X1(1,IC-2)**2)
   11    CONTINUE
! ---- Boundary condition -------  
      NE(1,1)      = NE(1,NXP1)
      NE(1,2)      = NE(1,NXP2)
      NE(1,NXP3)   = NE(1,3)
      NE(1,NXP4)   = NE(1,4)
!
      NE(2,:) = NE(1,:)
! -------------- Ion density perturbation ----------------------------
      DO IC = 1, NX
         X1(1,IC)=(IC -XC)*DX/L0I;  ! Argument of gaussion purturbation
      END DO 
!
         DO 191 IC = 3, NXP2
         NI(1,IC) = N0I + DNI*N0I*exp(0-X1(1,IC-2)**2)
  191   CONTINUE 
! ---- Boundary condition ------- 
      NI(1,1)      = NI(1,NXP1)
      NI(1,2)      = NI(1,NXP2)
      NI(1,NXP3)   = NI(1,3)
      NI(1,NXP4)   = NI(1,4)
!
      NI(2,:) = NI(1,:)
! --------- Velocity perutrubation -----------------------------------
      DO IC = 1, NX
         X1(1,IC)=(IC -XC)*DX/L0V;  ! Argument of gaussion purturbation
      END DO 
!
           DO 13 IC = 3, NXP2
                 VX(1,IC) = VX0 +  DNV*exp(0-X1(1,IC-2)**2)
                 VX(2,IC) = VX(1,IC)
   13      CONTINUE
! ---- Boundary condition ------- 
      VX(1,1)      = VX(1,NXP1)
      VX(1,2)      = VX(1,NXP2)
      VX(1,NXP3)   = VX(1,3)
      VX(1,NXP4)   = VX(1,4)
!
! ------- Calculating "Phi" form the initial purturbation -------------
          DO 553 IC = 3, NXP2
          PH(1,IC+1) = 2*PH(1,IC) - PH(1,IC-1) - DX*DX*(NI(1,IC) - NE(1,IC))
  553     CONTINUE
! ---- Boundary condition ------- 
      PH(1,1)      = PH(1,NXP1)
      PH(1,2)      = PH(1,NXP2)
      PH(1,NXP3)   = PH(1,3)
      PH(1,NXP4)   = PH(1,4)
!
      PH(2,:) = PH(1,:)    
!
      END SUBROUTINE perturbation_gaussian
