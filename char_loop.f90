program char_loop
  
    integer :: i
    character(1) :: c

    do i = 1, 255, 1
        c = char(i)
        print *,  "char(", i,  ") = ",  c
    end do

end program char_loop
