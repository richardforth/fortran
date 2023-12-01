module todo3_routines
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




contains
    subroutine interact
        call read_tasks
        do 
            if (num_tasks == 0) then
                print *, "Good news, you have no tasks right now."
            else
                print *, "Here are your current tasks:"
                call print_tasks
             end if

            print *, "What would you like do do? [a]dd, [d]elete, [q]uit:"    
            read(*,'(A1)') response    
    
            select case (response)
                case ('a')
                    call add_task
                case ('d')
                    call delete_task
                case ('q')
                    print *, "Thank you for using todo, powered by Fortran."
                    print *, "Good-Bye!"
                    exit
                case default
                    print *, "Please select an action from the following [a]dd, [d]elete, [q]uit"
            end select
        end do
        call save_tasks
    end subroutine interact
    subroutine read_tasks
        open(newunit=unit, file=TODO_FILE)
   
        do i = 1, MAX_TASKS, 1
            read(unit, '(A)', iostat=status) tasks(i)
            if (status /=0) then
                num_tasks = i - 1
                exit
            end if
        end do
    
        close(unit)
    end subroutine read_tasks
    
    subroutine print_tasks
        do i = 1, num_tasks
            print '(I3,") ",A)', i, trim(tasks(i)) 
        end do 
    end subroutine print_tasks
    
    subroutine add_task
        print *, "What is the task?"
        num_tasks = num_tasks + 1
        read(*, '(a)') tasks(num_tasks)
    end subroutine add_task
    
    subroutine delete_task
        do
            print *, "Enter the number of the task you want to delete:"
            read(*, *, iostat=status) task
            if (status  == 0) then
                if (task < 1 ) then
                    print *, "Task number must be greater than 1."
                else if (task > num_tasks) then
                    print *, "Task number must be less than or equal to ", num_tasks
                else
                    do i = task, num_tasks
                        tasks(i) = tasks(i+1)
                    end do
                    num_tasks = num_tasks -1
                    exit
                end if
            else
                print *, "I did'nt understand that"
            end if
        end do
    end subroutine delete_task
    
    subroutine save_tasks
        open(newunit=unit, file=TODO_FILE, status="REPLACE")
        do i = 1, num_tasks
            write(unit, '(A)') trim(tasks(i))
        end do    

        close(unit)
    end subroutine save_tasks
end module todo3_routines
