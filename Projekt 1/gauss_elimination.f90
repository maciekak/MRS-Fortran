#ifndef PRECISION
#define PRECISION 16
#endif
    
module gauss_elimination
	implicit none
	
contains
	subroutine eliminate (A, X, N)
		implicit none
		
		integer (kind = 8) :: I, J
		integer (kind = 8), intent(in) :: N
		real (kind = PRECISION) :: C
		real(kind = PRECISION), intent(inout) :: A(N, N), X(N)
		
		! from blackboard
		do I = 1, N-1
			do J = 0, N-1
				if (( I /= J) .AND. (A(I, I+1) /= 0)) then
                    C = A(I, J + 1) / A(I, I + 1)
					A(:, J + 1) = A(:, J + 1) - C * A(:, I + 1)
					X(J + 1) = X(J + 1) - C * X(I + 1)
				end if
			end do
		end do
	end subroutine eliminate
end module gauss_elimination
	