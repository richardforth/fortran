program bill_totter
    implicit none

    real :: total
    integer :: i
    real :: amount
    integer :: unit
    integer :: status
    character(len=10) :: item

    open(newunit=unit, file="bill.txt", status="OLD")
    
    ! Assume 5 items on the bill for now ! 
    do i = 1, 5, 1
        read(unit, *, iostat=status) item, amount
        total = total + amount
        print '(a, a, F0.2, a, F0.2)', trim(item), " --> ", amount," -->", total 
    end do
    
    print '(a, F0.2)',  "Total Amount on Bill: ", total 
    close(unit) 
end program bill_totter
