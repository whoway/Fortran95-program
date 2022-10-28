program ex0421
	integer a
	real b
	complex c
	logical d
	character(len=20) e

	a=10
	b=12.34
	c=(1,2)
	d=.true.
	e="Fortran"

	write(*, "(1X,I5)") a	!用I来格式化 整数
	write(*, "(1X,F5.2)") b !用F来格式化 浮点数
	write(*, "(1X,F4.1,F4.1)") c !complex 要用2个浮点数来输出
	write(*, "(1X,L3)") d	!用L来格式化 输出logical
	write(*, "(1X,A10)") e  !用A来格式化 输出字符串
end program ex0421
