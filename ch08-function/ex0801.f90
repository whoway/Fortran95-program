program ex0801
	implicit none
	call message() !调用子程序message
	call message() !再调用1次
	stop

end program ex0801

!子程序message
subroutine message()
	implicit none
	write(*,*) "hello"
	return 
end subroutine message
