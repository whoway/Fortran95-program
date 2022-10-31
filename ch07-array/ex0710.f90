program ex0710
	implicit none
	integer :: i
!a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5
	integer :: a(5) = (/(i,i=1,5)/)

	integer :: b(5)=0

!把a(1-5)中小于3的元素值设置给b
	where( a < 3 )
	  b = a
	end where

	write(*,"(5(I3,1X))") b
	stop

end program ex0710
