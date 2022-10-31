program ex0828
	implicit none
	  integer :: n
	  integer, external :: fact
	  write(*,*) 'N='
	  read(*,*) n
	write(*, "(I2,' != ', I8)" ) n , fact(n)
	stop
end program ex0828

!result可以用来，在程序代码中使用-另一个名字-来设置函数的返回值
!这里是用ans来替换原来的fact了
recursive integer function fact( n ) result (ans)
	implicit none
	integer , intent(in) :: n
	
	if( n < 0 ) then  !不合理的输入
	  ans=-1  !随便设置1个值
	  return  !n不合理直接return 
	else if ( n <= 1 ) then 
	  ans=1
	  return  !不用再往下递归了，return 
	end if

	!会执行到这里，代表n>1, 使用n*(n-1)!来计算n!阶乘
	ans = n * fact(n-1)
	return
end function fact 
