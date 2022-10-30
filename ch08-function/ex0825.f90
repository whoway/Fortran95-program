program ex0825
	implicit none
	  interface !定义函数func的使用接口
	    function random10(lbound,ubound)
	    implicit none
	    real :: lbound, ubound
	    real :: random10(10) !返回值是个数组
	    end function
	  end interface

	real :: a(10)
	
	call random_seed()  !库存子程序，使用随机数前调用
	a = random10( 1.0, 10.0 )  !生成10个1.0-10.0之间的随机数
	write(*, "(10F6.2)" )  a   !输出数组a的内容

end program ex0825

!  random10 会返回10个范围在lbound到ubound之间的随机数
function random10(lbound, ubound)
implicit none
  real :: lbound , ubound
  real :: len
  real :: random10(10)
  real t
  integer i
  len = ubound-lbound !计算范围大小

  do i=1, 10
    call random_number( t ) ! t是0-1之间的随机数
    random10(i) = lbound + len * t  !把t转换成lbound-ubound间的随机数
  end do
  return
end function random10
