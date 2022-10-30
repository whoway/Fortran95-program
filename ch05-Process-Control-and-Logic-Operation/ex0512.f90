program ex0512
	implicit none
	  integer score
	  character grade
	
	write(*,*) "Score:"
	read(*,*) score

	select case(score)
	case(90:100) !90到100分之间
	  grade='A'
	case(80:89)
	  grade='B'
	case(70:79)
	  grade='C'
	case(60:69)
	  grade='D'
	case(50:50)
	  grade='E'
	case default  !其他情况
	  grade='?'
	end select

	write(*,"('Grade:',A1)"  ) grade
	stop
end program ex0512
