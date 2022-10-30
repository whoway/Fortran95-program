program ex0812
	implicit none
	  integer :: a, b
	  common a, b  !a和b放在不署名的全局变量空间中
	  integer :: c, d
	  common /group1/ c, d !c,d放在group1的全局变量空间中
	  integer :: e, f
	  common /group2/ e, f !e,f放在group2的全局变量空间中

	write(*,"(6I4)") a, b, c ,d, e , f
	stop

end program ex0812

block data
	implicit none
	  integer a,b
	  common a,b  !a,b放在不署名的全局变量空间中
	  data a,b /1,2/  !设置a,b的初值

	  integer c,d
	  common /group1/ c,d  !c,d放在group1的全局变量空间中	
	  data c,d /3,4/  !设置c,d的初值

	  integer e,f
	  common /group2/ e,f  !e,f放在group2的全局变量空间中
	  data e,f /5,6/  !设置e,f的初值
end block data
