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

#ifndef PRECISION
#define PRECISION 16
#endif

 program Projekt1
	use gauss_elimination
    implicit none

    ! Variables
	character (10) :: param
	integer (kind = 8) :: i, N
	real (kind = PRECISION), allocatable :: A(:, :), X(:)
	real (kind = 16) :: error_sum
	real (kind = PRECISION) :: h
	
	
	
	call GET_COMMAND_ARGUMENT(1, param)
	! https://gcc.gnu.org/onlinedocs/gfortran/ICHAR.html
	read(param, '(I10)') N
	
	! allocation
	h = 1. / N
	allocate(A(N, N))
	allocate(X(N))
	
	A(:, :) = 0
	X(:) = 0
	X(N) = 1
	
	
	! filling matrix
	do i = 1, N-1
		A(i, i) = 1 / (h * h)
	end do
	
	do i = 1, N-1
		A(i, i+1) = -2 / (h * h)
	end do
	
	do i = 1, N-2
		A(i, i+2) = 1 / (h * h)
	end do
	
	
	call eliminate(A, X, N)
	
	error_sum = 0
	do i = 1, N
		error_sum = error_sum + abs(X(i) - real(i) / real(N))
	end do
	
	print *, error_sum
	! print *, X

    end program Projekt1

