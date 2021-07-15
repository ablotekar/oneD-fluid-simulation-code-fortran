      SUBROUTINE datawriting_fft
      USE global
      IMPLICIT NONE 
      INTEGER :: IC, CJ     
      character*25 FORMAT
      character*45 FILENAME
      character*45 :: FORMAT1

      WRITE(FORMAT1,'(A1,I20,A6)')'(', NXP4,"F10.5)"
      FORMAT1=ADJUSTL(FORMAT1)

      FORMAT ='(A13,I10.10,A4)'
        
      WRITE(FILENAME,FORMAT)"./data/N/FFT_",J,".dat"      
      OPEN(UNIT=6, FILE= FILENAME, ACTION="WRITE", STATUS="REPLACE")
      DO 33 IC=1, FFTMD
         WRITE(6, FORMAT1)  (EX(IC, CJ), CJ=1,NXP4)
   33 CONTINUE
      CLOSE(UNIT=6)
      
     
      END SUBROUTINE datawriting_fft
