	.text
# -- Begin  funcone
	.p2align 4,,15
	.globl funcone
	.type	funcone, @function
funcone:
	.4byte 0x00012013  # CFI hint: arity 1
/*.L0:*/    /* Block BB[110:2] preds: none, freq: 1.000 */
	addi	sp, sp, -32                 /* be_IncSP Lu[590:92] { compr=true } */
	sd	s0, 24(sp)                    /* riscv_sd M[591:93] { compr=false } */
	addi	s0, sp, 32                  /* riscv_addi Lu[592:94] { compr=false } */
	sd	s10, -16(s0)                  /* riscv_sd M[549:53] { compr=false } */
	sd	s11, -24(s0)                  /* riscv_sd M[546:50] { compr=false } */
	lui	a1, %hi(.Lstr.0)             /* riscv_lui Lu[505:11] partc.c:6:16 { compr=true } */
	addi	a1, a1, %lo(.Lstr.0)        /* riscv_addi Lu[506:12] partc.c:6:16 { compr=true comp_req=address } */
	mv	s10, a0                       /* be_Copy Lu[579:83] { compr=true } */
	mv	a0, a1                        /* be_Copy Lu[580:84] { compr=true } */
	mv	s11, ra                       /* be_Copy Lu[581:85] { compr=true } */
	jal	printf                       /* riscv_jal T[507:13] partc.c:6:15 { compr=true } */
	addiw	a0, s10, 378               /* riscv_addiw Lu[513:19] partc.c:7:19 { compr=false } */
	mv	ra, s11                       /* be_Copy Lu[582:86] { compr=true } */
	ld	s11, -24(s0)                  /* riscv_ld T[547:51] { compr=false } */
	ld	s10, -16(s0)                  /* riscv_ld T[550:54] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[585:87] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[588:90] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[589:91] { compr=true } */
	ret                              /* riscv_ret X[525:31] partc.c:7:9 { compr=true } */
	.size	funcone, .-funcone
# -- End  funcone

# -- Begin  functwo
	.p2align 4,,15
	.globl functwo
	.type	functwo, @function
functwo:
	.4byte 0x00012013  # CFI hint: arity 1
/*.L200:*/    /* Block BB[134:2] preds: none, freq: 1.000 */
	addi	sp, sp, -32                 /* be_IncSP Lu[690:92] { compr=true } */
	sd	s0, 24(sp)                    /* riscv_sd M[691:93] { compr=false } */
	addi	s0, sp, 32                  /* riscv_addi Lu[692:94] { compr=false } */
	sd	s10, -16(s0)                  /* riscv_sd M[649:53] { compr=false } */
	sd	s11, -24(s0)                  /* riscv_sd M[646:50] { compr=false } */
	lui	a1, %hi(.Lstr.1)             /* riscv_lui Lu[605:11] partc.c:12:16 { compr=true } */
	addi	a1, a1, %lo(.Lstr.1)        /* riscv_addi Lu[606:12] partc.c:12:16 { compr=true comp_req=address } */
	mv	s10, a0                       /* be_Copy Lu[679:83] { compr=true } */
	mv	a0, a1                        /* be_Copy Lu[680:84] { compr=true } */
	mv	s11, ra                       /* be_Copy Lu[681:85] { compr=true } */
	jal	printf                       /* riscv_jal T[607:13] partc.c:12:15 { compr=true } */
	addiw	a0, s10, 888               /* riscv_addiw Lu[613:19] partc.c:13:21 { compr=false } */
	mv	ra, s11                       /* be_Copy Lu[682:86] { compr=true } */
	ld	s11, -24(s0)                  /* riscv_ld T[647:51] { compr=false } */
	ld	s10, -16(s0)                  /* riscv_ld T[650:54] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[685:87] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[688:90] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[689:91] { compr=true } */
	ret                              /* riscv_ret X[625:31] partc.c:13:9 { compr=true } */
	.size	functwo, .-functwo
# -- End  functwo

# -- Begin  functhree
	.p2align 4,,15
	.globl functhree
	.type	functhree, @function
functhree:
	.4byte 0x00012013  # CFI hint: arity 1
