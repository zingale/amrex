! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.

! ---------------------------------------------------------------
! Programmer(s): Auto-generated by swig.
! ---------------------------------------------------------------
! SUNDIALS Copyright Start
! Copyright (c) 2002-2019, Lawrence Livermore National Security
! and Southern Methodist University.
! All rights reserved.
!
! See the top-level LICENSE and NOTICE files for details.
!
! SPDX-License-Identifier: BSD-3-Clause
! SUNDIALS Copyright End
! ---------------------------------------------------------------

module farkode_mod
 use, intrinsic :: ISO_C_BINDING
 use fsundials_types_mod
 implicit none
 private

 ! DECLARATION CONSTRUCTS
 integer(C_INT), parameter, public :: ARK_NORMAL = 1_C_INT
 integer(C_INT), parameter, public :: ARK_ONE_STEP = 2_C_INT
 integer(C_INT), parameter, public :: ARK_SUCCESS = 0_C_INT
 integer(C_INT), parameter, public :: ARK_TSTOP_RETURN = 1_C_INT
 integer(C_INT), parameter, public :: ARK_ROOT_RETURN = 2_C_INT
 integer(C_INT), parameter, public :: ARK_WARNING = 99_C_INT
 integer(C_INT), parameter, public :: ARK_TOO_MUCH_WORK = -1_C_INT
 integer(C_INT), parameter, public :: ARK_TOO_MUCH_ACC = -2_C_INT
 integer(C_INT), parameter, public :: ARK_ERR_FAILURE = -3_C_INT
 integer(C_INT), parameter, public :: ARK_CONV_FAILURE = -4_C_INT
 integer(C_INT), parameter, public :: ARK_LINIT_FAIL = -5_C_INT
 integer(C_INT), parameter, public :: ARK_LSETUP_FAIL = -6_C_INT
 integer(C_INT), parameter, public :: ARK_LSOLVE_FAIL = -7_C_INT
 integer(C_INT), parameter, public :: ARK_RHSFUNC_FAIL = -8_C_INT
 integer(C_INT), parameter, public :: ARK_FIRST_RHSFUNC_ERR = -9_C_INT
 integer(C_INT), parameter, public :: ARK_REPTD_RHSFUNC_ERR = -10_C_INT
 integer(C_INT), parameter, public :: ARK_UNREC_RHSFUNC_ERR = -11_C_INT
 integer(C_INT), parameter, public :: ARK_RTFUNC_FAIL = -12_C_INT
 integer(C_INT), parameter, public :: ARK_LFREE_FAIL = -13_C_INT
 integer(C_INT), parameter, public :: ARK_MASSINIT_FAIL = -14_C_INT
 integer(C_INT), parameter, public :: ARK_MASSSETUP_FAIL = -15_C_INT
 integer(C_INT), parameter, public :: ARK_MASSSOLVE_FAIL = -16_C_INT
 integer(C_INT), parameter, public :: ARK_MASSFREE_FAIL = -17_C_INT
 integer(C_INT), parameter, public :: ARK_MASSMULT_FAIL = -18_C_INT
 integer(C_INT), parameter, public :: ARK_MEM_FAIL = -20_C_INT
 integer(C_INT), parameter, public :: ARK_MEM_NULL = -21_C_INT
 integer(C_INT), parameter, public :: ARK_ILL_INPUT = -22_C_INT
 integer(C_INT), parameter, public :: ARK_NO_MALLOC = -23_C_INT
 integer(C_INT), parameter, public :: ARK_BAD_K = -24_C_INT
 integer(C_INT), parameter, public :: ARK_BAD_T = -25_C_INT
 integer(C_INT), parameter, public :: ARK_BAD_DKY = -26_C_INT
 integer(C_INT), parameter, public :: ARK_TOO_CLOSE = -27_C_INT
 integer(C_INT), parameter, public :: ARK_POSTPROCESS_FAIL = -28_C_INT
 integer(C_INT), parameter, public :: ARK_VECTOROP_ERR = -29_C_INT
 integer(C_INT), parameter, public :: ARK_NLS_INIT_FAIL = -30_C_INT
 integer(C_INT), parameter, public :: ARK_NLS_SETUP_FAIL = -31_C_INT
 integer(C_INT), parameter, public :: ARK_NLS_SETUP_RECVR = -32_C_INT
 integer(C_INT), parameter, public :: ARK_NLS_OP_ERR = -33_C_INT
 integer(C_INT), parameter, public :: ARK_INNERSTEP_FAIL = -34_C_INT
 integer(C_INT), parameter, public :: ARK_UNRECOGNIZED_ERROR = -99_C_INT
 public :: FARKBandPrecInit
 public :: FARKBandPrecGetWorkSpace
 public :: FARKBandPrecGetNumRhsEvals
 public :: FARKBBDPrecInit
 public :: FARKBBDPrecReInit
 public :: FARKBBDPrecGetWorkSpace
 public :: FARKBBDPrecGetNumGfnEvals
 ! struct struct ARKodeButcherTableMem
 type, bind(C), public :: ARKodeButcherTableMem
  integer(C_INT), public :: q
  integer(C_INT), public :: p
  integer(C_INT), public :: stages
  type(C_PTR), public :: A
  type(C_PTR), public :: c
  type(C_PTR), public :: b
  type(C_PTR), public :: d
 end type ARKodeButcherTableMem
 public :: FARKodeButcherTable_Alloc
 public :: FARKodeButcherTable_Create
 public :: FARKodeButcherTable_Copy
 public :: FARKodeButcherTable_Space
 public :: FARKodeButcherTable_Free
 public :: FARKodeButcherTable_Write
 public :: FARKodeButcherTable_CheckOrder
 public :: FARKodeButcherTable_CheckARKOrder
 integer(C_INT), parameter, public :: SDIRK_2_1_2 = 100_C_INT
 integer(C_INT), parameter, public :: BILLINGTON_3_3_2 = 101_C_INT
 integer(C_INT), parameter, public :: TRBDF2_3_3_2 = 102_C_INT
 integer(C_INT), parameter, public :: KVAERNO_4_2_3 = 103_C_INT
 integer(C_INT), parameter, public :: ARK324L2SA_DIRK_4_2_3 = 104_C_INT
 integer(C_INT), parameter, public :: CASH_5_2_4 = 105_C_INT
 integer(C_INT), parameter, public :: CASH_5_3_4 = 106_C_INT
 integer(C_INT), parameter, public :: SDIRK_5_3_4 = 107_C_INT
 integer(C_INT), parameter, public :: KVAERNO_5_3_4 = 108_C_INT
 integer(C_INT), parameter, public :: ARK436L2SA_DIRK_6_3_4 = 109_C_INT
 integer(C_INT), parameter, public :: KVAERNO_7_4_5 = 110_C_INT
 integer(C_INT), parameter, public :: ARK548L2SA_DIRK_8_4_5 = 111_C_INT
 integer(C_INT), parameter, public :: MIN_DIRK_NUM = 100_C_INT
 integer(C_INT), parameter, public :: MAX_DIRK_NUM = 111_C_INT
 public :: FARKodeButcherTable_LoadDIRK
 integer(C_INT), parameter, public :: HEUN_EULER_2_1_2 = 0_C_INT
 integer(C_INT), parameter, public :: BOGACKI_SHAMPINE_4_2_3 = 1_C_INT
 integer(C_INT), parameter, public :: ARK324L2SA_ERK_4_2_3 = 2_C_INT
 integer(C_INT), parameter, public :: ZONNEVELD_5_3_4 = 3_C_INT
 integer(C_INT), parameter, public :: ARK436L2SA_ERK_6_3_4 = 4_C_INT
 integer(C_INT), parameter, public :: SAYFY_ABURUB_6_3_4 = 5_C_INT
 integer(C_INT), parameter, public :: CASH_KARP_6_4_5 = 6_C_INT
 integer(C_INT), parameter, public :: FEHLBERG_6_4_5 = 7_C_INT
 integer(C_INT), parameter, public :: DORMAND_PRINCE_7_4_5 = 8_C_INT
 integer(C_INT), parameter, public :: ARK548L2SA_ERK_8_4_5 = 9_C_INT
 integer(C_INT), parameter, public :: VERNER_8_5_6 = 10_C_INT
 integer(C_INT), parameter, public :: FEHLBERG_13_7_8 = 11_C_INT
 integer(C_INT), parameter, public :: KNOTH_WOLKE_3_3 = 12_C_INT
 integer(C_INT), parameter, public :: MIN_ERK_NUM = 0_C_INT
 integer(C_INT), parameter, public :: MAX_ERK_NUM = 12_C_INT
 public :: FARKodeButcherTable_LoadERK
 integer(C_INT), parameter, public :: ARKLS_SUCCESS = 0_C_INT
 integer(C_INT), parameter, public :: ARKLS_MEM_NULL = -1_C_INT
 integer(C_INT), parameter, public :: ARKLS_LMEM_NULL = -2_C_INT
 integer(C_INT), parameter, public :: ARKLS_ILL_INPUT = -3_C_INT
 integer(C_INT), parameter, public :: ARKLS_MEM_FAIL = -4_C_INT
 integer(C_INT), parameter, public :: ARKLS_PMEM_NULL = -5_C_INT
 integer(C_INT), parameter, public :: ARKLS_MASSMEM_NULL = -6_C_INT
 integer(C_INT), parameter, public :: ARKLS_JACFUNC_UNRECVR = -7_C_INT
 integer(C_INT), parameter, public :: ARKLS_JACFUNC_RECVR = -8_C_INT
 integer(C_INT), parameter, public :: ARKLS_MASSFUNC_UNRECVR = -9_C_INT
 integer(C_INT), parameter, public :: ARKLS_MASSFUNC_RECVR = -10_C_INT
 integer(C_INT), parameter, public :: ARKLS_SUNMAT_FAIL = -11_C_INT
 integer(C_INT), parameter, public :: ARKLS_SUNLS_FAIL = -12_C_INT

