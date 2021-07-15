      SUBROUTINE perturbation_gaussian
      USE global
      IMPLICIT NONE
      REAL*8  ::X1(1,NXP4), XC
      INTEGER :: IC
!
!---------------------------------------------------------------------
!   
      XC = aint(0.5*NX)+1      ! Center of the system lenght 
!--------- HOT Electron density perturbation ------------------------------      
      DO IC = 1, NXP4
         X1(1,IC)=(IC -XC)*DX/L0;  ! Argument of gaussion purturbation
      END DO 
!
         DO 121 IC = 1, NXP4
         NI(1,IC)  = NI0 + DN*NI0*exp(0-X1(1,IC)**2)
         NE(1,IC) = NE0 + DN*NE0*exp(0-X1(1,IC)**2)

         VXI(1,IC)  = VXI0 
         VXE(1,IC) = VXE0 
         
         PI(1,IC)   = NI(1,IC)*TI
         PE(1,IC)  = NE(1,IC)*TE
  121    CONTINUE
! ---- Boundary condition -------  

!
      NI(2,:)  = NI(1,:)
      NE(2,:) = NE(1,:)

      PI(2,:)  = PI(1,:)
      PE(2,:)  = PE(1,:)
    

      VXI(2,:)  = VXI(1,:)
      VXE(2,:) = VXE(1,:)
    
      CALL poisson_sol_E2(NI(2,:), NE(2,:), EX(2,:))
      CALL poisson_sol_E2(NI(1,:), NE(1,:), EX(1,:))
!
      END SUBROUTINE perturbation_gaussian
