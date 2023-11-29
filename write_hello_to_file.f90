program write_hello_to_file
    implicit none

    integer :: unit

    open(newunit=unit, file="hello.txt", status="REPLACE")

    write(unit, *) "Hello, world!"

    close(unit)

end program write_hello_to_file
