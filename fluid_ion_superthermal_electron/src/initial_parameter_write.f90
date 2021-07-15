      SUBROUTINE initial_parameter_write
      USE global
      IMPLICIT NONE 

      INTEGER  :: date_time(8)
      CHARACTER*40 :: FNAME
      CHARACTER*30  :: VAL(3), YR, MTH, DAY, HR, MIN, SCN
      character*41 FILENAME
      character*25 format

      format ='(A2,A24,A15)'   

      open (unit=1,file="./data/Input_data.dat",action="write",status="unknown")  
      IF (DC == 11) THEN
         write(unit=1,fmt=87) 'KAPPA DISTRIBUTION'
       ELSE IF (DC == 22) THEN 
            write(unit=1,fmt=87) 'MAXWELL-BOLTZMANN DISTRIBUTION'  
       ELSE IF (DC == 33) THEN 
            write(unit=1,fmt=87) 'CAIRNS DISTRIBUTION'
       END IF
   87 format((A35,/))


    !  open (unit=1,file="./data/input_data.dat",action="write",status="unknown")  
      write(unit=1,fmt=88) 'dx =',DX,&                                             
     & 'Dt =',DT, &                                                                
     & 'Lx =',LX, &                                                                
     & 'DNe =',DNE, &                                                              
     & 'DNi =',DNI, &                                                              
     & 'N0e =',N0E, &                                                              
     & 'N0i =',N0i, &                                                              
     & 'L0e =',L0E, &                                                              
     & 'L0i =',L0I, &                                                              
     & 'L0v =',L0V, &                                                              
     & 'DNv =',DNV, &                                                              
     & 'V0 =',VX0, &                                                               
     & 'Tolerance =', TOL, &                                                       
     & 'W =', W, &                                                                 
     & 'nx =',NX, &                                                                                                                               
     & 'nt =',NTIME, &                                                             
     & 'Tidata =',TIDATA
   88 format(14(a11,f25.15,/),3(a11,I9,/))   

       IF (DC == 11) THEN
          write(unit=1,fmt=89) 'Kp =', K
       ELSE IF (DC == 22) THEN   
       ELSE IF (DC == 33) THEN 
            write(unit=1,fmt=92) 'Alp =', ALP
       END IF 
   89 format((a11,I9,/))
   92 format((a11,f25.15,/))


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

      close(unit=1) 
     
      END SUBROUTINE initial_parameter_write

