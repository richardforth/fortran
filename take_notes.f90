program take_notes
    implicit none

    integer :: unit
    integer :: status
    character(255) :: notes

    open(newunit=unit, file="notes.txt", position="APPEND")

    do
        print *, "Enter some notes:"
        read (*, '(A)', iostat=status) notes
        if (notes == "DONE") exit
        write(unit, *) trim(notes) 
    end do

    close(unit)

end program take_notes
