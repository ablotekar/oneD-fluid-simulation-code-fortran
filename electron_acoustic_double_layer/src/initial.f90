      SUBROUTINE initial
      USE global
      IMPLICIT NONE
!---------------------------------------------------------------------
!     VARIABLES
!---------------------------------------------------------------------
!
      ALLOCATE( NI(2,NXP4),        &
     &          NCE(2,NXP4),       &
     &          NHE(2,NXP4))  
!
      ALLOCATE( PI(2,NXP4),        &
     &          PCE(2,NXP4),       &
     &          PHE(2,NXP4)) 
!
      ALLOCATE( VXI(2,NXP4),       &
     &          VXCE(2,NXP4),      &
     &          VXHE(2,NXP4))  
 !    
      ALLOCATE( PH(2,NXP4),        &
     &          EX(2,NXP4))
!
      ALLOCATE( FD0(1,NXP4),       &
     &          FD1(1,NXP4),       &
     &          FD2(1,NXP4))
!
      NI(:,:)   = NI(:,:)*0
      NCE(:,:)  = NCE(:,:)*0
      PI(:,:)   = PI(:,:)*0
      PCE(:,:)  = PCE(:,:)*0
      PHE(:,:)  = PHE(:,:)*0
      VXI(:,:)  = VXI(:,:)*0
      VXCE(:,:) = VXCE(:,:)*0
      VXHE(:,:) = VXHE(:,:)*0
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
