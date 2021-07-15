      SUBROUTINE datawriting
      USE global
      IMPLICIT NONE 
      INTEGER :: IC     
      character*25 FORMATN, FORMATV, FORMATP, FORMATE
      character*45 FILENAMEN, FILENAMEV, FILENAMEP, FILENAMEE
      FORMATN ='(A11,I10.10,A4)'
      FORMATV ='(A13,I10.10,A4)'
      FORMATP ='(A11,I10.10,A4)'
      FORMATE ='(A13,I10.10,A4)'

      
      WRITE(FILENAMEN,FORMATN)"./data/N/N_",J,".dat"
      WRITE(FILENAMEV,FORMATV)"./data/VX/VX_",J,".dat"
      WRITE(FILENAMEP,FORMATP)"./data/P/P_",J,".dat"
      WRITE(FILENAMEE,FORMATE)"./data/EX/EX_",J,".dat"
      

      OPEN(UNIT=2, FILE= FILENAMEN, ACTION="WRITE", STATUS="REPLACE")
      OPEN(UNIT=3, FILE= FILENAMEV, ACTION="WRITE", STATUS="REPLACE")
      OPEN(UNIT=4, FILE= FILENAMEP, ACTION="WRITE", STATUS="REPLACE")
      OPEN(UNIT=5, FILE= FILENAMEE, ACTION="WRITE", STATUS="REPLACE")

      DO 23 IC=1,NXP4
         !PH(1,IC) = 0
         WRITE(2, '(3F14.9)') (NI(1,IC)), (NHE(1,IC)), (NCE(1,IC))
         WRITE(3, '(3F14.9)')  (VXI(1,IC)), (VXHE(1,IC)), (VXCE(1,IC))
         WRITE(4, '(3F14.9)')  (PI(1,IC)), (PHE(1,IC)), (PCE(1,IC))
         WRITE(5, '(2F14.9)')  (EX(1,IC)), (PH(1,IC))
   23 CONTINUE
      CLOSE(UNIT=2)
      CLOSE(UNIT=3)
      CLOSE(UNIT=4)
      CLOSE(UNIT=5)
     
      END SUBROUTINE datawriting
