	.text
# -- Begin  func_two_params
	.p2align 4,,15
	.globl func_two_params
	.type	func_two_params, @function
func_two_params:
	.4byte 0x00022013  # CFI hint: arity 2
/*.L0:*/    /* Block BB[113:2] preds: none, freq: 1.000 */
	addi	sp, sp, -16                 /* be_IncSP Lu[486:94] { compr=true } */
	sd	s0, 8(sp)                     /* riscv_sd M[487:95] { compr=false } */
	addi	s0, sp, 16                  /* riscv_addi Lu[488:96] { compr=false comp_req=address } */
	sd	s11, -16(s0)                  /* riscv_sd M[445:54] { compr=false } */
	lui	t1, %hi(.Lstr.0)             /* riscv_lui Lu[400:11] arity.c:5:12 { compr=true } */
	addi	t1, t1, %lo(.Lstr.0)        /* riscv_addi Lu[401:12] arity.c:5:12 { compr=true comp_req=address } */
	slli	a0, a0, 32                  /* riscv_slli Lu[403:14] { compr=true comp_req=address } */
	srai	a0, a0, 32                  /* riscv_srai Lu[404:15] { compr=true comp_req=register comp_req=address } */
	slli	a2, a1, 32                  /* riscv_slli Lu[406:17] { compr=false comp_req=address } */
	srai	a2, a2, 32                  /* riscv_srai Lu[407:18] { compr=true comp_req=register comp_req=address } */
	mv	a1, a0                        /* be_Copy Lu[476:85] { compr=true } */
	mv	a0, t1                        /* be_Copy Lu[477:86] { compr=true } */
	mv	s11, ra                       /* be_Copy Lu[478:87] { compr=true } */
	jal	printf                       /* riscv_jal T[408:19] arity.c:5:11 { compr=true } */
	mv	ra, s11                       /* be_Copy Lu[479:88] { compr=true } */
	ld	s11, -16(s0)                  /* riscv_ld T[446:55] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[481:89] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[484:92] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[485:93] { compr=true } */
	ret                              /* riscv_ret X[424:35] { compr=true } */
	.size	func_two_params, .-func_two_params
# -- End  func_two_params

# -- Begin  func_three_params
	.p2align 4,,15
	.globl func_three_params
	.type	func_three_params, @function
func_three_params:
	.4byte 0x00032013  # CFI hint: arity 3
/*.L200:*/    /* Block BB[136:2] preds: none, freq: 1.000 */
	addi	sp, sp, -16                 /* be_IncSP Lu[592:99] { compr=true } */
	sd	s0, 8(sp)                     /* riscv_sd M[593:100] { compr=false } */
	addi	s0, sp, 16                  /* riscv_addi Lu[594:101] { compr=false comp_req=address } */
	sd	s11, -16(s0)                  /* riscv_sd M[549:57] { compr=false } */
	lui	a4, %hi(.Lstr.1)             /* riscv_lui Lu[501:11] arity.c:10:12 { compr=true } */
	addi	a4, a4, %lo(.Lstr.1)        /* riscv_addi Lu[502:12] arity.c:10:12 { compr=true comp_req=address } */
	slli	a0, a0, 32                  /* riscv_slli Lu[504:14] { compr=true comp_req=address } */
	srai	a0, a0, 32                  /* riscv_srai Lu[505:15] { compr=true comp_req=register comp_req=address } */
	slli	a1, a1, 32                  /* riscv_slli Lu[507:17] { compr=true comp_req=address } */
	srai	a1, a1, 32                  /* riscv_srai Lu[508:18] { compr=true comp_req=register comp_req=address } */
	slli	a3, a2, 32                  /* riscv_slli Lu[510:20] { compr=false comp_req=address } */
	srai	a3, a3, 32                  /* riscv_srai Lu[511:21] { compr=true comp_req=register comp_req=address } */
	mv	a2, a1                        /* be_Copy Lu[581:89] { compr=true } */
	mv	a1, a0                        /* be_Copy Lu[582:90] { compr=true } */
	mv	a0, a4                        /* be_Copy Lu[583:91] { compr=true } */
	mv	s11, ra                       /* be_Copy Lu[584:92] { compr=true } */
	jal	printf                       /* riscv_jal T[512:22] arity.c:10:11 { compr=true } */
	mv	ra, s11                       /* be_Copy Lu[585:93] { compr=true } */
	ld	s11, -16(s0)                  /* riscv_ld T[550:58] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[587:94] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[590:97] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[591:98] { compr=true } */
	ret                              /* riscv_ret X[528:38] { compr=true } */
	.size	func_three_params, .-func_three_params
