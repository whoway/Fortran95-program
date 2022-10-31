program ex0827
	implicit none
	  interface
	    real function func( x, a, b, c) !定义子程序func的使用接口
	      implicit none
	      real x
	      real, optional :: a, b, c
	    end function
	  end interface

	!开始编写执行命令
	write(*,*) func(2.0, c=1.0) 
	write(*,*) func(2.0, a=2.0, b=1.0)
	stop
end program ex0827

!计算func(x)= a*x^2 + b*x + c
!A,B,C不输入的话为0
real function func( x, a, b, c)
	implicit none
	real x !x值一定要有输入
	real, optional :: a, b, c  !a,b,c可以不输入
	real ra, rb, rc   !实际计算的数字

	if( present(a) ) then
	  ra=a
	else
	  ra=0.0 !默认值为0
	end if

	if( present(b) ) then
	  rb=b
	else
	  rb=0.0 !默认值为0
	end if

	if( present(c) ) then
	  rc=c
	else
	  rc=0.0 !默认值为0
	end if
	
	func = ra*x**2 + rb*x + rc
	return 
end function func
