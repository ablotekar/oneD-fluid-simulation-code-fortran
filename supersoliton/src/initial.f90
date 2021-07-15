      SUBROUTINE initial
      USE global
      IMPLICIT NONE
!---------------------------------------------------------------------
!VARIABLES
!---------------------------------------------------------------------

      ALLOCATE( NI(2,NXP4),        &
     &          NEH(2,NXP4),       &
     &          NEC(2,NXP4),       &
     &          VX(2,NXP4),        &
     &          PH(2,NXP4),        &
     &          FD0(1,NXP4),       &
     &          FD1(1,NXP4),       &
     &          FD2(1,NXP4))

      IF (CC==2) THEN
      ALLOCATE( PHM(TIMAT,NXP4),   &
     &          VXM(TIMAT, NXP4),  &
     &          NEHM(TIMAT,NXP4),  &
     &          NECM(TIMAT,NXP4),  &
     &          NIM(TIMAT,NXP4))
      END IF 
   
      NI(:,:)  = NI(:,:)*0
      NEH(:,:) = NEH(:,:)*0
      NEC(:,:) = NEC(:,:)*0      
      PH(:,:)  = PH(:,:)*0
      VX(:,:)  = Vx(:,:)*0
      FD0(:,:) = FD0(:,:)*0
      FD1(:,:) = FD1(:,:)*0
      FD2(:,:) = FD2(:,:)*0

      IF (CC==2) THEN
         PHM(:,:) = PHM(:,:)*0
         VXM(:,:) = VXM(:,:)*0
         NIM(:,:) = NIM(:,:)*0
         NEHM(:,:) = NEHM(:,:)*0
         NECM(:,:) = NECM(:,:)*0
      END IF 
      



      END SUBROUTINE initial