/*.L400:*/    /* Block BB[158:2] preds: none, freq: 1.000 */
	addi	sp, sp, -32                 /* be_IncSP Lu[792:94] { compr=true } */
	sd	s0, 24(sp)                    /* riscv_sd M[793:95] { compr=false } */
	addi	s0, sp, 32                  /* riscv_addi Lu[794:96] { compr=false } */
	sd	s10, -16(s0)                  /* riscv_sd M[751:55] { compr=false } */
	sd	s11, -24(s0)                  /* riscv_sd M[748:52] { compr=false } */
	lui	a1, %hi(.Lstr.2)             /* riscv_lui Lu[705:11] partc.c:18:16 { compr=true } */
	addi	a1, a1, %lo(.Lstr.2)        /* riscv_addi Lu[706:12] partc.c:18:16 { compr=true comp_req=address } */
	mv	s10, a0                       /* be_Copy Lu[781:85] { compr=true } */
	mv	a0, a1                        /* be_Copy Lu[782:86] { compr=true } */
	mv	s11, ra                       /* be_Copy Lu[783:87] { compr=true } */
	jal	printf                       /* riscv_jal T[707:13] partc.c:18:15 { compr=true } */
	lui	a0, 48                       /* riscv_lui Lu[713:19] partc.c:19:16 { compr=true } */
	addi	a0, a0, 1800                /* riscv_addi Lu[714:20] partc.c:19:16 { compr=false } */
	addw	a0, s10, a0                 /* riscv_addw Lu[715:21] partc.c:19:24 { compr=false } */
	mv	ra, s11                       /* be_Copy Lu[784:88] { compr=true } */
	ld	s11, -24(s0)                  /* riscv_ld T[749:53] { compr=false } */
	ld	s10, -16(s0)                  /* riscv_ld T[752:56] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[787:89] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[790:92] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[791:93] { compr=true } */
	ret                              /* riscv_ret X[727:33] partc.c:19:9 { compr=true } */
	.size	functhree, .-functhree
# -- End  functhree

# -- Begin  funcfour
	.p2align 4,,15
	.globl funcfour
	.type	funcfour, @function
funcfour:
	.4byte 0x00002013  # CFI hint: arity 0
/*.L600:*/    /* Block BB[182:2] preds: none, freq: 1.000 */
	addi	sp, sp, -32                 /* be_IncSP Lu[892:92] { compr=true } */
	sd	s0, 24(sp)                    /* riscv_sd M[893:93] { compr=false } */
	addi	s0, sp, 32                  /* riscv_addi Lu[894:94] { compr=false } */
	sd	s10, -16(s0)                  /* riscv_sd M[850:52] { compr=false } */
	sd	s11, -24(s0)                  /* riscv_sd M[847:49] { compr=false } */
	lui	a1, %hi(.Lstr.3)             /* riscv_lui Lu[807:11] partc.c:24:16 { compr=true } */
	addi	a1, a1, %lo(.Lstr.3)        /* riscv_addi Lu[808:12] partc.c:24:16 { compr=true comp_req=address } */
	mv	s10, ra                       /* be_Copy Lu[880:82] { compr=true } */
	mv	s11, a0                       /* be_Copy Lu[881:83] { compr=true } */
	mv	a0, a1                        /* be_Copy Lu[882:84] { compr=true } */
	jal	printf                       /* riscv_jal T[809:13] partc.c:24:15 { compr=true } */
	mv	a0, s11                       /* be_Copy Lu[883:85] { compr=true } */
	mv	ra, s10                       /* be_Copy Lu[884:86] { compr=true } */
	ld	s11, -24(s0)                  /* riscv_ld T[848:50] { compr=false } */
	ld	s10, -16(s0)                  /* riscv_ld T[851:53] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[887:87] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[890:90] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[891:91] { compr=true } */
	ret                              /* riscv_ret X[826:30] partc.c:25:9 { compr=true } */
	.size	funcfour, .-funcfour
# -- End  funcfour

# -- Begin  funcfive
	.p2align 4,,15
	.globl funcfive
	.type	funcfive, @function
funcfive:
	.4byte 0x00012013  # CFI hint: arity 1