# -- End  func_three_params

# -- Begin  call_func_ptr_two
	.p2align 4,,15
	.globl call_func_ptr_two
	.type	call_func_ptr_two, @function
call_func_ptr_two:
	.4byte 0x00032013  # CFI hint: arity 3
/*.L400:*/    /* Block BB[160:2] preds: none, freq: 1.000 */
	addi	sp, sp, -16                 /* be_IncSP Lu[692:93] { compr=true } */
	sd	s0, 8(sp)                     /* riscv_sd M[693:94] { compr=false } */
	addi	s0, sp, 16                  /* riscv_addi Lu[694:95] { compr=false comp_req=address } */
	sd	s11, -16(s0)                  /* riscv_sd M[651:53] { compr=false } */
	slli	a1, a1, 32                  /* riscv_slli Lu[609:13] { compr=true comp_req=address } */
	srai	a3, a1, 32                  /* riscv_srai Lu[610:14] { compr=false comp_req=register comp_req=address } */
	slli	a1, a2, 32                  /* riscv_slli Lu[612:16] { compr=false comp_req=address } */
	srai	a1, a1, 32                  /* riscv_srai Lu[613:17] { compr=true comp_req=register comp_req=address } */
	mv	a2, a0                        /* be_Copy Lu[682:84] { compr=true } */
	mv	a0, a3                        /* be_Copy Lu[683:85] { compr=true } */
	mv	s11, ra                       /* be_Copy Lu[684:86] { compr=true } */
	lw t0, 0(a2)
	srli t0, t0, 16
	andi t0, t0, 0xff
	li t1, 2
	bne t0, t1, 1f
	jalr	a2
	j 2f
1:
	ebreak
2:
	mv	ra, s11    /* be_Copy Lu[685:87] { compr=true } */
	ld	s11, -16(s0)                  /* riscv_ld T[652:54] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[687:88] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[690:91] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[691:92] { compr=true } */
	ret                              /* riscv_ret X[630:34] { compr=true } */
	.size	call_func_ptr_two, .-call_func_ptr_two
# -- End  call_func_ptr_two

# -- Begin  call_func_ptr_three
	.p2align 4,,15
	.globl call_func_ptr_three
	.type	call_func_ptr_three, @function
call_func_ptr_three:
	.4byte 0x00042013  # CFI hint: arity 4
/*.L600:*/    /* Block BB[177:2] preds: none, freq: 1.000 */
	addi	sp, sp, -16                 /* be_IncSP Lu[799:100] { compr=true } */
	sd	s0, 8(sp)                     /* riscv_sd M[800:101] { compr=false } */
	addi	s0, sp, 16                  /* riscv_addi Lu[801:102] { compr=false comp_req=address } */
	sd	s11, -16(s0)                  /* riscv_sd M[754:56] { compr=false } */
	slli	a1, a1, 32                  /* riscv_slli Lu[709:13] { compr=true comp_req=address } */
	srai	a1, a1, 32                  /* riscv_srai Lu[710:14] { compr=true comp_req=register comp_req=address } */
	slli	a2, a2, 32                  /* riscv_slli Lu[712:16] { compr=true comp_req=address } */
	srai	a2, a2, 32                  /* riscv_srai Lu[713:17] { compr=true comp_req=register comp_req=address } */
	slli	a3, a3, 32                  /* riscv_slli Lu[715:19] { compr=true comp_req=address } */
	srai	a3, a3, 32                  /* riscv_srai Lu[716:20] { compr=true comp_req=register comp_req=address } */
	mv	s11, ra                       /* be_Copy Lu[786:88] { compr=true } */
	mv	ra, a1                        /* be_Copy Lu[787:89] { compr=true } */
	mv	a1, a2                        /* be_Copy Lu[788:90] { compr=true } */
	mv	a2, a3                        /* be_Copy Lu[789:91] { compr=true } */
	mv	a3, a0                        /* be_Copy Lu[790:92] { compr=true } */
	mv	a0, ra                        /* be_Copy Lu[791:93] { compr=true } */
	lw t0, 0(a3)
	srli t0, t0, 16
	andi t0, t0, 0xff
	li t1, 3
	bne t0, t1, 1f
	jalr	a3
	j 2f
