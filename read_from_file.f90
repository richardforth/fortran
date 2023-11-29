program read_from_file
    implicit none

    integer :: unit
    integer :: status
    character(len=15) :: filename

    character(len=20) :: name = "UNKNOWN"
    character(len=20) :: hometown = "UNKNOWN"
    integer :: age = 0

    filename="myprofile.txt"

    open(newunit=unit, file=filename, status="OLD")
    read(unit, *, iostat=status) name, age, hometown
    close(unit)

    print *, name // " is " ,  age,  " and hails all the way from sunny " // hometown // "."
end program read_from_file
