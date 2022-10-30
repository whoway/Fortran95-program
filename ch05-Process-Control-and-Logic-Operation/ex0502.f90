program ex0502
	implicit none
	  real(kind=4) :: height 
	  real(kind=4) :: weight
	
	write(*,*) "height:"
	read(*,*) height
	write(*,*) "weight:"
	read(*,*) weight

	if( weight > height-100 ) then
	  !如果
	  write(*,*) "Too fat!"
	else
	  !正常
	  write(*,*) "Under control."
	end if

	stop

end program ex0502
