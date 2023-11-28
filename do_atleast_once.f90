program do_atleast_once

    integer :: i = 10
    
    ! this is an infinite loop by default
    ! we have to create the rule of when to break out of it.
    do
        print *, i
        i = i -1


        ! exit the loop if i = 5
        if (i == 5) exit
    end do

end program do_atleast_once
