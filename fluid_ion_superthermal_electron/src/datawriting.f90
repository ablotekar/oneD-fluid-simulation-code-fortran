      SUBROUTINE datawriting
      USE global
      IMPLICIT NONE 
!
      INTEGER :: IC     
      character*25 FORMAT
      character*25 FILENAME
      FORMAT ='(A11,I10.10,A4)'
 !     
      WRITE(FILENAME,FORMAT)"./data/DAT_",J,".dat"

      OPEN(UNIT=2, FILE= FILENAME, ACTION="WRITE", STATUS="REPLACE")
      DO 23 IC=1,NXP4
         WRITE(2, '(3F10.5)') (NI(1,IC)), (VX(1,IC)), (PH(1,IC))
   23 CONTINUE
 !    
      END SUBROUTINE datawriting
