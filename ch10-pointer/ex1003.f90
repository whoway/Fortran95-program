program ex1003
	implicit none
	integer , pointer :: a=>null()
	integer , target  :: b=1, c=2
	
	write(*,*) associated(a) !FALSE , 指针a尚未赋值
	a=>c
	write(*,*) associated(a) !TRUE , 指针a已赋值
	write(*,*) associated(a,c) !TRUE , 指针a指向c
	write(*,*) associated(a,b) !FALSE , 指针a不指向b
	nullify(a) !把指针a设为没有指向
	write(*,*) associated(a) !FALSE , 指针a尚未赋值
	
	stop
end program ex1003
