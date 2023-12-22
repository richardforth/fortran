program merry_christmas
    implicit none

    integer :: i

    do i = 3, 1, -1
       call wwyamc
    end do

    print *, "And a Happy New Year!"
    
contains
    subroutine wwyamc
            print *, "We wish you a Merry Christmas,"
    end subroutine wwyamc

end program merry_christmas
