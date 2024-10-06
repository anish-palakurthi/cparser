	.text
# -- Begin  func1
	.p2align 4,,15
	.globl func1
	.type	func1, @function
func1:
	.4byte 0x00002013  # CFI hint: arity 0
/*.L0:*/    /* Block BB[109:2] preds: none, freq: 1.000 */
	addi	sp, sp, -16                 /* be_IncSP Lu[364:84] { compr=true } */
	sd	s0, 8(sp)                     /* riscv_sd M[365:85] { compr=false } */
	addi	s0, sp, 16                  /* riscv_addi Lu[366:86] { compr=false comp_req=address } */
	sd	s11, -16(s0)                  /* riscv_sd M[327:48] { compr=false } */
	lui	a0, %hi(.Lstr.0)             /* riscv_lui Lu[288:11] hello.c:22:12 { compr=true } */
	addi	a0, a0, %lo(.Lstr.0)        /* riscv_addi Lu[289:12] hello.c:22:12 { compr=true comp_req=address } */
	mv	s11, ra                       /* be_Copy Lu[356:77] { compr=true } */
	jal	printf                       /* riscv_jal T[290:13] hello.c:22:11 { compr=true } */
	mv	ra, s11                       /* be_Copy Lu[357:78] { compr=true } */
	ld	s11, -16(s0)                  /* riscv_ld T[328:49] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[359:79] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[362:82] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[363:83] { compr=true } */
	ret                              /* riscv_ret X[306:29] { compr=true } */
	.size	func1, .-func1
# -- End  func1

# -- Begin  func2
	.p2align 4,,15
	.globl func2
	.type	func2, @function
func2:
	.4byte 0x00002013  # CFI hint: arity 0
/*.L200:*/    /* Block BB[130:2] preds: none, freq: 1.000 */
	addi	sp, sp, -16                 /* be_IncSP Lu[455:84] { compr=true } */
	sd	s0, 8(sp)                     /* riscv_sd M[456:85] { compr=false } */
	addi	s0, sp, 16                  /* riscv_addi Lu[457:86] { compr=false comp_req=address } */
	sd	s11, -16(s0)                  /* riscv_sd M[418:48] { compr=false } */
	lui	a0, %hi(.Lstr.1)             /* riscv_lui Lu[379:11] hello.c:26:12 { compr=true } */
	addi	a0, a0, %lo(.Lstr.1)        /* riscv_addi Lu[380:12] hello.c:26:12 { compr=true comp_req=address } */
	mv	s11, ra                       /* be_Copy Lu[447:77] { compr=true } */
	jal	printf                       /* riscv_jal T[381:13] hello.c:26:11 { compr=true } */
	mv	ra, s11                       /* be_Copy Lu[448:78] { compr=true } */
	ld	s11, -16(s0)                  /* riscv_ld T[419:49] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[450:79] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[453:82] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[454:83] { compr=true } */
	ret                              /* riscv_ret X[397:29] { compr=true } */
	.size	func2, .-func2
# -- End  func2

# -- Begin  main
	.p2align 4,,15
	.globl main
	.type	main, @function
main:
	.4byte 0x00002013  # CFI hint: arity 0
