program main
	integer , allocatable :: a2( : , : )  !用2个冒号，代表2维数组
	integer , allocatable :: a3( : , : , : ) !用3个冒号，代表3维数组
	
	allocate( a2( 5, 5 ) )  !给定2维的大小
	allocate( a3(5, 5, 5) ) !给定3维的大小

end program main
