      SUBROUTINE real_unit
      USE global
      IMPLICIT NONE
      DX = DXR
      DT = DTR

      NI   = NI/dx
      NCE  = NCE/dx
      NHE  = NHE/dx

      VXI  = VXI/(dt/(2*dx))
      VXCE = VXCE/(dt/(2*dx))
      VXHE = VXHE/(dt/(2*dx))  

      PI   = PI/((dt**4)/(16*dx))   
      PCE  = PCE/((dt**4)/(16*dx))   
      PHE  = PHE/((dt**4)/(16*dx))   

      EX    = EX/((dt**2)/(4*dx))
      PH  = PH*((dt**2)/(4*dx**2))  
   
      ME   = ME/((dt**4)/(4*dx))   
      MI   = MI/((dt**4)/(4*dx))  

      ZE   = ZE/((dt**4)/(4*dx))   
      ZI   = ZI/((dt**4)/(4*dx))
      
      END SUBROUTINE real_unit
