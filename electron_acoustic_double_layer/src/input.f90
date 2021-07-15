      SUBROUTINE input
      USE global 
      IMPLICIT NONE
      CHARACTER*8 :: STR1, STR2

      OPEN(unit = 24, file = "Input.txt")
      OPEN(unit = 25, file = "./data/Input.dat")

      READ(24,*) STR1, STR2, LX  
      WRITE(25,*) STR1, STR2, LX       
!           
      READ(24,*) STR1, STR2, DX
      WRITE(25,*) STR1, STR2, DX        
!        
      READ(24,*) STR1, STR2, DT  
      WRITE(25,*) STR1, STR2, DT       
     
      READ(24,*) STR1, STR2, NI0 
      WRITE(25,*) STR1, STR2, NI0      
     
      READ(24,*) STR1, STR2, NCE0 
      WRITE(25,*) STR1, STR2, NCE0    
   
      NHE0 = 1-NCE0
      WRITE(25,*) 'NHE0    ', STR2, NHE0
!
      READ(24,*) STR1, STR2, TI 
      WRITE(25,*) STR1, STR2, TI      
     
      READ(24,*) STR1, STR2, TCE
      WRITE(25,*) STR1, STR2, TCE      
      
      READ(24,*) STR1, STR2, THE
      WRITE(25,*) STR1, STR2, THE

      READ(24,*) STR1, STR2, MI
      WRITE(25,*) STR1, STR2, MI

      READ(24,*) STR1, STR2, ME 
      WRITE(25,*) STR1, STR2, ME 

      READ(24,*) STR1, STR2, GYM
      WRITE(25,*) STR1, STR2, GYM

      READ(24,*) STR1, STR2, ZI
      WRITE(25,*) STR1, STR2, ZI      
      
      READ(24,*) STR1, STR2, ZE 
      WRITE(25,*) STR1, STR2, ZE     
    
      READ(24,*) STR1, STR2, DN  
      WRITE(25,*) STR1, STR2, DN      
    
      READ(24,*) STR1, STR2, L0  
      WRITE(25,*) STR1, STR2, L0  

      READ(24,*) STR1, STR2, DNV 
      WRITE(25,*) STR1, STR2, DNV      
    
      READ(24,*) STR1, STR2, L0V  
      WRITE(25,*) STR1, STR2, L0V  

      READ(24,*) STR1, STR2, TIDATA    
      WRITE(25,*) STR1, STR2, TIDATA      
  
      READ(24,*) STR1, STR2, NTIME
      WRITE(25,*) STR1, STR2, NTIME

      READ(24,*) STR1, STR2, SI
      WRITE(25,*) STR1, STR2, SI

      NX      = aint(LX/DX)+1 
      NXP1    = NX+1
      NXP2    = NX+2
      NXP3    = NX+3
      NXP4    = NX+4
      CLOSE(unit = 24)
      CLOSE(unit = 25)

      END SUBROUTINE input