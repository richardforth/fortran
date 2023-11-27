program ageist

   integer :: age

   print *, "How old are you?"
   read(*, *) age

   select case (age)
   case (0:12)
       print *, "Ickle Baby!"
   case (13:19)
       print *, "Bloody Teenager!"
   case (20:29)
       print *, "Twentysomething!"
   case (67:99)
       print *, "Pensioner!"
   case default
       print *, "Get back to work!"
   end select
end program ageist
