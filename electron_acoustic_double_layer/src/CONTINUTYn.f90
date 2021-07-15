      SUBROUTINE CONTINUTYn(X, Y, Z, W, C, M,  NTS, CTS)
      USE global
      IMPLICIT NONE
      REAL*8 :: X(2,NXP4), Y(2,NXP4), Z(2,NXP4), W(2,NXP4)
      INTEGER :: IC, NTS, CTS
      REAL*8  :: C, M
!----------------------------------------------------------------------
!     X   = Density of fluid
!     Y   = Velocity of fluid
!     Z   = Pressure of fluid
!     W   = Electric field in system
!     C   = Charge 
!     M   = Mass (mu)
!     NTS = (N)ext (T)ime (S)tep  
!     CTS = (C)urrent (T)ime (S)tep
!     FD0 = Density derivative (dN/dx)
!     FD1 = Velocity derivative (dV/dx)
!     FD2 = Pressure derivative (dP/dx)
!----------------------------------------------------------------------
!
      CALL FD4n(X(CTS,:), FD0(1,:))  ! density
      CALL FD4n(Y(CTS,:), FD1(1,:))  ! velocity 
      CALL FD4n(Z(CTS,:), FD2(1,:))  ! presure
!      
      DO 1 IC=3, NXP2
          X(NTS,IC)  = X(NTS,IC) - DT*(X(CTS,IC)*FD1(1,IC) &
     &     + Y(CTS,IC)*FD0(1,IC))
          Y(NTS,IC) = Y(NTS,IC) - DT*(Y(CTS,IC)*FD1(1,IC) &
     &     + FD2(1,IC)/(X(CTS,IC)*M) - W(CTS,IC)*(C/M))
          Z(NTS,IC)  = Z(NTS,IC) - DT*(Y(CTS,IC)*FD2(1,IC) &
     &      + GYM*Z(CTS,IC)*FD1(1,IC) )
    1 CONTINUE  
!
      CALL boundary_condition(X(NTS,:)) 
      CALL boundary_condition(Y(NTS,:)) 
      CALL boundary_condition(Z(NTS,:)) 
!
      CALL FILTERn(X(NTS,:))
      CALL FILTERn(Y(NTS,:))
      CALL FILTERn(Z(NTS,:))
!
      RETURN 
      END