/*.L800:*/    /* Block BB[204:2] preds: none, freq: 1.000 */
	addi	sp, sp, -32                 /* be_IncSP Lu[992:92] { compr=true } */
	sd	s0, 24(sp)                    /* riscv_sd M[993:93] { compr=false } */
	addi	s0, sp, 32                  /* riscv_addi Lu[994:94] { compr=false } */
	sd	s10, -16(s0)                  /* riscv_sd M[951:53] { compr=false } */
	sd	s11, -24(s0)                  /* riscv_sd M[948:50] { compr=false } */
	lui	a1, %hi(.Lstr.4)             /* riscv_lui Lu[907:11] partc.c:30:16 { compr=true } */
	addi	a1, a1, %lo(.Lstr.4)        /* riscv_addi Lu[908:12] partc.c:30:16 { compr=true comp_req=address } */
	mv	s10, a0                       /* be_Copy Lu[981:83] { compr=true } */
	mv	a0, a1                        /* be_Copy Lu[982:84] { compr=true } */
	mv	s11, ra                       /* be_Copy Lu[983:85] { compr=true } */
	jal	printf                       /* riscv_jal T[909:13] partc.c:30:15 { compr=true } */
	addiw	a0, s10, 5                 /* riscv_addiw Lu[915:19] partc.c:31:27 { compr=false } */
	mv	ra, s11                       /* be_Copy Lu[984:86] { compr=true } */
	ld	s11, -24(s0)                  /* riscv_ld T[949:51] { compr=false } */
	ld	s10, -16(s0)                  /* riscv_ld T[952:54] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[987:87] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[990:90] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[991:91] { compr=true } */
	ret                              /* riscv_ret X[927:31] partc.c:31:9 { compr=true } */
	.size	funcfive, .-funcfive
# -- End  funcfive

# -- Begin  main
	.p2align 4,,15
	.globl main
	.type	main, @function
main:
	.4byte 0x00002013  # CFI hint: arity 0
/*.L1000:*/    /* Block BB[228:2] preds: none, freq: 1.000 */
	addi	sp, sp, -16                 /* be_IncSP Lu[1204:203] { compr=true } */
	sd	s0, 8(sp)                     /* riscv_sd M[1205:204] { compr=false } */
	addi	s0, sp, 16                  /* riscv_addi Lu[1206:205] { compr=false comp_req=address } */
	sd	s11, -16(s0)                  /* riscv_sd M[1129:129] { compr=false } */
	slli	a0, a0, 32                  /* riscv_slli Lu[1059:63] { compr=true comp_req=address } */
	srai	a0, a0, 32                  /* riscv_srai Lu[1060:64] { compr=true comp_req=register comp_req=address } */
	addi	a1, zero, 1                 /* riscv_addi Lu[1061:65] partc.c:37:21 { compr=false comp_req=address } */
	slli	a1, a1, 32                  /* riscv_slli Lu[1062:66] { compr=true comp_req=address } */
	srai	a1, a1, 32                  /* riscv_srai Lu[1063:67] { compr=true comp_req=register comp_req=address } */
	bne	a0, a1, .L1001               /* riscv_bcc T[1064:68] partc.c:37:18 { compr=false } */
.L1002:                           /* Block BB[482:50] preds: .L1000, freq: 0.500 */
	lui	t1, %hi(funcone)             /* riscv_lui Lu[1052:56] partc.c:38:23 { compr=true } */
	addi	t1, t1, %lo(funcone)        /* riscv_addi Lu[1053:57] partc.c:38:23 { compr=true comp_req=address } */
	/* fallthrough to .L1003 */      /* riscv_j X[1047:51] { compr=true } */
.L1003:                           /* Block BB[259:9] preds: .L1002 .L1004 .L1005, freq: 1.000 */
	addi	a0, zero, 1337              /* riscv_addi Lu[1010:14] partc.c:44:15 { compr=false } */
	slli	a0, a0, 32                  /* riscv_slli Lu[1011:15] { compr=true comp_req=address } */
	srai	a0, a0, 32                  /* riscv_srai Lu[1012:16] { compr=true comp_req=register comp_req=address } */
	mv	s11, s6                       /* be_Copy Lu[1186:186] { compr=true } */
	mv	s6, s5                        /* be_Copy Lu[1187:187] { compr=true } */
	mv	s5, s4                        /* be_Copy Lu[1188:188] { compr=true } */
	mv	s4, s3                        /* be_Copy Lu[1189:189] { compr=true } */
	mv	s3, s2                        /* be_Copy Lu[1190:190] { compr=true } */
	mv	s2, ra                        /* be_Copy Lu[1191:191] { compr=true } */
	lw t0, 0(t1)
	srli t0, t0, 16
	andi t0, t0, 0xff
	li t1, 1
	bne t0, t1, 1f
	jalr	t1
	j 2f
