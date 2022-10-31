!编译方式：gfortran ex0841.f90即可，ex0841.inc会被自动include进来
program ex0841
	implicit none
	include 'ex0841.inc'  !插入ex0841.inc的内容
	a=1
	b=2
	call sub()
	stop
end program ex0841

subroutine sub()
	implicit none
	include 'ex0841.inc' !插入ex0841.inc的内容
	write(*,*) a, b
	return 
end subroutine sub
