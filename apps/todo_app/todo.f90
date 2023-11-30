program todo
    ! THIS PROGRAM IS A WORK IN PROGRESS
    implicit none

    integer, parameter :: MAX_TASKS = 99
    character(len=*), parameter :: TODO_FILE = "todo.txt"
    integer :: i
    integer :: num_tasks
    character(len=1) :: response
    integer :: status
    integer :: task
    character(len=100) :: tasks(MAX_TASKS)
    integer :: unit

    
    open(newunit=unit, file=TODO_FILE)
    
    do i = 1, MAX_TASKS, 1
        read(unit, '(A)', iostat=status) tasks(i)
    end do
    
    
    print *, "Here are your current tasks:"
    
    close(unit)
end program todo
