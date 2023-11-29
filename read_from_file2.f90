program read_from_file2
    implicit none

    integer :: i
    integer :: unit
    integer :: status
    character(len=15) :: filename

    character(len=20) :: name = "UNKNOWN"
    character(len=20) :: hometown = "UNKNOWN"
    integer :: age = 0

    filename="myprofile.txt"
    open(newunit=unit, file=filename, status="OLD")

    do i=1, 3, 1
        read(unit, *, iostat=status) name, age, hometown
        print *, name // " is " ,  age,  " and hails all the way from sunny " // hometown // "."
    end do
    close(unit)
end program read_from_file2
