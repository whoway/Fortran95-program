program main
	implicit none
	integer , target  :: a=1, b=2
	integer , pointer :: p
	allocate(p)      !配置内存
	p=111
	write(*,*) p
	deallocate(p)    !释放内存
	p=>a             !再改变指针p的指向
	write(*,*) p
end program main
