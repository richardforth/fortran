program user_input
    implicit none

    character(len=20) :: name
    integer :: age
    character(len=20) :: hometown
    integer :: status

    name = "UNKNOWN"
    age = 0
    hometown = "UNKNOWN"

    print *, "What is your name, age and hometown?"
    read(*, *, iostat=status) name, age, hometown
    
    print *, "Hello, " // trim(name) // "!"
    print *, "You don't look old enough to be ", age, "!"
    print *, "What's the weather like in " // trim(hometown) // "?"
end program user_input
