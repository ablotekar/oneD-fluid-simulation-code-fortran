      SUBROUTINE perturbation_gaussian
      USE global
      IMPLICIT NONE
      REAL*8  ::X1(1,NXP4), X2(1,NXP4), XC
      INTEGER :: IC
!
!---------------------------------------------------------------------
!   
      XC = aint(0.5*NX)+1      ! Center of the system lenght 
!--------- HOT Electron density perturbation ------------------------------      
      DO IC = 1, NXP4
         X1(1,IC)=(IC -XC)*DX/L0;  ! Argument of gaussion purturbation
         X2(1,IC)=(IC -XC)*DX/L0V;  ! Argument of gaussion purturbation         
      END DO 
!
         DO 121 IC = 1, NXP4
         NI(1,IC)  = NI0 + DN*NI0*exp(0-X1(1,IC)**2)
         NCE(1,IC) = NCE0 + DN*NCE0*exp(0-X1(1,IC)**2)
         NHE(1,IC) = NHE0 + DN*NHE0*exp(0-X1(1,IC)**2)

         VXI(1,IC)  = VXI0 + DNV*exp(0-X2(1,IC)**2)
         VXCE(1,IC) = VXCE0 + DNV*exp(0-X2(1,IC)**2)
         VXHE(1,IC) = VXHE0 + DNV*exp(0-X2(1,IC)**2)

         PI(1,IC)   = NI(1,IC)*TI
         PCE(1,IC)  = NCE(1,IC)*TCE
         PHE(1,IC)  = NHE(1,IC)*THE

  121    CONTINUE
! ---- Boundary condition -------  

!
      NI(2,:)  = NI(1,:)
      NCE(2,:) = NCE(1,:)
      NHE(2,:) = NHE(1,:)

      PI(2,:)  = PI(1,:)
      PCE(2,:) = PCE(1,:)
      PHE(2,:) = PHE(1,:)

      VXI(2,:)  = VXI(1,:)
      VXCE(2,:) = VXCE(1,:)
      VXHE(2,:) = VXHE(1,:)
      

      CALL poisson_sol_E2(NI(2,:), NCE(2,:),NHE(2,:), EX(2,:))
      CALL poisson_sol_E2(NI(1,:), NCE(1,:), NHE(1,:), EX(1,:))
!
      END SUBROUTINE perturbation_gaussian
