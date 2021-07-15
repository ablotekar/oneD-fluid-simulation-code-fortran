      program test
      USE global 
      implicit none
      real*8 :: A(3),B
      print *, "Hellow word"
      A(1)=1
      A(2)=2
      A(3)=3
      B = sum(A)/6
      PRINT *, B
      end program test



