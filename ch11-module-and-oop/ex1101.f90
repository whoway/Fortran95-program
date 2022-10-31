module bank
	implicit none
	private money !学习
	public LoadMoney , SaveMoney, Report
	integer :: money = 1000000
  contains
	subroutine LoadMoney(num)
	  implicit none
	  integer :: num
	  money = money - num
	  return
	end subroutine LoadMoney

	subroutine SaveMoney(num)
	  implicit none
	  integer :: num
	  money = money + num
	  return
	end subroutine SaveMoney

	subroutine Report()
	  implicit none
	  write(*,"('银行目前库存',I8,'元')" ) money
	end subroutine Report
end module bank

program ex1101
	use bank
	implicit none
	call LoadMoney(100)
	call SaveMoney(1000)
	call Report()
	stop
end program ex1101
