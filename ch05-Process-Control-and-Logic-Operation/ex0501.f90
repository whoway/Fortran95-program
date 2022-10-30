program ex0501
	implicit none
	  real(kind=4) :: speed
	  write(*,*)  "speed:"  !信息提示
	  read(*,*)  speed      !读入车速
	  if( speed > 100.0 ) then
	    ! speed>100时才会执行下面这一行程序
	    write(*,*) "Slow down."
	  end if
	stop


end program ex0501
