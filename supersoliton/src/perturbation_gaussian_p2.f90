      SUBROUTINE perturbation_gaussian_p2
      USE global
      IMPLICIT NONE
      REAL*8  ::X1(1,NX), DNEH2, DNEC2, DNI2, DNV2
      REAL*8   :: L0EH2, L0EC2, L0I2, L0V2
      INTEGER :: IC
! 
      DNEH2 = 0.2D0
      DNEC2 = 0.2D0
      DNI2  = 0.2D0
      DNV2  = -0.1D0
      L0EH2 = 10D0
      L0EC2 = 10D0
      L0I2  = 10D0
      L0V2  = 20D0
      !---------------------------------------------------------------------
!   
      XC = 2125/DX ! aint(0.5*NX) + 10000     ! Center of the system lenght 
!--------- HOT Electron density perturbation ------------------------------      
      DO IC = 1, NX
         X1(1,IC)=(IC -XC)*DX/L0EH2;  ! Argument of gaussion purturbation
      END DO 
!
         DO 121 IC = 3, NXP2
         NEH(1,IC) = NEH(1,IC) + DNEH2*N0EH*exp(0-X1(1,IC-2)**2)
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
         X1(1,IC)=(IC -XC)*DX/L0EC2;  ! Argument of gaussion purturbation
      END DO 
!
         DO 11 IC = 3, NXP2
         NEC(1,IC) = NEC(1,IC) + DNEC2*N0EC*exp(0-X1(1,IC-2)**2)
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
         X1(1,IC)=(IC -XC)*DX/L0I2;  ! Argument of gaussion purturbation
      END DO 
!
         DO 191 IC = 3, NXP2
         NI(1,IC) = NI(1,IC) + DNI2*N0I*exp(0-X1(1,IC-2)**2)
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
         X1(1,IC)=(IC -XC)*DX/L0V2;  ! Argument of gaussion purturbation
      END DO 
!
           DO 13 IC = 3, NXP2
                 VX(1,IC) = VX(1,IC) +  DNV2*exp(0-X1(1,IC-2)**2)
                 VX(2,IC) = VX(1,IC)
   13      CONTINUE
! ---- Boundary condition ------- 
      VX(1,1)      = VX(1,NXP1)
      VX(1,2)      = VX(1,NXP2)
      VX(1,NXP3)   = VX(1,3)
      VX(1,NXP4)   = VX(1,4)
!
! ------- Calculating "Phi" form the initial purturbation -------------
!          DO 553 IC = 3, NXP2
!          PH(1,IC+1) =  2*PH(1,IC) - PH(1,IC-1) - DX*DX*(NI(1,IC) - NEH(1,IC)- NEC(1,IC))
!  553     CONTINUE
! ---- Boundary condition ------- 
!      PH(1,1)      = PH(1,NXP1)
!      PH(1,2)      = PH(1,NXP2)
!      PH(1,NXP3)   = PH(1,3)
!      PH(1,NXP4)   = PH(1,4)
!
!      PH(2,:) = PH(1,:)    
!
      END SUBROUTINE perturbation_gaussian_p2
