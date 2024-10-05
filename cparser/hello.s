	.text
# -- Begin  myFunction
	.p2align 4,,15
	.globl myFunction
	.type	myFunction, @function
myFunction:
/*.L0:*/                          /* Block BB[50:2] preds: none, freq: 1.000 */
	addi	sp, sp, -16                 /* be_IncSP Lu[181:84] { compr=true } */
	sd	s0, 8(sp)                     /* riscv_sd M[182:85] { compr=false } */
	addi	s0, sp, 16                  /* riscv_addi Lu[183:86] { compr=false comp_req=address } */
	sd	s11, -16(s0)                  /* riscv_sd M[144:48] { compr=false } */
	lui	a0, %hi(.Lstr.0)             /* riscv_lui Lu[105:11] hello.c:2:12 { compr=true } */
	addi	a0, a0, %lo(.Lstr.0)        /* riscv_addi Lu[106:12] hello.c:2:12 { compr=true comp_req=address } */
	mv	s11, ra                       /* be_Copy Lu[173:77] { compr=true } */
	jal	printf                       /* riscv_jal T[107:13] hello.c:2:11 { compr=true } */
	mv	ra, s11                       /* be_Copy Lu[174:78] { compr=true } */
	ld	s11, -16(s0)                  /* riscv_ld T[145:49] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[176:79] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[179:82] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[180:83] { compr=true } */
	ret                              /* riscv_ret X[123:29] { compr=true } */
	.size	myFunction, .-myFunction
# -- End  myFunction

# -- Begin  main
	.p2align 4,,15
	.globl main
	.type	main, @function
main:
/*.L200:*/                        /* Block BB[75:2] preds: none, freq: 1.000 */
	addi	sp, sp, -16                 /* be_IncSP Lu[270:82] { compr=true } */
	sd	s0, 8(sp)                     /* riscv_sd M[271:83] { compr=false } */
	addi	s0, sp, 16                  /* riscv_addi Lu[272:84] { compr=false comp_req=address } */
	sd	s11, -16(s0)                  /* riscv_sd M[233:46] { compr=false } */
	mv	s11, ra                       /* be_Copy Lu[262:75] { compr=true } */
	jal	myFunction                   /* riscv_jal T[196:11] hello.c:7:12 { compr=true } */
	mv	ra, s11                       /* be_Copy Lu[263:76] { compr=true } */
	mv	a0, zero                      /* be_Copy Lu[231:45] { compr=true } */
	ld	s11, -16(s0)                  /* riscv_ld T[234:47] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[265:77] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[268:80] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[269:81] { compr=true } */
	ret                              /* riscv_ret X[213:28] hello.c:8:5 { compr=true } */
	.size	main, .-main
# -- End  main

	.section	.rodata
.Lstr.0:
	.asciz "Indirect call\n"
