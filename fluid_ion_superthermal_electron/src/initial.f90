      SUBROUTINE initial
      USE global
      IMPLICIT NONE
!----------------------------------------------------------------------
!VARIABLES
!----------------------------------------------------------------------

      ALLOCATE( FD0(1,NXP4),     &
     &          FD1(1,NXP4),     &
     &          FD2(1,NXP4),     &
     &          FFT(TIMAT,NXP4) )
!     
      ALLOCATE( NI(2,NXP4),      &
     &          NE(2,NXP4),      &
     &          VX(2,NXP4),      &
     &          PH(2,NXP4) )
!     
      IF (CC==2) THEN
      ALLOCATE( PHM(TIMAT,NXP4), & 
     &          VXM(TIMAT, NXP4),&
     &          NEM(TIMAT,NXP4), &
     &          NIM(TIMAT,NXP4) )
      END IF
!   
      FD0(:,:) = FD0(:,:)*0
      FD1(:,:) = FD1(:,:)*0
      FD2(:,:) = FD2(:,:)*0
      FFT(:,:) = FFT(:,:)*0
!
      NI(:,:)  = NI(:,:)*0
      NE(:,:)  = NE(:,:)*0
      PH(:,:)  = PH(:,:)*0
      VX(:,:)  = Vx(:,:)*0
!
      IF (CC==2) THEN
         PHM(:,:) = PHM(:,:)*0
         VXM(:,:) = VXM(:,:)*0
         NIM(:,:) = NIM(:,:)*0
         NEM(:,:) = NEM(:,:)*0
      END IF   
!     
      END SUBROUTINE initial
