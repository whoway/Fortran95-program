program ex0420
	integer a
	a=100
	!write(*,*) a
	write(*,100) a !使用行代码100，也就是第5行的格式来输出变量a
	100 format(I4) !最前面的100是行代码，把这1行程序代码给1个编号
end program ex0420
