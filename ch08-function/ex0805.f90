program ex0805
	implicit none
	  integer :: a = 1
	  integer :: b = 2
	call add(a)
	call add(b)
	write(*,*) a,b
	stop
end program ex0805

subroutine add( num )
	implicit none
	  integer :: num
	num=num+1
	return !可以省略
end subroutine add
