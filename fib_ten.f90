program fib_ten
    implicit none

    integer :: i

    ! set this array to all values 99 so I know its changed by the loop
    integer, dimension(10) :: fib_seq = 99

    ! check work
    !call check_work


    ! modify the array to contain the first 10 fibonnaci sequence numbers
    do i = 1, 10, 1
        fib_seq(i) = fib(i)
    end do

    ! check work again
    call check_work
    
contains
    subroutine check_work
        do i = 1, 10, 1
            print *, fib_seq(i)
        end do
    end subroutine check_work

    recursive function fib(x) result(y)
        integer, intent(in) :: x
        integer :: y

        if (x == 1) then
            y = 1
        else if (x == 2) then
            y = 1
        else
            y = fib(x -1) + fib(x -2)
        end if
     end function fib
end program fib_ten
