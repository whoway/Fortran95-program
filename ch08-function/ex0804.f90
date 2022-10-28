program ex0804
	implicit none
	  integer :: a = 1
	  integer :: b = 2
	call add(a,b) !把a和b交给子程序add来处理
	stop
end program ex0804

subroutine add(first , second)
	implicit none
	  integer :: first, second !first和second的内容会从call时得到
	write(*,*) first + second
	return !可以省略
end subroutine add
