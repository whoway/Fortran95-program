program ex0514
	implicit none
	real height
	real weight

	write(*,*) "height:"
	read(*,*) height
	write(*,*) "weight:"
	read(*,*) weight
	

	if( weight>height-100) goto 200
	  !上面不成立，没有跳到200才会执行到这里
	  100 write(*,*) "Under control."
	  goto 300 !下一行不能执行 所以要跳转到300
	  200 write(*,*) "Too fat!"

	300 stop


end program ex0514
