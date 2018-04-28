!  Projekt1.f90 
!
!  FUNCTIONS:
!  Projekt1 - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: Projekt1
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

    program Projekt1

    implicit none

    ! Variables
	character (10) :: param
	integer (kind = 8) :: i, N
	
	
	call GET_COMMAND_ARGUMENT(1, param)
	! https://gcc.gnu.org/onlinedocs/gfortran/ICHAR.html
	read(param, '(I10)') N
	
	
	
    ! Body of Projekt1
    print *, 'Hello World'

    end program Projekt1

