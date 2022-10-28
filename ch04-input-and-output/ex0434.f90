program ex0434
	implicit none
	
	!开始创建person这个类型
	type :: person   !G
	  character(len=30) :: name !人名
	  integer :: age
	  integer :: height
	  integer :: weight
	  character(len=80) :: address !地址  
	end type person

type(person) :: a   !声明1个person类型的变量

write(*,*) "NAME:"
read(*,*) a%name
write(*,*) "AGE:"
read(*,*) a%age
write(*,*) "Height:"
read(*,*) a%height
write(*,*) "Weight:"
read(*,*) a%weight
write(*,*) "Address:"
read(*,*) a%address

write(*,100) a%name, a%age, a%height, a%weight, a%address

100 format(/,"Name:",A10/,"Age:",I3/,"Height:",I3/,"Weight:",I3/,&
	&"Address:",A50)

stop
end program ex0434