1:
	ebreak
2:
	addi	a0, zero, 7    /* riscv_addi Lu[1018:22] partc.c:45:18 { compr=false comp_req=address } */
	slli	a0, a0, 32                  /* riscv_slli Lu[1019:23] { compr=true comp_req=address } */
	srai	a0, a0, 32                  /* riscv_srai Lu[1020:24] { compr=true comp_req=register comp_req=address } */
	jal	funcfour                     /* riscv_jal T[1021:25] partc.c:45:17 { compr=true } */
	addi	a0, zero, 5                 /* riscv_addi Lu[1026:30] partc.c:46:35 { compr=false comp_req=address } */
	slli	a0, a0, 32                  /* riscv_slli Lu[1027:31] { compr=true comp_req=address } */
	srai	a0, a0, 32                  /* riscv_srai Lu[1028:32] { compr=true comp_req=register comp_req=address } */
	jal	funcfive                     /* riscv_jal T[1029:33] partc.c:46:34 { compr=true } */
	mv	ra, s2                        /* be_Copy Lu[1192:192] { compr=true } */
	mv	s2, s3                        /* be_Copy Lu[1193:193] { compr=true } */
	mv	s3, s4                        /* be_Copy Lu[1194:194] { compr=true } */
	mv	s4, s5                        /* be_Copy Lu[1195:195] { compr=true } */
	mv	s5, s6                        /* be_Copy Lu[1196:196] { compr=true } */
	mv	s6, s11                       /* be_Copy Lu[1197:197] { compr=true } */
	mv	a0, zero                      /* be_Copy Lu[1127:128] { compr=true } */
	ld	s11, -16(s0)                  /* riscv_ld T[1130:130] { compr=false } */
	ld	t0, -8(s0)                    /* riscv_ld T[1199:198] { compr=false } */
	mv	sp, s0                        /* be_Copy Lu[1202:201] { compr=true } */
	mv	s0, t0                        /* be_Copy Lu[1203:202] { compr=true } */
	ret                              /* riscv_ret X[1045:49] partc.c:47:9 { compr=true } */
.L1001:                           /* Block BB[244:70] preds: .L1000, freq: 0.500 */
	addi	a1, zero, 2                 /* riscv_addi Lu[1069:71] partc.c:39:26 { compr=false comp_req=address } */
	slli	a1, a1, 32                  /* riscv_slli Lu[1070:72] { compr=true comp_req=address } */
	srai	a1, a1, 32                  /* riscv_srai Lu[1071:73] { compr=true comp_req=register comp_req=address } */
	beq	a0, a1, .L1004               /* riscv_bcc T[1072:74] partc.c:39:23 { compr=false } */
	/* fallthrough to .L1005 */      /* riscv_bcc T[1072:74] partc.c:39:23 { compr=false } */
.L1005:                           /* Block BB[486:54] preds: .L1001, freq: 0.250 */
	lui	t1, %hi(functhree)           /* riscv_lui Lu[1056:60] partc.c:42:36 { compr=true } */
	addi	t1, t1, %lo(functhree)      /* riscv_addi Lu[1057:61] partc.c:42:36 { compr=true comp_req=address } */
	j .L1003                         /* riscv_j X[1051:55] { compr=true } */
.L1004:                           /* Block BB[484:52] preds: .L1001, freq: 0.250 */
	lui	t1, %hi(functwo)             /* riscv_lui Lu[1054:58] partc.c:40:22 { compr=true } */
	addi	t1, t1, %lo(functwo)        /* riscv_addi Lu[1055:59] partc.c:40:22 { compr=true comp_req=address } */
	j .L1003                         /* riscv_j X[1049:53] { compr=true } */
	.size	main, .-main
# -- End  main

	.section	.rodata
.Lstr.0:
	.asciz "funcone called!\n"
.Lstr.1:
	.asciz "functwo called!\n"
.Lstr.2:
	.asciz "functhree called!\n"
.Lstr.3:
	.asciz "funcfour called!\n"
.Lstr.4:
	.asciz "funcfive called!\n"
