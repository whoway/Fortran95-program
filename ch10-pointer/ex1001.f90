program ex1001
	implicit none
	integer , target :: a = 1 !声明1个可以当成目标的变量
	integer , pointer :: p    !声明1个可以指向整数的指针
	p=>a   !把指针指到变量a
	write(*,*) p
	a=2    !改变a的值
	write(*,*) p
	p=3    !改变指针p所指向的内存内容
	write(*,*) a
	stop

end program ex1001
