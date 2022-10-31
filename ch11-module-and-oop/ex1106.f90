module MA
	implicit none
	type ta
	  integer a
	end  type ta

	interface operator(+)  !这个interface让type(ta)类型变量也能相加
	  module procedure add
	end interface 
contains
	integer function add(a, b)
	  type(ta) , intent(in) :: a, b
	  add=a%a + b%a
	end function add

end module MA


program ex1106
	use MA
	implicit none
	type(ta) :: a, b
	integer :: c
	a%a=1
	b%a=2
	c=a+b  !会调用add(a,b)来执行
	write(*,*) c

end program ex1106
