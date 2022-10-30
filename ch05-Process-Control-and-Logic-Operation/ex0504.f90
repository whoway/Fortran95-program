program ex0504
	implicit none
	integer rain, windspeed
	logical r,w
	
	write(*,*) "Rain:"
	read(*,*) rain
	write(*,*) "Wind:"
	read(*,*) windspeed
	
	r= (rain>=500)    !如果rain>=500, r=.true. ,否则r=.false.
	w= (windspeed>=10)
	if( r .or. w ) then
	  write(*,*) "停止上班上课"
	else
	  write(*,*) "照常上班上课"
	end if

	stop

end program ex0504
