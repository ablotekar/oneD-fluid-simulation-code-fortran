      SUBROUTINE initial_parameter_write
      USE global
      IMPLICIT NONE 

      INTEGER  :: date_time(8)
      CHARACTER*40 :: FNAME
      CHARACTER*30  :: VAL(3), YR, MTH, DAY, HR, MIN, SCN
      character*41 FILENAME
      character*25 format


      format ='(A2,A24,A15)'
      
      write(FILENAME,format)"./",FOLDERN,"/input_data.dat"

      open (unit=1,file=FILENAME,action="write",status="unknown")
      IF (DC == 11) THEN
         write(unit=1,fmt=87) 'KAPPA DISTRIBUTION'
       ELSE IF (DC == 22) THEN 
            write(unit=1,fmt=87) 'MAXWELL-BOLTZMANN DISTRIBUTION'  
       ELSE IF (DC == 33) THEN 
            write(unit=1,fmt=87) 'CAIRNS DISTRIBUTION'
       END IF
   87 format((A35,/))
        
      write(unit=1,fmt=88) 'dx =',DX,&
     & 'dt =',DT, &
     & 'Lx =',LX, &
     & 'Tu =',TU, &
     & 'f =',F, &          
     & 'DNeh =',DNEH, &
     & 'DNec =',DNEC, &
     & 'DNi =',DNI, &
     & 'N0eh =',N0EH, &
     & 'N0ec =',N0EC, &     
     & 'N0i =',N0i, &
     & 'L0eh =',L0EH, &
     & 'L0ec =',L0EC, &     
     & 'L0i =',L0I, &
     & 'L0v =',L0V, &
     & 'DNv =',DNV, &
     & 'V0 =',VX0, &
     & 'Tolerance =', TOL, & 
     & 'W =', W, & 
     & 'nx =',NX, &
     & 'TiData =',TIDATA, &
     & 'Nt =',NTIME, &
     & 'Tres =', TRES    
   88 format(19(a12,f25.15,/),4(a12,I10,/))
       IF (DC == 11) THEN
          write(unit=1,fmt=89) 'Kpeh =', KH, &
     & 'KpeC =', KC
       ELSE IF (DC == 22) THEN   
       ELSE IF (DC == 33) THEN 
            write(unit=1,fmt=92) 'Alph =', ALPH, &
     & 'AlpC =', ALPC
       END IF 
   89 format(2(a12,I10,/))
   92 format(2(a12,f25.15,/))


      CALL DATE_AND_TIME(VAL(1),VAL(2),VAL(3),DATE_TIME)
      WRITE (YR , "(I4)") DATE_TIME(1)
      WRITE (MTH, "(I2.2)") DATE_TIME(2) 
      WRITE (DAY, "(I2.2)") DATE_TIME(3) 
      WRITE (HR, "(I2.2)") DATE_TIME(5) 
      WRITE (MIN, "(I2.2)") DATE_TIME(6) 
      WRITE (SCN, "(I2.2)") DATE_TIME(7)
      FNAME = 'Date & Time '//TRIM(DAY)//'/'//TRIM(MTH)//'/'//TRIM(YR)//'  '//TRIM(HR) &
     & //':'//TRIM(MIN)//':'//TRIM(SCN)   
        write(unit=1,fmt=90) FNAME
   90 format((A40,/))

      IF (PRC == 1) THEN
         write(unit=1,fmt=91) 'GAUSSIAN PERTURBATION'
       ELSE IF (PRC == 2) THEN 
            write(unit=1,fmt=91) 'STEP FUNCTON PERTURBATION'  
       END IF
   91 format((A35,/))


      close(unit=1)
     
      END SUBROUTINE initial_parameter_write

