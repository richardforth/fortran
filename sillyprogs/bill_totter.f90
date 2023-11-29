program bill_totter
    implicit none

    real :: total
    integer :: i
    real :: amount
    integer :: unit
    integer :: status
    character(len=15) :: item

    open(newunit=unit, file="bill.txt", status="OLD")
    
    ! read until end of file
    do 
        read(unit, *, iostat=status) item, amount
        if (status == -1) exit ! end of file
        total = total + amount
        print '(a, F0.2, a, F0.2)', item, amount," ", total
    end do
    
    print '(a, F0.2)',  "Total Amount on Bill: ", total 
    close(unit) 
end program bill_totter
