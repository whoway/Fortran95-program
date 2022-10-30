program ex0813
	implicit none
	  real a
	  common a  !把浮点数放在全局变量中
	  a=1.0
	  call ShowCommon()
	  stop

end program ex0813

subroutine ShowCommon()
	implicit none
	  integer a
	  common a  !把整数放在全局变量中
	  write(*,*) a
	return

end subroutine ShowCommon