/*.L400:*/    /* Block BB[151:2] preds: none, freq: 1.000 */
	addi	sp, sp, -16                 /* be_IncSP Lu[674:212] { compr=true } */
	sd	s0, 8(sp)                     /* riscv_sd M[675:213] { compr=false } */
	addi	s0, sp, 16                  /* riscv_addi Lu[676:214] { compr=false comp_req=address } */
	sd	s11, -16(s0)                  /* riscv_sd M[584:123] { compr=false } */
	lui	a0, %hi(.Lstr.2)             /* riscv_lui Lu[470:11] hello.c:11:12 { compr=true } */
	addi	a0, a0, %lo(.Lstr.2)        /* riscv_addi Lu[471:12] hello.c:11:12 { compr=true comp_req=address } */
	mv	s11, s7                       /* be_Copy Lu[652:191] { compr=true } */
	mv	s7, s6                        /* be_Copy Lu[653:192] { compr=true } */
	mv	s6, s5                        /* be_Copy Lu[654:193] { compr=true } */
	mv	s5, s4                        /* be_Copy Lu[655:194] { compr=true } */
	mv	s4, s3                        /* be_Copy Lu[656:195] { compr=true } */
	mv	s3, s2                        /* be_Copy Lu[657:196] { compr=true } */
	mv	s2, s1                        /* be_Copy Lu[658:197] { compr=true } */
	mv	s1, ra                        /* be_Copy Lu[659:198] { compr=true } */
	jal	printf                       /* riscv_jal T[472:13] hello.c:11:11 { compr=true } */
	jal	func1                        /* riscv_jal T[477:18] hello.c:12:10 { compr=true } */
	lui	a1, %hi(func2)               /* riscv_lui Lu[481:22] hello.c:14:15 { compr=true } */
	addi	a1, a1, %lo(func2)          /* riscv_addi Lu[482:23] hello.c:14:15 { compr=true comp_req=address } */
	lui	a0, %hi(funcPtr)             /* riscv_lui Lu[483:24] hello.c:14:5 { compr=true } */
	addi	a0, a0, %lo(funcPtr)        /* riscv_addi Lu[484:25] hello.c:14:5 { compr=true comp_req=address } */
	sd	a1, 0(a0)                     /* riscv_sd M[485:26] hello.c:14:5 { compr=false } */
	lui	a0, %hi(.Lstr.3)             /* riscv_lui Lu[487:28] hello.c:15:12 { compr=true } */
	addi	a0, a0, %lo(.Lstr.3)        /* riscv_addi Lu[488:29] hello.c:15:12 { compr=true comp_req=address } */
	jal	printf                       /* riscv_jal T[489:30] hello.c:15:11 { compr=true } */
	lui	a0, %hi(funcPtr)             /* riscv_lui Lu[582:121] hello.c:14:5 { compr=true } */
	addi	a0, a0, %lo(funcPtr)        /* riscv_addi Lu[583:122] hello.c:14:5 { compr=true comp_req=address } */
	ld	a0, 0(a0)                     /* riscv_ld T[493:34] hello.c:16:7 { compr=false } */
	lw t0, 0(a0)
	srli t0, t0, 16
	andi t0, t0, 0xff
	li t1, 0
	bne t0, t1, 1f
	jalr	a0
	j 2f
1:
	ebreak
2:
	mv	ra, s1    /* be_Copy Lu[660:199] { compr=true } */
	mv	s1, s2                        /* be_Copy Lu[661:200] { compr=true } */
	mv	s2, s3                        /* be_Copy Lu[662:201] { compr=true } */
	mv	s3, s4                        /* be_Copy Lu[663:202] { compr=true } */
	mv	s4, s5                        /* be_Copy Lu[664:203] { compr=true } */
	mv	s5, s6                        /* be_Copy Lu[665:204] { compr=true } */
	mv	s6, s7                        /* be_Copy Lu[666:205] { compr=true } */
	mv	s7, s11                       /* be_Copy Lu[667:206] { compr=true } */
	mv	a0, zero                      /* be_Copy Lu[580:120] { compr=true } */
	ld	s11, -16(s0)                  /* riscv_ld T[585:124] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[669:207] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[672:210] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[673:211] { compr=true } */
	ret                              /* riscv_ret X[514:55] hello.c:18:5 { compr=true } */
	.size	main, .-main
# -- End  main

	.comm funcPtr,8,8
	.section	.rodata
.Lstr.0:
	.asciz "Inside func1()\n"
.Lstr.1:
	.asciz "Inside func2()\n"
.Lstr.2:
	.asciz "Calling func1() directly\n"
.Lstr.3:
	.asciz "Calling func2() indirectly via function pointer\n"
