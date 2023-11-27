program user_input
    implicit none

    character(len=20) :: name

    print *, "What is your name?"
    read(*, *) name
    print *, "Hello, " // trim(name) // "!"
end program user_input
