      MODULE global 
      IMPLICIT NONE 
      SAVE 
! ------------------------ REAL PARAMETERS -----------------------------
      REAL*8 :: DX, DT, LX
      REAL*8 :: NI0, NE0, VXI0, VXE0
      REAL*8 :: TI, TE,  MI, ME, ZI, ZE, GYM
      REAL*8  :: DN, L0
! ----------------------- INTEGER PARAMETERS ---------------------------
      INTEGER :: NX, NXP1, NXP2, NXP3, NXP4
      INTEGER :: NTIME, TIDATA
      INTEGER :: J
! ---------------------------- MATRIX ----------------------------------
      REAL*8,ALLOCATABLE :: NI(:,:), NE(:,:)
      REAL*8,ALLOCATABLE :: PI(:,:), PE(:,:)
      REAL*8,ALLOCATABLE :: VXI(:,:), VXE(:,:)
      REAL*8,ALLOCATABLE :: PH(:,:), EX(:,:)
      REAL*8,ALLOCATABLE :: FD0(:,:), FD1(:,:), FD2(:,:)
      END MODULE global 