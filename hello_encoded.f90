program hello_encoded

! Used the char_loop program to get all the characters needed:
!./char_loop 2>&1 | egrep "= H|= e|= l|= o|= w|= r|= d|= \!|= , |=  " 
! char(          33 ) = !
! char(          44 ) = ,
! char(          32 ) =  
! char(          72 ) = H
! char(         100 ) = d
! char(         101 ) = e
! char(         108 ) = l
! char(         111 ) = o
! char(         114 ) = r
! char(         119 ) = w

     print *, char(72), char(101), char(108), char(108), char(111), &
             char(44), char(32), &
             char(119), char(111), char(114), char(108), char(100), char(33)

end program hello_encoded
