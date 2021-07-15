      PROGRAM main   
      USE global
      INTEGER  ::IC, FC

      CALL input
      CALL initial_parameter_write
      CALL counter
      CALL constants
      CALL initial
      CALL perturbation_gaussian
      J=0
      CALL datawriting
!C === Main Loop =======================================================
      IF (CC==1) THEN
           IF (DC == 11) THEN
           CALL main_vector_kappa
           ELSE IF (DC == 22) THEN
           CALL main_vector_mb
           ELSE IF (DC == 33) THEN 
           CALL main_vector_cairn
           END IF 
      ELSE IF (CC==2) THEN

           IF (DC == 11) THEN
           CALL main_matrix_kappa
           ELSE IF (DC == 22) THEN
           CALL main_matrix_mb
           ELSE IF (DC == 33) THEN 
           CALL main_matrix_cairn
           END IF 
      
      END IF

      END PROGRAM main 




