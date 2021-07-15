      MODULE global 
      IMPLICIT NONE 
      SAVE 
! ------------------------ REAL PARAMETERS -----------------------------
      REAL*8 :: DX, DT, LX
      REAL*8 :: NI0, NCE0, NHE0, VXI0, VXCE0, VXHE0
      REAL*8 :: TI, TCE,  THE, MI, ME, ZI, ZE, GYM
!      REAL*8 :: DNI, DNCE, DNWE, DNHE, LONI, LONCE, LONWE, LONHE
!      REAL*8 :: DVI, DVCE, DVWE, DVHE, LOVI, LOVCE, LOVWE, LOVHE
      REAL*8  :: DN, L0, DNV, L0V
! ----------------------- INTEGER PARAMETERS ---------------------------
      INTEGER :: NX, NXP1, NXP2, NXP3, NXP4
      INTEGER :: NTIME, TIDATA
      INTEGER :: J, SI
! ---------------------------- MATRIX ----------------------------------
      REAL*8,ALLOCATABLE :: NI(:,:), NCE(:,:),  NHE(:,:)
      REAL*8,ALLOCATABLE :: PI(:,:), PCE(:,:), PHE(:,:)
      REAL*8,ALLOCATABLE :: VXI(:,:), VXCE(:,:), VXHE(:,:)
      REAL*8,ALLOCATABLE :: PH(:,:), EX(:,:)
      REAL*8,ALLOCATABLE :: FD0(:,:), FD1(:,:), FD2(:,:)
      END MODULE global 