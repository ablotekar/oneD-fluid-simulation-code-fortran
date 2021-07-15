      SUBROUTINE input
      USE global 
      IMPLICIT NONE
      CHARACTER*8 :: STR1, STR2

      OPEN(unit = 24, file = "Input.txt")

      READ(24,*) STR1, STR2, LX       
      READ(24,*) STR1, STR2, DX        
      READ(24,*) STR1, STR2, DT       
      READ(24,*) STR1, STR2, NI0      
      READ(24,*) STR1, STR2, NE0    
      READ(24,*) STR1, STR2, TI      
      READ(24,*) STR1, STR2, TE      
      READ(24,*) STR1, STR2, MI
      READ(24,*) STR1, STR2, ME 
      READ(24,*) STR1, STR2, GYM
      READ(24,*) STR1, STR2, ZI      
      READ(24,*) STR1, STR2, ZE     
      READ(24,*) STR1, STR2, DN      
      READ(24,*) STR1, STR2, L0  
      READ(24,*) STR1, STR2, TIDATA      
      READ(24,*) STR1, STR2, NTIME
      NX      = aint(LX/DX)+1 
      NXP1    = NX+1
      NXP2    = NX+2
      NXP3    = NX+3
      NXP4    = NX+4
      CLOSE(unit = 24)
      CALL SYSTEM('cp Input.txt ./data/')
      END SUBROUTINE input