!-------------------------------------------------------------------------
!     NASA GSFC Land Information Systems LIS 2.3                         !
!-------------------------------------------------------------------------
!BOP
! !ROUTINE: noah_atmdrv.F90
!
! !DESCRIPTION:
!  Transfer forcing from grid to tile space.
!
! !REVISION HISTORY:
!  15 Oct 1999: Paul Houser; Initial Code
!  28 Jan 2002: Jon Gottschalck; Added option for different number of forcing variables  
!
! !INTERFACE:
subroutine noah_f2t(t, forcing)
! !USES:      
  use lisdrv_module , only : lis
  use spmdMod
  use tile_spmdMod
  use noah_varder
!EOP     
  implicit none
  real :: forcing(16)
  INTEGER :: F,C,R,T,I,J     ! Loop counters
  INTEGER :: NFORCE          ! Number of forcing variables
  integer :: rc, ier              ! for time manager
!BOC

  do f=1,lis%f%nforce
     noah(t)%forcing(f)=forcing(f)
  enddo

!EOC
  return
end subroutine noah_f2t
