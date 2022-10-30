PROGRAM ex0501
	IMPLICIT NONE
	  REAL(KIND=4) :: SPEED
	  WRITE(*,*)  "SPEED:"  !信息提示
	  READ(*,*)  SPEED      !读入车速
	  IF( SPEED .GT. 100.0 ) THEN  !Fortran 77 要用缩写.GT.代表大于>
	    ! SPEED>100时才会执行下面这一行程序
	    WRITE(*,*) "SLOW DOWN."
	  END IF
	STOP


END PROGRAM ex0501