! WRAPPER DECLARATIONS
interface
function FARKBandPrecInit(arkode_mem, n, mu, ml) &
bind(C, name="ARKBandPrecInit") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: arkode_mem
integer(C_INT64_T), value :: n
integer(C_INT64_T), value :: mu
integer(C_INT64_T), value :: ml
integer(C_INT) :: fresult
end function

function FARKBandPrecGetWorkSpace(arkode_mem, lenrwls, leniwls) &
bind(C, name="ARKBandPrecGetWorkSpace") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: arkode_mem
integer(C_LONG) :: lenrwls
integer(C_LONG) :: leniwls
integer(C_INT) :: fresult
end function

function FARKBandPrecGetNumRhsEvals(arkode_mem, nfevalsbp) &
bind(C, name="ARKBandPrecGetNumRhsEvals") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: arkode_mem
integer(C_LONG) :: nfevalsbp
integer(C_INT) :: fresult
end function

function FARKBBDPrecInit(arkode_mem, nlocal, mudq, mldq, mukeep, mlkeep, dqrely, gloc, cfn) &
bind(C, name="ARKBBDPrecInit") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: arkode_mem
integer(C_INT64_T), value :: nlocal
integer(C_INT64_T), value :: mudq
integer(C_INT64_T), value :: mldq
integer(C_INT64_T), value :: mukeep
integer(C_INT64_T), value :: mlkeep
real(C_DOUBLE), value :: dqrely
type(C_FUNPTR), value :: gloc
type(C_FUNPTR), value :: cfn
integer(C_INT) :: fresult
end function

