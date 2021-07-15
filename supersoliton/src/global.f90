      MODULE global
      IMPLICIT NONE
      SAVE
      REAL*8,ALLOCATABLE :: NI(:,:), NEH(:,:), NEC(:,:), VX(:,:)
      REAL*8,ALLOCATABLE :: FD0(:,:), FD1(:,:), FD2(:,:)
      REAL*8,ALLOCATABLE :: PHM(:,:), VXM(:,:), NIM(:,:)
      REAL*8,ALLOCATABLE :: NEHM(:,:), NECM(:,:), PH(:,:)
      REAL*8 :: BTH, BTC, ALPH, ALPC


      INTEGER   :: NX, KH, KC, DC, PRC
      INTEGER   :: CC,  NXP1, NXP2, NXP3, NXP4, J, CJ
      INTEGER   :: TIDATA, NTIME, FFTSRT, TIMAT, TRES

      REAL*8    :: DX, DT, LX, PHE, BH, XC, DN, EX0, T1, T2, LO, TOL, W
      REAL*8    :: NEH0, NEC0, NI0, DNEH, DNEC, DNI, L0EH, L0EC, L0I
      REAL*8    :: N0EH, N0EC, N0I, L0V, DNV, PC, BC, TU, F, VX0
      CHARACTER*24 :: FOLDERN

   
      END MODULE global
