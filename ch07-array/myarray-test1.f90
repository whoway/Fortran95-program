program main
	implicit none
	!integer a(10,10) !最简单的方法
	integer, dimension(10,10) :: a !第2种方法
	
	!下面2行，这是Fortran77的做法，先声明a是整型，再声明a是长度为10的数组
	integer a
	dimension a(10,10)
end program main
