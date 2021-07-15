      SUBROUTINE initial
      USE global
      IMPLICIT NONE
!---------------------------------------------------------------------
!     VARIABLES
!---------------------------------------------------------------------
!
      ALLOCATE( NI(2,NXP4),        &
     &          NE(2,NXP4))  
!
      ALLOCATE( PI(2,NXP4),        &
     &          PE(2,NXP4)) 
!
      ALLOCATE( VXI(2,NXP4),       &
     &          VXE(2,NXP4))  
 !    
      ALLOCATE( PH(2,NXP4),        &
     &          EX(2,NXP4))
!
      ALLOCATE( FD0(1,NXP4),       &
     &          FD1(2,NXP4),       &
     &          FD2(2,NXP4))
!
      NI(:,:)   = NI(:,:)*0
      NE(:,:)   = NE(:,:)*0
      PI(:,:)   = PI(:,:)*0
      PE(:,:)   = PE(:,:)*0
      VXI(:,:)  = VXI(:,:)*0
      VXE(:,:) = VXE(:,:)*0
      PH(:,:)   = PH(:,:)*0
      EX(:,:)   = EX(:,:)*0
      FD0(:,:)  = FD0(:,:)*0
      FD1(:,:)  = FD1(:,:)*0
      FD2(:,:)  = FD2(:,:)*0
      CALL SYSTEM('mkdir -p ./data/N')
      CALL SYSTEM('mkdir -p ./data/VX')
      CALL SYSTEM('mkdir -p ./data/P')
      CALL SYSTEM('mkdir -p ./data/EX')
!
      END SUBROUTINE initial
