program ex0608
	implicit none
	integer :: i,j
	
	outter: do i=1 , 3  !循环取名为outter
	  inner: do j=1 , 3 !循环取名为inner
	   write(*, "('(',i2,',',i2,')')") i , j
	  end do inner      !结束inner这个循环
	end do outter       !结束outter这个循环

	stop
	
end program ex0608
