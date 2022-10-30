program ex0821
	implicit none
	  real, external :: func  !声明func是个自定义函数
	  real, intrinsic :: sin  !声明sin是库函数

	  call ExecFunc(func) !输入自定义函数func
	  call ExecFunc(sin)  !输入库函数sin

	stop

end program ex0821

subroutine ExecFunc( f )
	implicit none
	  real, external :: f !声明参数f是个函数
	  write(*,*) f(1.0)   !执行输入的函数f
	return 
end subroutine ExecFunc

real function func( num )
	implicit none
	  real :: num
	  func = num*2
	return

end function func
