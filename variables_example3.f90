program variables_example
    implicit none

    integer :: x
    integer :: y
    integer :: z
    ! This is a comment
    ! Constants are defined with the keyword 'parameter'
    integer, parameter :: inches_per_foot = 12

    print *, "x = ", x, "y = ", y, "z = ", z
    print *, "Inches per foot =  ", inches_per_foot
    ! constants cannot be changed
    ! The line below will cause a compiler error
    inches_per_foot = 13
    x = 3

    print *, "x = ", x, "y = ", y, "z = ", z

    y = 4

    print *, "x = ", x, "y = ", y, "z = ", z

    z = x + y

    print *, "x = ", x, "y = ", y, "z = ", z

    x = 1

    print *, "x = ", x, "y = ", y, "z = ", z

end program variables_example
