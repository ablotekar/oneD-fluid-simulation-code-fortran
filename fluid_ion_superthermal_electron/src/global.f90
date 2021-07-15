      MODULE global
      IMPLICIT NONE
      SAVE
      REAL*8,ALLOCATABLE :: NI(:,:), NE(:,:), VX(:,:), PH(:,:), FFT(:,:)
      REAL*8,ALLOCATABLE :: EX(:,:), FD0(:,:), FD1(:,:), FD2(:,:)
      REAL*8,ALLOCATABLE :: PHM(:,:), VXM(:,:), NIM(:,:),NEM(:,:)


      INTEGER   :: NX
      INTEGER   :: K,  NXP1, NXP2, NXP3, NXP4, J, CJ
      INTEGER   :: TIDATA, NTIME, FFTSRT, TIMAT, TRES
      INTEGER   :: CC, PRC, DC

      REAL*8    :: DX, DT, LX, P, B, XC, DN, EX0, T1, T2, LO, TOL, W
      REAL*8    :: NE0, NI0, DNE, DNI, L0E, L0I, VX0, DNV, L0V
      REAL*8    :: N0E, N0I, BT, ALP
   
      END MODULE global
