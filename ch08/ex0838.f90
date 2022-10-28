program ex0838
    implict none

    call sub()
    call mid()
    
    stop
end

subroutine sub()
    implict none

    write(*,*) "Hello."

    entry mid() !另一个进入点mid
    
    write(*,*) "Good morning."

    return
end 