1:
	ebreak
2:
	mv	ra, s11    /* be_Copy Lu[792:94] { compr=true } */
	ld	s11, -16(s0)                  /* riscv_ld T[755:57] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[794:95] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[797:98] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[798:99] { compr=true } */
	ret                              /* riscv_ret X[733:37] { compr=true } */
	.size	call_func_ptr_three, .-call_func_ptr_three
# -- End  call_func_ptr_three

# -- Begin  main
	.p2align 4,,15
	.globl main
	.type	main, @function
main:
	.4byte 0x00002013  # CFI hint: arity 0
/*.L800:*/    /* Block BB[195:2] preds: none, freq: 1.000 */
	addi	sp, sp, -16                 /* be_IncSP Lu[1130:316] { compr=true } */
	sd	s0, 8(sp)                     /* riscv_sd M[1131:317] { compr=false } */
	addi	s0, sp, 16                  /* riscv_addi Lu[1132:318] { compr=false comp_req=address } */
	sd	s11, -16(s0)                  /* riscv_sd M[1002:189] { compr=false } */
	lui	a0, %hi(.Lstr.2)             /* riscv_lui Lu[814:11] arity.c:37:12 { compr=true } */
	addi	a0, a0, %lo(.Lstr.2)        /* riscv_addi Lu[815:12] arity.c:37:12 { compr=true comp_req=address } */
	mv	s11, s10                      /* be_Copy Lu[1104:291] { compr=true } */
	mv	s10, s9                       /* be_Copy Lu[1105:292] { compr=true } */
	mv	s9, s8                        /* be_Copy Lu[1106:293] { compr=true } */
	mv	s8, s7                        /* be_Copy Lu[1107:294] { compr=true } */
	mv	s7, s6                        /* be_Copy Lu[1108:295] { compr=true } */
	mv	s6, s5                        /* be_Copy Lu[1109:296] { compr=true } */
	mv	s5, s4                        /* be_Copy Lu[1110:297] { compr=true } */
	mv	s4, s3                        /* be_Copy Lu[1111:298] { compr=true } */
	mv	s3, s2                        /* be_Copy Lu[1112:299] { compr=true } */
	mv	s2, ra                        /* be_Copy Lu[1113:300] { compr=true } */
	jal	printf                       /* riscv_jal T[816:13] arity.c:37:11 { compr=true } */
	lui	a0, %hi(func_two_params)     /* riscv_lui Lu[821:18] arity.c:33:28 { compr=true } */
	addi	a0, a0, %lo(func_two_params)    /* riscv_addi Lu[822:19] arity.c:33:28 { compr=true comp_req=address } */
	addi	a1, zero, 1                 /* riscv_addi Lu[824:21] arity.c:38:32 { compr=false comp_req=address } */
	slli	a1, a1, 32                  /* riscv_slli Lu[825:22] { compr=true comp_req=address } */
	srai	a1, a1, 32                  /* riscv_srai Lu[826:23] { compr=true comp_req=register comp_req=address } */
	addi	a2, zero, 2                 /* riscv_addi Lu[827:24] arity.c:38:35 { compr=false comp_req=address } */
	slli	a2, a2, 32                  /* riscv_slli Lu[828:25] { compr=true comp_req=address } */
	srai	a2, a2, 32                  /* riscv_srai Lu[829:26] { compr=true comp_req=register comp_req=address } */
	jal	call_func_ptr_two            /* riscv_jal T[830:27] arity.c:38:22 { compr=true } */
	lui	a0, %hi(.Lstr.3)             /* riscv_lui Lu[835:32] arity.c:41:12 { compr=true } */
	addi	a0, a0, %lo(.Lstr.3)        /* riscv_addi Lu[836:33] arity.c:41:12 { compr=true comp_req=address } */
	jal	printf                       /* riscv_jal T[837:34] arity.c:41:11 { compr=true } */
	lui	a0, %hi(func_three_params)    /* riscv_lui Lu[842:39] arity.c:34:32 { compr=true } */
	addi	a0, a0, %lo(func_three_params)    /* riscv_addi Lu[843:40] arity.c:34:32 { compr=true comp_req=address } */
	addi	a1, zero, 1                 /* riscv_addi Lu[999:186] arity.c:38:32 { compr=false comp_req=address } */
	slli	a1, a1, 32                  /* riscv_slli Lu[1000:187] { compr=true comp_req=address } */
	srai	a1, a1, 32                  /* riscv_srai Lu[1001:188] { compr=true comp_req=register comp_req=address } */
	addi	a2, zero, 2                 /* riscv_addi Lu[993:180] arity.c:38:35 { compr=false comp_req=address } */
	slli	a2, a2, 32                  /* riscv_slli Lu[994:181] { compr=true comp_req=address } */
	srai	a2, a2, 32                  /* riscv_srai Lu[995:182] { compr=true comp_req=register comp_req=address } */
	jal	call_func_ptr_two            /* riscv_jal T[848:41] arity.c:42:22 { compr=true } */
	lui	a0, %hi(.Lstr.4)             /* riscv_lui Lu[853:46] arity.c:45:12 { compr=true } */
	addi	a0, a0, %lo(.Lstr.4)        /* riscv_addi Lu[854:47] arity.c:45:12 { compr=true comp_req=address } */
	jal	printf                       /* riscv_jal T[855:48] arity.c:45:11 { compr=true } */
	addi	a3, zero, 3                 /* riscv_addi Lu[864:53] arity.c:46:42 { compr=false comp_req=address } */
	slli	a3, a3, 32                  /* riscv_slli Lu[865:54] { compr=true comp_req=address } */
	srai	a3, a3, 32                  /* riscv_srai Lu[866:55] { compr=true comp_req=register comp_req=address } */
	lui	a0, %hi(func_three_params)    /* riscv_lui Lu[988:175] arity.c:34:32 { compr=true } */
	addi	a0, a0, %lo(func_three_params)    /* riscv_addi Lu[989:176] arity.c:34:32 { compr=true comp_req=address } */
	addi	a2, zero, 2                 /* riscv_addi Lu[990:177] arity.c:38:35 { compr=false comp_req=address } */
	slli	a2, a2, 32                  /* riscv_slli Lu[991:178] { compr=true comp_req=address } */
	srai	a2, a2, 32                  /* riscv_srai Lu[992:179] { compr=true comp_req=register comp_req=address } */
	addi	a1, zero, 1                 /* riscv_addi Lu[996:183] arity.c:38:32 { compr=false comp_req=address } */
	slli	a1, a1, 32                  /* riscv_slli Lu[997:184] { compr=true comp_req=address } */
	srai	a1, a1, 32                  /* riscv_srai Lu[998:185] { compr=true comp_req=register comp_req=address } */
	jal	call_func_ptr_three          /* riscv_jal T[867:56] arity.c:46:24 { compr=true } */
	mv	ra, s2                        /* be_Copy Lu[1114:301] { compr=true } */
	mv	s2, s3                        /* be_Copy Lu[1115:302] { compr=true } */
	mv	s3, s4                        /* be_Copy Lu[1116:303] { compr=true } */
	mv	s4, s5                        /* be_Copy Lu[1117:304] { compr=true } */
	mv	s5, s6                        /* be_Copy Lu[1118:305] { compr=true } */
	mv	s6, s7                        /* be_Copy Lu[1119:306] { compr=true } */
	mv	s7, s8                        /* be_Copy Lu[1120:307] { compr=true } */
	mv	s8, s9                        /* be_Copy Lu[1121:308] { compr=true } */
	mv	s9, s10                       /* be_Copy Lu[1122:309] { compr=true } */
	mv	s10, s11                      /* be_Copy Lu[1123:310] { compr=true } */
	mv	a0, zero                      /* be_Copy Lu[986:174] { compr=true } */
	ld	s11, -16(s0)                  /* riscv_ld T[1003:190] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[1125:311] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[1128:314] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[1129:315] { compr=true } */
	ret                              /* riscv_ret X[883:72] arity.c:48:5 { compr=true } */
	.size	main, .-main
# -- End  main

	.section	.rodata
.Lstr.0:
	.asciz "Function with two parameters: %d, %d\n"
.Lstr.1:
	.asciz "Function with three parameters: %d, %d, %d\n"
.Lstr.2:
	.asciz "Calling function with correct number of parameters:\n"
.Lstr.3:
	.asciz "Calling function with incorrect number of parameters:\n"
.Lstr.4:
	.asciz "Calling another function with correct number of parameters:\n"
