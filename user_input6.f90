program user_input6
    implicit none

    integer :: a
    integer :: b
    integer :: status
    integer :: result

    do
        print *, "What's the base number?"
        read (*, *, iostat=status) a
        if (status == 0) exit
        print *, "I did'nt understand that."
    end do

    do
        print *, "To what power?"
        read (*, *, iostat=status) b
        if (status == 0) exit
        print *, "I did'nt understand that."
    end do

    result = a**b
    print *, a, " ** ", b, " = ", result 

end program user_input6
