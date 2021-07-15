      SUBROUTINE out_dir
      USE global
      INTEGER  :: date_time(8)
      CHARACTER*30  :: VAL(3), YR, MTH, DAY, HR, MIN, SCN

      CALL DATE_AND_TIME(VAL(1),VAL(2),VAL(3),DATE_TIME)
      WRITE (YR , "(I4)") DATE_TIME(1)
      WRITE (MTH, "(I2.2)") DATE_TIME(2) 
      WRITE (DAY, "(I2.2)") DATE_TIME(3) 
      WRITE (HR, "(I2.2)") DATE_TIME(5) 
      WRITE (MIN, "(I2.2)") DATE_TIME(6) 
      WRITE (SCN, "(I2.2)") DATE_TIME(7)
      FOLDERN = 'DATA_'//TRIM(YR)//'_'//TRIM(MTH)//'_'//TRIM(DAY)//'_'//TRIM(HR) &
      //'_'//TRIM(MIN)//'_'//TRIM(SCN)  
!
      CALL SYSTEM('mkdir -p '//FOLDERN)
      END SUBROUTINE out_dir