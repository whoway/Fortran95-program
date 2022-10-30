program ex0823
	implicit none
	  integer :: a=4
	  integer b
	  call div(a,b)
	  write(*,*) a, b
	stop

end program ex0823

subroutine div(a,b)
	implicit none
	  integer , intent(in) :: a !指定a是只读
	  integer , intent(out) :: b !指定b在子程序中应该重新设置数值
	  b=a/2
end subroutine div
