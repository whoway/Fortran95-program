!编译方式gfortran ex0840m.f90就可以了，那个ex0840s.f90会自动被include
program ex0840m
	implicit none
	call sub()  !子程序sub写在另一个文件中
	stop
end program ex0840m

include 'ex0840s.f90'  !在这里插入ex0840s.f90这个文件
