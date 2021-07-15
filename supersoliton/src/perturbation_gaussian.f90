      SUBROUTINE perturbation_gaussian
      USE global
      IMPLICIT NONE
      REAL*8  ::X1(1,NX)
      INTEGER :: IC
!
!---------------------------------------------------------------------
!   
      XC = aint(0.5*NX)      ! Center of the system lenght 
!--------- HOT Electron density perturbation ------------------------------      
      DO IC = 1, NX
         X1(1,IC)=(IC -XC)*DX/L0EH;  ! Argument of gaussion purturbation
      END DO 
!
         DO 121 IC = 3, NXP2
         NEH(1,IC) = N0EH + DNEH*N0EH*exp(0-X1(1,IC-2)**2)
  121    CONTINUE
! ---- Boundary condition -------  
      NEH(1,1)      = NEH(1,NXP1)
      NEH(1,2)      = NEH(1,NXP2)
      NEH(1,NXP3)   = NEH(1,3)
      NEH(1,NXP4)   = NEH(1,4)
!
      NEH(2,:) = NEH(1,:)
!--------- COLD Electron density perturbation ------------------------------      
      DO IC = 1, NX
         X1(1,IC)=(IC -XC)*DX/L0EC;  ! Argument of gaussion purturbation
      END DO 
!
         DO 11 IC = 3, NXP2
         NEC(1,IC) = N0EC + DNEC*N0EC*exp(0-X1(1,IC-2)**2)
   11    CONTINUE
! ---- Boundary condition -------  
      NEC(1,1)      = NEC(1,NXP1)
      NEC(1,2)      = NEC(1,NXP2)
      NEC(1,NXP3)   = NEC(1,3)
      NEC(1,NXP4)   = NEC(1,4)
!
      NEC(2,:) = NEC(1,:)      
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
          PH(1,IC+1) =  2*PH(1,IC) - PH(1,IC-1) - DX*DX*(NI(1,IC) - NEH(1,IC)- NEC(1,IC))
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