function FARKBBDPrecReInit(arkode_mem, mudq, mldq, dqrely) &
bind(C, name="ARKBBDPrecReInit") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: arkode_mem
integer(C_INT64_T), value :: mudq
integer(C_INT64_T), value :: mldq
real(C_DOUBLE), value :: dqrely
integer(C_INT) :: fresult
end function

function FARKBBDPrecGetWorkSpace(arkode_mem, lenrwbbdp, leniwbbdp) &
bind(C, name="ARKBBDPrecGetWorkSpace") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: arkode_mem
integer(C_LONG) :: lenrwbbdp
integer(C_LONG) :: leniwbbdp
integer(C_INT) :: fresult
end function

function FARKBBDPrecGetNumGfnEvals(arkode_mem, ngevalsbbdp) &
bind(C, name="ARKBBDPrecGetNumGfnEvals") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: arkode_mem
integer(C_LONG) :: ngevalsbbdp
integer(C_INT) :: fresult
end function

function FARKodeButcherTable_Alloc(stages, embedded) &
bind(C, name="ARKodeButcherTable_Alloc") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), value :: stages
logical(C_BOOL), value :: embedded
type(C_PTR) :: fresult
end function

function FARKodeButcherTable_Create(s, q, p, c, a, b, d) &
bind(C, name="ARKodeButcherTable_Create") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), value :: s
integer(C_INT), value :: q
integer(C_INT), value :: p
real(C_DOUBLE) :: c
real(C_DOUBLE) :: a
real(C_DOUBLE) :: b
real(C_DOUBLE) :: d
type(C_PTR) :: fresult
end function

function FARKodeButcherTable_Copy(b) &
bind(C, name="ARKodeButcherTable_Copy") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: b
type(C_PTR) :: fresult
end function

subroutine FARKodeButcherTable_Space(b, liw, lrw) &
bind(C, name="ARKodeButcherTable_Space")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: b
integer(C_INT64_T) :: liw
integer(C_INT64_T) :: lrw
end subroutine

subroutine FARKodeButcherTable_Free(b) &
bind(C, name="ARKodeButcherTable_Free")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: b
end subroutine

subroutine FARKodeButcherTable_Write(b, outfile) &
bind(C, name="ARKodeButcherTable_Write")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: b
type(C_PTR), value :: outfile
end subroutine

function FARKodeButcherTable_CheckOrder(b, q, p, outfile) &
bind(C, name="ARKodeButcherTable_CheckOrder") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: b
integer(C_INT) :: q
integer(C_INT) :: p
type(C_PTR), value :: outfile
integer(C_INT) :: fresult
end function

function FARKodeButcherTable_CheckARKOrder(b1, b2, q, p, outfile) &
bind(C, name="ARKodeButcherTable_CheckARKOrder") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: b1
type(C_PTR), value :: b2
integer(C_INT) :: q
integer(C_INT) :: p
type(C_PTR), value :: outfile
integer(C_INT) :: fresult
end function

function FARKodeButcherTable_LoadDIRK(imethod) &
bind(C, name="ARKodeButcherTable_LoadDIRK") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), value :: imethod
type(C_PTR) :: fresult
end function

function FARKodeButcherTable_LoadERK(imethod) &
bind(C, name="ARKodeButcherTable_LoadERK") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), value :: imethod
type(C_PTR) :: fresult
end function

end interface


end module
