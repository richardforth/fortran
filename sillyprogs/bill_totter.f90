program bill_totter
    ! Recommended execution: ./bill_totter | column -t
    !
    ! bill.txt should have two items per line:
    ! item, real number, eg:
    ! AVOID SPACES IN ITEM 
    !coffee 1.25
    !soup 4.95
    !toast 2.00
    !ice-cream 4.95

    implicit none

    real :: total
    integer :: i
    real :: amount
    integer :: unit
    integer :: status
    character(len=15) :: item

    open(newunit=unit, file="bill.txt", status="OLD")
    
    print *, "Description Item Subtotal"
    print *, "----------- ---- --------"   
    ! read until end of file
    do 
        read(unit, *, iostat=status) item, amount
        if (status == -1) exit ! end of file
        total = total + amount
        print '(a, F0.2, a, F0.2)', item, amount," ", total
    end do
    print *, "____________"   
    print '(a, F0.2)',  "Total ____ ", total 
    close(unit) 
end program bill_totter
