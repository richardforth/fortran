program integer_math

    integer :: i = 1
    integer :: result

    result = i  / 2

    ! note that in fortran integer math dictates that any fractional elements are truncated
    ! it is not rounded up or down like in normal maths, hence:
    ! 1 / 2
    ! 0.5
    ! 0  
    print *, result

end program integer_math
