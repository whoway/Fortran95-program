module global
	implicit none
	integer a, b
	common a, b
end module global

program ex0834
	use global
	implicit none
	a=1
	b=2
	call sub()
end program ex0834

subroutine sub()
	use global
	implicit none
	write(*,*) a, b
	return 
end subroutine sub
