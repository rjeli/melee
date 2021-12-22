.include "macros.inc"

.section .text  # 0x803421A4 - 0x80342AA4

.global PSMTXIdentity
PSMTXIdentity:
/* 803421A4 0033ED84  C0 02 E9 34 */	lfs f0, lbl_804DE314@sda21(r2)
/* 803421A8 0033ED88  C0 22 E9 30 */	lfs f1, lbl_804DE310@sda21(r2)
/* 803421AC 0033ED8C  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 803421B0 0033ED90  10 40 0C 60 */	ps_merge01 f2, f0, f1
/* 803421B4 0033ED94  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 803421B8 0033ED98  10 21 04 A0 */	ps_merge10 f1, f1, f0
/* 803421BC 0033ED9C  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 803421C0 0033EDA0  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 803421C4 0033EDA4  F0 23 00 00 */	psq_st f1, 0(r3), 0, qr0
/* 803421C8 0033EDA8  F0 23 00 28 */	psq_st f1, 40(r3), 0, qr0
/* 803421CC 0033EDAC  4E 80 00 20 */	blr 

.global PSMTXCopy
PSMTXCopy:
/* 803421D0 0033EDB0  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 803421D4 0033EDB4  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 803421D8 0033EDB8  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 803421DC 0033EDBC  F0 24 00 08 */	psq_st f1, 8(r4), 0, qr0
/* 803421E0 0033EDC0  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 803421E4 0033EDC4  F0 44 00 10 */	psq_st f2, 16(r4), 0, qr0
/* 803421E8 0033EDC8  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 803421EC 0033EDCC  F0 64 00 18 */	psq_st f3, 24(r4), 0, qr0
/* 803421F0 0033EDD0  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 803421F4 0033EDD4  F0 84 00 20 */	psq_st f4, 32(r4), 0, qr0
/* 803421F8 0033EDD8  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 803421FC 0033EDDC  F0 A4 00 28 */	psq_st f5, 40(r4), 0, qr0
/* 80342200 0033EDE0  4E 80 00 20 */	blr 

.global PSMTXConcat
PSMTXConcat:
/* 80342204 0033EDE4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80342208 0033EDE8  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8034220C 0033EDEC  D9 C1 00 08 */	stfd f14, 8(r1)
/* 80342210 0033EDF0  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 80342214 0033EDF4  3C C0 80 4D */	lis r6, lbl_804D5C00@ha
/* 80342218 0033EDF8  E0 E4 00 08 */	psq_l f7, 8(r4), 0, qr0
/* 8034221C 0033EDFC  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 80342220 0033EE00  38 C6 5C 00 */	addi r6, r6, lbl_804D5C00@l
/* 80342224 0033EE04  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80342228 0033EE08  E1 04 00 10 */	psq_l f8, 16(r4), 0, qr0
/* 8034222C 0033EE0C  11 86 00 18 */	ps_muls0 f12, f6, f0
/* 80342230 0033EE10  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 80342234 0033EE14  11 A7 00 18 */	ps_muls0 f13, f7, f0
/* 80342238 0033EE18  E3 E6 00 00 */	psq_l f31, 0(r6), 0, qr0
/* 8034223C 0033EE1C  11 C6 00 98 */	ps_muls0 f14, f6, f2
/* 80342240 0033EE20  E1 24 00 18 */	psq_l f9, 24(r4), 0, qr0
/* 80342244 0033EE24  11 E7 00 98 */	ps_muls0 f15, f7, f2
/* 80342248 0033EE28  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8034224C 0033EE2C  11 88 60 1E */	ps_madds1 f12, f8, f0, f12
/* 80342250 0033EE30  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 80342254 0033EE34  11 C8 70 9E */	ps_madds1 f14, f8, f2, f14
/* 80342258 0033EE38  E1 44 00 20 */	psq_l f10, 32(r4), 0, qr0
/* 8034225C 0033EE3C  11 A9 68 1E */	ps_madds1 f13, f9, f0, f13
/* 80342260 0033EE40  E1 64 00 28 */	psq_l f11, 40(r4), 0, qr0
/* 80342264 0033EE44  11 E9 78 9E */	ps_madds1 f15, f9, f2, f15
/* 80342268 0033EE48  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8034226C 0033EE4C  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 80342270 0033EE50  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 80342274 0033EE54  11 AB 68 5C */	ps_madds0 f13, f11, f1, f13
/* 80342278 0033EE58  11 CA 70 DC */	ps_madds0 f14, f10, f3, f14
/* 8034227C 0033EE5C  11 EB 78 DC */	ps_madds0 f15, f11, f3, f15
/* 80342280 0033EE60  F1 85 00 00 */	psq_st f12, 0(r5), 0, qr0
/* 80342284 0033EE64  10 46 01 18 */	ps_muls0 f2, f6, f4
/* 80342288 0033EE68  11 BF 68 5E */	ps_madds1 f13, f31, f1, f13
/* 8034228C 0033EE6C  10 07 01 18 */	ps_muls0 f0, f7, f4
/* 80342290 0033EE70  F1 C5 00 10 */	psq_st f14, 16(r5), 0, qr0
/* 80342294 0033EE74  11 FF 78 DE */	ps_madds1 f15, f31, f3, f15
/* 80342298 0033EE78  F1 A5 00 08 */	psq_st f13, 8(r5), 0, qr0
/* 8034229C 0033EE7C  10 48 11 1E */	ps_madds1 f2, f8, f4, f2
/* 803422A0 0033EE80  10 09 01 1E */	ps_madds1 f0, f9, f4, f0
/* 803422A4 0033EE84  10 4A 11 5C */	ps_madds0 f2, f10, f5, f2
/* 803422A8 0033EE88  C9 C1 00 08 */	lfd f14, 8(r1)
/* 803422AC 0033EE8C  F1 E5 00 18 */	psq_st f15, 24(r5), 0, qr0
/* 803422B0 0033EE90  10 0B 01 5C */	ps_madds0 f0, f11, f5, f0
/* 803422B4 0033EE94  F0 45 00 20 */	psq_st f2, 32(r5), 0, qr0
/* 803422B8 0033EE98  10 1F 01 5E */	ps_madds1 f0, f31, f5, f0
/* 803422BC 0033EE9C  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 803422C0 0033EEA0  F0 05 00 28 */	psq_st f0, 40(r5), 0, qr0
/* 803422C4 0033EEA4  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 803422C8 0033EEA8  38 21 00 40 */	addi r1, r1, 0x40
/* 803422CC 0033EEAC  4E 80 00 20 */	blr 

.global PSMTXTranspose
PSMTXTranspose:
/* 803422D0 0033EEB0  C0 02 E9 34 */	lfs f0, lbl_804DE314@sda21(r2)
/* 803422D4 0033EEB4  E0 23 00 00 */	psq_l f1, 0(r3), 0, qr0
/* 803422D8 0033EEB8  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 803422DC 0033EEBC  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 803422E0 0033EEC0  10 81 14 20 */	ps_merge00 f4, f1, f2
/* 803422E4 0033EEC4  E0 63 80 08 */	psq_l f3, 8(r3), 1, qr0
/* 803422E8 0033EEC8  10 A1 14 E0 */	ps_merge11 f5, f1, f2
/* 803422EC 0033EECC  E0 43 80 18 */	psq_l f2, 24(r3), 1, qr0
/* 803422F0 0033EED0  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 803422F4 0033EED4  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 803422F8 0033EED8  10 43 14 20 */	ps_merge00 f2, f3, f2
/* 803422FC 0033EEDC  F0 A4 00 10 */	psq_st f5, 16(r4), 0, qr0
/* 80342300 0033EEE0  10 81 04 20 */	ps_merge00 f4, f1, f0
/* 80342304 0033EEE4  F0 44 00 20 */	psq_st f2, 32(r4), 0, qr0
/* 80342308 0033EEE8  10 A1 04 A0 */	ps_merge10 f5, f1, f0
/* 8034230C 0033EEEC  F0 84 00 08 */	psq_st f4, 8(r4), 0, qr0
/* 80342310 0033EEF0  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 80342314 0033EEF4  F0 A4 00 18 */	psq_st f5, 24(r4), 0, qr0
/* 80342318 0033EEF8  D0 64 00 28 */	stfs f3, 0x28(r4)
/* 8034231C 0033EEFC  4E 80 00 20 */	blr 

.global PSMTXInverse
PSMTXInverse:
/* 80342320 0033EF00  E0 03 80 00 */	psq_l f0, 0(r3), 1, qr0
/* 80342324 0033EF04  E0 23 00 04 */	psq_l f1, 4(r3), 0, qr0
/* 80342328 0033EF08  E0 43 80 10 */	psq_l f2, 16(r3), 1, qr0
/* 8034232C 0033EF0C  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 80342330 0033EF10  E0 63 00 14 */	psq_l f3, 20(r3), 0, qr0
/* 80342334 0033EF14  E0 83 80 20 */	psq_l f4, 32(r3), 1, qr0
/* 80342338 0033EF18  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 8034233C 0033EF1C  E0 A3 00 24 */	psq_l f5, 36(r3), 0, qr0
/* 80342340 0033EF20  11 63 01 B2 */	ps_mul f11, f3, f6
/* 80342344 0033EF24  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 80342348 0033EF28  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 8034234C 0033EF2C  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 80342350 0033EF30  11 81 02 32 */	ps_mul f12, f1, f8
/* 80342354 0033EF34  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 80342358 0033EF38  11 43 01 32 */	ps_mul f10, f3, f4
/* 8034235C 0033EF3C  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 80342360 0033EF40  11 20 01 72 */	ps_mul f9, f0, f5
/* 80342364 0033EF44  11 01 00 B2 */	ps_mul f8, f1, f2
/* 80342368 0033EF48  10 C6 30 28 */	ps_sub f6, f6, f6
/* 8034236C 0033EF4C  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 80342370 0033EF50  10 E0 03 72 */	ps_mul f7, f0, f13
/* 80342374 0033EF54  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 80342378 0033EF58  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 8034237C 0033EF5C  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 80342380 0033EF60  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 80342384 0033EF64  10 07 30 40 */	ps_cmpo0 cr0, f7, f6
/* 80342388 0033EF68  40 82 00 0C */	bne lbl_80342394
/* 8034238C 0033EF6C  38 60 00 00 */	li r3, 0
/* 80342390 0033EF70  4E 80 00 20 */	blr 
lbl_80342394:
/* 80342394 0033EF74  EC 00 38 30 */	fres f0, f7
/* 80342398 0033EF78  10 C0 00 2A */	ps_add f6, f0, f0
/* 8034239C 0033EF7C  10 A0 00 32 */	ps_mul f5, f0, f0
/* 803423A0 0033EF80  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 803423A4 0033EF84  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 803423A8 0033EF88  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 803423AC 0033EF8C  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 803423B0 0033EF90  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 803423B4 0033EF94  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 803423B8 0033EF98  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 803423BC 0033EF9C  10 AD 64 20 */	ps_merge00 f5, f13, f12
/* 803423C0 0033EFA0  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 803423C4 0033EFA4  10 8D 64 E0 */	ps_merge11 f4, f13, f12
/* 803423C8 0033EFA8  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 803423CC 0033EFAC  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 803423D0 0033EFB0  10 CD 00 72 */	ps_mul f6, f13, f1
/* 803423D4 0033EFB4  F0 84 00 10 */	psq_st f4, 16(r4), 0, qr0
/* 803423D8 0033EFB8  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 803423DC 0033EFBC  10 CC 30 BA */	ps_madd f6, f12, f2, f6
/* 803423E0 0033EFC0  F1 44 80 20 */	psq_st f10, 32(r4), 1, qr0
/* 803423E4 0033EFC4  10 CB 30 FE */	ps_nmadd f6, f11, f3, f6
/* 803423E8 0033EFC8  F1 24 80 24 */	psq_st f9, 36(r4), 1, qr0
/* 803423EC 0033EFCC  10 EA 00 72 */	ps_mul f7, f10, f1
/* 803423F0 0033EFD0  10 AB 34 20 */	ps_merge00 f5, f11, f6
/* 803423F4 0033EFD4  F1 04 80 28 */	psq_st f8, 40(r4), 1, qr0
/* 803423F8 0033EFD8  10 8B 34 E0 */	ps_merge11 f4, f11, f6
/* 803423FC 0033EFDC  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 80342400 0033EFE0  10 E9 38 BA */	ps_madd f7, f9, f2, f7
/* 80342404 0033EFE4  F0 84 00 18 */	psq_st f4, 24(r4), 0, qr0
/* 80342408 0033EFE8  10 E8 38 FE */	ps_nmadd f7, f8, f3, f7
/* 8034240C 0033EFEC  38 60 00 01 */	li r3, 1
/* 80342410 0033EFF0  F0 E4 80 2C */	psq_st f7, 44(r4), 1, qr0
/* 80342414 0033EFF4  4E 80 00 20 */	blr 

.global PSMTXRotRad
PSMTXRotRad:
/* 80342418 0033EFF8  7C 08 02 A6 */	mflr r0
/* 8034241C 0033EFFC  90 01 00 04 */	stw r0, 4(r1)
/* 80342420 0033F000  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80342424 0033F004  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80342428 0033F008  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034242C 0033F00C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80342430 0033F010  FF E0 08 90 */	fmr f31, f1
/* 80342434 0033F014  7C 7E 1B 78 */	mr r30, r3
/* 80342438 0033F018  7C 9F 23 78 */	mr r31, r4
/* 8034243C 0033F01C  FC 20 F8 90 */	fmr f1, f31
/* 80342440 0033F020  4B FE 3F 95 */	bl func_803263D4
/* 80342444 0033F024  FC 00 08 90 */	fmr f0, f1
/* 80342448 0033F028  FC 20 F8 90 */	fmr f1, f31
/* 8034244C 0033F02C  FF E0 00 90 */	fmr f31, f0
/* 80342450 0033F030  4B FE 3D F1 */	bl func_80326240
/* 80342454 0033F034  FC 00 08 90 */	fmr f0, f1
/* 80342458 0033F038  7F C3 F3 78 */	mr r3, r30
/* 8034245C 0033F03C  FC 20 F8 90 */	fmr f1, f31
/* 80342460 0033F040  7F E4 FB 78 */	mr r4, r31
/* 80342464 0033F044  FC 40 00 90 */	fmr f2, f0
/* 80342468 0033F048  48 00 00 21 */	bl PSMTXRotTrig
/* 8034246C 0033F04C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80342470 0033F050  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80342474 0033F054  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80342478 0033F058  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034247C 0033F05C  38 21 00 28 */	addi r1, r1, 0x28
/* 80342480 0033F060  7C 08 03 A6 */	mtlr r0
/* 80342484 0033F064  4E 80 00 20 */	blr 

.global PSMTXRotTrig
PSMTXRotTrig:
/* 80342488 0033F068  C0 02 E9 34 */	lfs f0, lbl_804DE314@sda21(r2)
/* 8034248C 0033F06C  C0 62 E9 30 */	lfs f3, lbl_804DE310@sda21(r2)
/* 80342490 0033F070  60 80 00 20 */	ori r0, r4, 0x20
/* 80342494 0033F074  10 80 08 50 */	ps_neg f4, f1
/* 80342498 0033F078  28 00 00 78 */	cmplwi r0, 0x78
/* 8034249C 0033F07C  41 82 00 18 */	beq lbl_803424B4
/* 803424A0 0033F080  28 00 00 79 */	cmplwi r0, 0x79
/* 803424A4 0033F084  41 82 00 38 */	beq lbl_803424DC
/* 803424A8 0033F088  28 00 00 7A */	cmplwi r0, 0x7a
/* 803424AC 0033F08C  41 82 00 5C */	beq lbl_80342508
/* 803424B0 0033F090  48 00 00 7C */	b lbl_8034252C
lbl_803424B4:
/* 803424B4 0033F094  F0 63 80 00 */	psq_st f3, 0(r3), 1, qr0
/* 803424B8 0033F098  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 803424BC 0033F09C  10 A1 14 20 */	ps_merge00 f5, f1, f2
/* 803424C0 0033F0A0  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 803424C4 0033F0A4  10 42 24 20 */	ps_merge00 f2, f2, f4
/* 803424C8 0033F0A8  F0 03 00 1C */	psq_st f0, 28(r3), 0, qr0
/* 803424CC 0033F0AC  F0 03 80 2C */	psq_st f0, 44(r3), 1, qr0
/* 803424D0 0033F0B0  F0 A3 00 24 */	psq_st f5, 36(r3), 0, qr0
/* 803424D4 0033F0B4  F0 43 00 14 */	psq_st f2, 20(r3), 0, qr0
/* 803424D8 0033F0B8  48 00 00 54 */	b lbl_8034252C
lbl_803424DC:
/* 803424DC 0033F0BC  10 A2 04 20 */	ps_merge00 f5, f2, f0
/* 803424E0 0033F0C0  10 40 1C 20 */	ps_merge00 f2, f0, f3
/* 803424E4 0033F0C4  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 803424E8 0033F0C8  F0 A3 00 00 */	psq_st f5, 0(r3), 0, qr0
/* 803424EC 0033F0CC  10 84 04 20 */	ps_merge00 f4, f4, f0
/* 803424F0 0033F0D0  10 01 04 20 */	ps_merge00 f0, f1, f0
/* 803424F4 0033F0D4  F0 A3 00 28 */	psq_st f5, 40(r3), 0, qr0
/* 803424F8 0033F0D8  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 803424FC 0033F0DC  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 80342500 0033F0E0  F0 83 00 20 */	psq_st f4, 32(r3), 0, qr0
/* 80342504 0033F0E4  48 00 00 28 */	b lbl_8034252C
lbl_80342508:
/* 80342508 0033F0E8  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 8034250C 0033F0EC  10 A1 14 20 */	ps_merge00 f5, f1, f2
/* 80342510 0033F0F0  10 82 24 20 */	ps_merge00 f4, f2, f4
/* 80342514 0033F0F4  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 80342518 0033F0F8  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8034251C 0033F0FC  10 43 04 20 */	ps_merge00 f2, f3, f0
/* 80342520 0033F100  F0 A3 00 10 */	psq_st f5, 16(r3), 0, qr0
/* 80342524 0033F104  F0 83 00 00 */	psq_st f4, 0(r3), 0, qr0
/* 80342528 0033F108  F0 43 00 28 */	psq_st f2, 40(r3), 0, qr0
lbl_8034252C:
/* 8034252C 0033F10C  4E 80 00 20 */	blr 

.global PSMTXRotAxisRad
PSMTXRotAxisRad:
/* 80342530 0033F110  7C 08 02 A6 */	mflr r0
/* 80342534 0033F114  90 01 00 04 */	stw r0, 4(r1)
/* 80342538 0033F118  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 8034253C 0033F11C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80342540 0033F120  DB C1 00 48 */	stfd f30, 0x48(r1)
/* 80342544 0033F124  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80342548 0033F128  DB 81 00 38 */	stfd f28, 0x38(r1)
/* 8034254C 0033F12C  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 80342550 0033F130  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80342554 0033F134  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80342558 0033F138  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8034255C 0033F13C  FF 60 08 90 */	fmr f27, f1
/* 80342560 0033F140  7C 7D 1B 78 */	mr r29, r3
/* 80342564 0033F144  7C 9E 23 78 */	mr r30, r4
/* 80342568 0033F148  FC 20 D8 90 */	fmr f1, f27
/* 8034256C 0033F14C  C3 82 E9 34 */	lfs f28, lbl_804DE314@sda21(r2)
/* 80342570 0033F150  3B E1 00 14 */	addi r31, r1, 0x14
/* 80342574 0033F154  4B FE 3E 61 */	bl func_803263D4
/* 80342578 0033F158  FF C0 08 90 */	fmr f30, f1
/* 8034257C 0033F15C  FC 20 D8 90 */	fmr f1, f27
/* 80342580 0033F160  4B FE 3C C1 */	bl func_80326240
/* 80342584 0033F164  FF E0 08 90 */	fmr f31, f1
/* 80342588 0033F168  C0 02 E9 30 */	lfs f0, lbl_804DE310@sda21(r2)
/* 8034258C 0033F16C  7F C3 F3 78 */	mr r3, r30
/* 80342590 0033F170  7F E4 FB 78 */	mr r4, r31
/* 80342594 0033F174  EF A0 F8 28 */	fsubs f29, f0, f31
/* 80342598 0033F178  48 00 08 21 */	bl PSVECNormalize
/* 8034259C 0033F17C  E3 7F 00 00 */	psq_l f27, 0(r31), 0, qr0
/* 803425A0 0033F180  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 803425A4 0033F184  10 1F FC 20 */	ps_merge00 f0, f31, f31
/* 803425A8 0033F188  10 9B 07 58 */	ps_muls0 f4, f27, f29
/* 803425AC 0033F18C  10 A1 07 58 */	ps_muls0 f5, f1, f29
/* 803425B0 0033F190  10 64 06 DA */	ps_muls1 f3, f4, f27
/* 803425B4 0033F194  10 44 06 D8 */	ps_muls0 f2, f4, f27
/* 803425B8 0033F198  13 7B 07 98 */	ps_muls0 f27, f27, f30
/* 803425BC 0033F19C  10 84 00 58 */	ps_muls0 f4, f4, f1
/* 803425C0 0033F1A0  EC C1 1F BC */	fnmsubs f6, f1, f30, f3
/* 803425C4 0033F1A4  EC E1 1F BA */	fmadds f7, f1, f30, f3
/* 803425C8 0033F1A8  11 20 D8 50 */	ps_neg f9, f27
/* 803425CC 0033F1AC  11 04 DF 14 */	ps_sum0 f8, f4, f28, f27
/* 803425D0 0033F1B0  10 42 01 94 */	ps_sum0 f2, f2, f6, f0
/* 803425D4 0033F1B4  10 60 19 D6 */	ps_sum1 f3, f0, f7, f3
/* 803425D8 0033F1B8  10 C9 27 14 */	ps_sum0 f6, f9, f28, f4
/* 803425DC 0033F1BC  11 24 49 14 */	ps_sum0 f9, f4, f4, f9
/* 803425E0 0033F1C0  F1 1D 00 08 */	psq_st f8, 8(r29), 0, qr0
/* 803425E4 0033F1C4  10 A5 00 58 */	ps_muls0 f5, f5, f1
/* 803425E8 0033F1C8  F0 5D 00 00 */	psq_st f2, 0(r29), 0, qr0
/* 803425EC 0033F1CC  10 9B 22 56 */	ps_sum1 f4, f27, f9, f4
/* 803425F0 0033F1D0  F0 7D 00 10 */	psq_st f3, 16(r29), 0, qr0
/* 803425F4 0033F1D4  10 A5 07 14 */	ps_sum0 f5, f5, f28, f0
/* 803425F8 0033F1D8  F0 DD 00 18 */	psq_st f6, 24(r29), 0, qr0
/* 803425FC 0033F1DC  F0 9D 00 20 */	psq_st f4, 32(r29), 0, qr0
/* 80342600 0033F1E0  F0 BD 00 28 */	psq_st f5, 40(r29), 0, qr0
/* 80342604 0033F1E4  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80342608 0033F1E8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8034260C 0033F1EC  CB C1 00 48 */	lfd f30, 0x48(r1)
/* 80342610 0033F1F0  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80342614 0033F1F4  CB 81 00 38 */	lfd f28, 0x38(r1)
/* 80342618 0033F1F8  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 8034261C 0033F1FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80342620 0033F200  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80342624 0033F204  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80342628 0033F208  38 21 00 58 */	addi r1, r1, 0x58
/* 8034262C 0033F20C  7C 08 03 A6 */	mtlr r0
/* 80342630 0033F210  4E 80 00 20 */	blr 

.global PSMTXTrans
PSMTXTrans:
/* 80342634 0033F214  C0 02 E9 34 */	lfs f0, lbl_804DE314@sda21(r2)
/* 80342638 0033F218  C0 82 E9 30 */	lfs f4, lbl_804DE310@sda21(r2)
/* 8034263C 0033F21C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80342640 0033F220  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 80342644 0033F224  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 80342648 0033F228  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8034264C 0033F22C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80342650 0033F230  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 80342654 0033F234  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80342658 0033F238  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 8034265C 0033F23C  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 80342660 0033F240  D0 83 00 00 */	stfs f4, 0(r3)
/* 80342664 0033F244  4E 80 00 20 */	blr 

.global PSMTXScale
PSMTXScale:
/* 80342668 0033F248  C0 02 E9 34 */	lfs f0, lbl_804DE314@sda21(r2)
/* 8034266C 0033F24C  D0 23 00 00 */	stfs f1, 0(r3)
/* 80342670 0033F250  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 80342674 0033F254  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 80342678 0033F258  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8034267C 0033F25C  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 80342680 0033F260  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 80342684 0033F264  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 80342688 0033F268  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8034268C 0033F26C  4E 80 00 20 */	blr 

.global PSMTXQuat
PSMTXQuat:
/* 80342690 0033F270  C0 22 E9 30 */	lfs f1, lbl_804DE310@sda21(r2)
/* 80342694 0033F274  E0 84 00 00 */	psq_l f4, 0(r4), 0, qr0
/* 80342698 0033F278  E0 A4 00 08 */	psq_l f5, 8(r4), 0, qr0
/* 8034269C 0033F27C  EC 01 08 28 */	fsubs f0, f1, f1
/* 803426A0 0033F280  EC 41 08 2A */	fadds f2, f1, f1
/* 803426A4 0033F284  10 C4 01 32 */	ps_mul f6, f4, f4
/* 803426A8 0033F288  11 24 24 A0 */	ps_merge10 f9, f4, f4
/* 803426AC 0033F28C  11 05 31 7A */	ps_madd f8, f5, f5, f6
/* 803426B0 0033F290  10 E5 01 72 */	ps_mul f7, f5, f5
/* 803426B4 0033F294  10 68 42 14 */	ps_sum0 f3, f8, f8, f8
/* 803426B8 0033F298  11 49 01 5A */	ps_muls1 f10, f9, f5
/* 803426BC 0033F29C  ED 60 18 30 */	fres f11, f3
/* 803426C0 0033F2A0  11 07 32 16 */	ps_sum1 f8, f7, f8, f6
/* 803426C4 0033F2A4  10 63 12 FC */	ps_nmsub f3, f3, f11, f2
/* 803426C8 0033F2A8  10 E5 01 5A */	ps_muls1 f7, f5, f5
/* 803426CC 0033F2AC  10 6B 00 F2 */	ps_mul f3, f11, f3
/* 803426D0 0033F2B0  10 C6 31 94 */	ps_sum0 f6, f6, f6, f6
/* 803426D4 0033F2B4  EC 63 00 B2 */	fmuls f3, f3, f2
/* 803426D8 0033F2B8  11 64 3A 7A */	ps_madd f11, f4, f9, f7
/* 803426DC 0033F2BC  10 E4 3A 78 */	ps_msub f7, f4, f9, f7
/* 803426E0 0033F2C0  F0 03 80 0C */	psq_st f0, 12(r3), 1, qr0
/* 803426E4 0033F2C4  10 C6 08 FC */	ps_nmsub f6, f6, f3, f1
/* 803426E8 0033F2C8  11 08 08 FC */	ps_nmsub f8, f8, f3, f1
/* 803426EC 0033F2CC  F0 03 80 2C */	psq_st f0, 44(r3), 1, qr0
/* 803426F0 0033F2D0  11 6B 00 F2 */	ps_mul f11, f11, f3
/* 803426F4 0033F2D4  10 E7 00 F2 */	ps_mul f7, f7, f3
/* 803426F8 0033F2D8  F0 C3 80 28 */	psq_st f6, 40(r3), 1, qr0
/* 803426FC 0033F2DC  11 24 51 5C */	ps_madds0 f9, f4, f5, f10
/* 80342700 0033F2E0  10 AB 44 20 */	ps_merge00 f5, f11, f8
/* 80342704 0033F2E4  11 4A 48 BC */	ps_nmsub f10, f10, f2, f9
/* 80342708 0033F2E8  10 88 3C A0 */	ps_merge10 f4, f8, f7
/* 8034270C 0033F2EC  F0 A3 00 10 */	psq_st f5, 16(r3), 0, qr0
/* 80342710 0033F2F0  11 29 00 F2 */	ps_mul f9, f9, f3
/* 80342714 0033F2F4  11 4A 00 F2 */	ps_mul f10, f10, f3
/* 80342718 0033F2F8  F0 83 00 00 */	psq_st f4, 0(r3), 0, qr0
/* 8034271C 0033F2FC  F1 23 80 08 */	psq_st f9, 8(r3), 1, qr0
/* 80342720 0033F300  10 EA 04 A0 */	ps_merge10 f7, f10, f0
/* 80342724 0033F304  11 6A 4C 60 */	ps_merge01 f11, f10, f9
/* 80342728 0033F308  F0 E3 00 18 */	psq_st f7, 24(r3), 0, qr0
/* 8034272C 0033F30C  F1 63 00 20 */	psq_st f11, 32(r3), 0, qr0
/* 80342730 0033F310  4E 80 00 20 */	blr 

.global C_MTXLookAt
C_MTXLookAt:
/* 80342734 0033F314  7C 08 02 A6 */	mflr r0
/* 80342738 0033F318  90 01 00 04 */	stw r0, 4(r1)
/* 8034273C 0033F31C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80342740 0033F320  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80342744 0033F324  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80342748 0033F328  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8034274C 0033F32C  7C 7D 1B 78 */	mr r29, r3
/* 80342750 0033F330  7C 9E 23 78 */	mr r30, r4
/* 80342754 0033F334  7C BF 2B 78 */	mr r31, r5
/* 80342758 0033F338  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8034275C 0033F33C  38 61 00 30 */	addi r3, r1, 0x30
/* 80342760 0033F340  C0 06 00 00 */	lfs f0, 0(r6)
/* 80342764 0033F344  7C 64 1B 78 */	mr r4, r3
/* 80342768 0033F348  EC 01 00 28 */	fsubs f0, f1, f0
/* 8034276C 0033F34C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80342770 0033F350  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80342774 0033F354  C0 06 00 04 */	lfs f0, 4(r6)
/* 80342778 0033F358  EC 01 00 28 */	fsubs f0, f1, f0
/* 8034277C 0033F35C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80342780 0033F360  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80342784 0033F364  C0 06 00 08 */	lfs f0, 8(r6)
/* 80342788 0033F368  EC 01 00 28 */	fsubs f0, f1, f0
/* 8034278C 0033F36C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80342790 0033F370  48 00 06 29 */	bl PSVECNormalize
/* 80342794 0033F374  7F E3 FB 78 */	mr r3, r31
/* 80342798 0033F378  38 81 00 30 */	addi r4, r1, 0x30
/* 8034279C 0033F37C  38 A1 00 24 */	addi r5, r1, 0x24
/* 803427A0 0033F380  48 00 06 B9 */	bl PSVECCrossProduct
/* 803427A4 0033F384  38 61 00 24 */	addi r3, r1, 0x24
/* 803427A8 0033F388  7C 64 1B 78 */	mr r4, r3
/* 803427AC 0033F38C  48 00 06 0D */	bl PSVECNormalize
/* 803427B0 0033F390  38 61 00 30 */	addi r3, r1, 0x30
/* 803427B4 0033F394  38 81 00 24 */	addi r4, r1, 0x24
/* 803427B8 0033F398  38 A1 00 18 */	addi r5, r1, 0x18
/* 803427BC 0033F39C  48 00 06 9D */	bl PSVECCrossProduct
/* 803427C0 0033F3A0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 803427C4 0033F3A4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 803427C8 0033F3A8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 803427CC 0033F3AC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 803427D0 0033F3B0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 803427D4 0033F3B4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 803427D8 0033F3B8  C0 7E 00 00 */	lfs f3, 0(r30)
/* 803427DC 0033F3BC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 803427E0 0033F3C0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 803427E4 0033F3C4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 803427E8 0033F3C8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803427EC 0033F3CC  C0 7E 00 08 */	lfs f3, 8(r30)
/* 803427F0 0033F3D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 803427F4 0033F3D4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 803427F8 0033F3D8  EC 23 00 72 */	fmuls f1, f3, f1
/* 803427FC 0033F3DC  EC 02 00 2A */	fadds f0, f2, f0
/* 80342800 0033F3E0  EC 01 00 2A */	fadds f0, f1, f0
/* 80342804 0033F3E4  FC 00 00 50 */	fneg f0, f0
/* 80342808 0033F3E8  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8034280C 0033F3EC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80342810 0033F3F0  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80342814 0033F3F4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80342818 0033F3F8  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8034281C 0033F3FC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80342820 0033F400  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80342824 0033F404  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80342828 0033F408  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8034282C 0033F40C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80342830 0033F410  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80342834 0033F414  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80342838 0033F418  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8034283C 0033F41C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80342840 0033F420  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80342844 0033F424  EC 23 00 72 */	fmuls f1, f3, f1
/* 80342848 0033F428  EC 02 00 2A */	fadds f0, f2, f0
/* 8034284C 0033F42C  EC 01 00 2A */	fadds f0, f1, f0
/* 80342850 0033F430  FC 00 00 50 */	fneg f0, f0
/* 80342854 0033F434  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80342858 0033F438  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8034285C 0033F43C  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80342860 0033F440  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80342864 0033F444  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80342868 0033F448  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8034286C 0033F44C  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80342870 0033F450  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80342874 0033F454  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80342878 0033F458  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8034287C 0033F45C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80342880 0033F460  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80342884 0033F464  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80342888 0033F468  EC 01 00 32 */	fmuls f0, f1, f0
/* 8034288C 0033F46C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80342890 0033F470  EC 23 00 72 */	fmuls f1, f3, f1
/* 80342894 0033F474  EC 02 00 2A */	fadds f0, f2, f0
/* 80342898 0033F478  EC 01 00 2A */	fadds f0, f1, f0
/* 8034289C 0033F47C  FC 00 00 50 */	fneg f0, f0
/* 803428A0 0033F480  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 803428A4 0033F484  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803428A8 0033F488  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 803428AC 0033F48C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 803428B0 0033F490  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 803428B4 0033F494  38 21 00 50 */	addi r1, r1, 0x50
/* 803428B8 0033F498  7C 08 03 A6 */	mtlr r0
/* 803428BC 0033F49C  4E 80 00 20 */	blr 

.global C_MTXLightFrustum
C_MTXLightFrustum:
/* 803428C0 0033F4A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803428C4 0033F4A4  C1 81 00 38 */	lfs f12, 0x38(r1)
/* 803428C8 0033F4A8  ED 44 18 28 */	fsubs f10, f4, f3
/* 803428CC 0033F4AC  C1 62 E9 30 */	lfs f11, lbl_804DE310@sda21(r2)
/* 803428D0 0033F4B0  EC 01 10 28 */	fsubs f0, f1, f2
/* 803428D4 0033F4B4  C1 22 E9 38 */	lfs f9, lbl_804DE318@sda21(r2)
/* 803428D8 0033F4B8  EC 64 18 2A */	fadds f3, f4, f3
/* 803428DC 0033F4BC  ED 4B 50 24 */	fdivs f10, f11, f10
/* 803428E0 0033F4C0  EC A9 01 72 */	fmuls f5, f9, f5
/* 803428E4 0033F4C4  ED 2B 00 24 */	fdivs f9, f11, f0
/* 803428E8 0033F4C8  EC 85 02 B2 */	fmuls f4, f5, f10
/* 803428EC 0033F4CC  EC 6A 00 F2 */	fmuls f3, f10, f3
/* 803428F0 0033F4D0  EC 01 10 2A */	fadds f0, f1, f2
/* 803428F4 0033F4D4  EC 26 01 32 */	fmuls f1, f6, f4
/* 803428F8 0033F4D8  EC 46 00 F2 */	fmuls f2, f6, f3
/* 803428FC 0033F4DC  EC 09 00 32 */	fmuls f0, f9, f0
/* 80342900 0033F4E0  D0 23 00 00 */	stfs f1, 0(r3)
/* 80342904 0033F4E4  EC 25 02 72 */	fmuls f1, f5, f9
/* 80342908 0033F4E8  EC 42 40 28 */	fsubs f2, f2, f8
/* 8034290C 0033F4EC  C0 62 E9 34 */	lfs f3, lbl_804DE314@sda21(r2)
/* 80342910 0033F4F0  EC 07 00 32 */	fmuls f0, f7, f0
/* 80342914 0033F4F4  D0 63 00 04 */	stfs f3, 4(r3)
/* 80342918 0033F4F8  EC 27 00 72 */	fmuls f1, f7, f1
/* 8034291C 0033F4FC  D0 43 00 08 */	stfs f2, 8(r3)
/* 80342920 0033F500  EC 00 60 28 */	fsubs f0, f0, f12
/* 80342924 0033F504  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 80342928 0033F508  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 8034292C 0033F50C  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80342930 0033F510  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80342934 0033F514  D0 63 00 1C */	stfs f3, 0x1c(r3)
/* 80342938 0033F518  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8034293C 0033F51C  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 80342940 0033F520  C0 02 E9 3C */	lfs f0, lbl_804DE31C@sda21(r2)
/* 80342944 0033F524  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80342948 0033F528  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 8034294C 0033F52C  38 21 00 30 */	addi r1, r1, 0x30
/* 80342950 0033F530  4E 80 00 20 */	blr 

.global C_MTXLightPerspective
C_MTXLightPerspective:
/* 80342954 0033F534  7C 08 02 A6 */	mflr r0
/* 80342958 0033F538  90 01 00 04 */	stw r0, 4(r1)
/* 8034295C 0033F53C  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 80342960 0033F540  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80342964 0033F544  DB C1 00 48 */	stfd f30, 0x48(r1)
/* 80342968 0033F548  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8034296C 0033F54C  DB 81 00 38 */	stfd f28, 0x38(r1)
/* 80342970 0033F550  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 80342974 0033F554  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80342978 0033F558  FF 60 10 90 */	fmr f27, f2
/* 8034297C 0033F55C  7C 7F 1B 78 */	mr r31, r3
/* 80342980 0033F560  FF 80 18 90 */	fmr f28, f3
/* 80342984 0033F564  FF A0 20 90 */	fmr f29, f4
/* 80342988 0033F568  FF C0 28 90 */	fmr f30, f5
/* 8034298C 0033F56C  FF E0 30 90 */	fmr f31, f6
/* 80342990 0033F570  C0 42 E9 40 */	lfs f2, lbl_804DE320@sda21(r2)
/* 80342994 0033F574  C0 02 E9 44 */	lfs f0, lbl_804DE324@sda21(r2)
/* 80342998 0033F578  EC 22 00 72 */	fmuls f1, f2, f1
/* 8034299C 0033F57C  EC 20 00 72 */	fmuls f1, f0, f1
/* 803429A0 0033F580  4B FE 38 1D */	bl tanf
/* 803429A4 0033F584  C0 62 E9 30 */	lfs f3, lbl_804DE310@sda21(r2)
/* 803429A8 0033F588  FC 40 F0 50 */	fneg f2, f30
/* 803429AC 0033F58C  FC 00 F8 50 */	fneg f0, f31
/* 803429B0 0033F590  EC 83 08 24 */	fdivs f4, f3, f1
/* 803429B4 0033F594  EC 24 D8 24 */	fdivs f1, f4, f27
/* 803429B8 0033F598  EC 7C 00 72 */	fmuls f3, f28, f1
/* 803429BC 0033F59C  EC 24 07 72 */	fmuls f1, f4, f29
/* 803429C0 0033F5A0  D0 7F 00 00 */	stfs f3, 0(r31)
/* 803429C4 0033F5A4  C0 62 E9 34 */	lfs f3, lbl_804DE314@sda21(r2)
/* 803429C8 0033F5A8  D0 7F 00 04 */	stfs f3, 4(r31)
/* 803429CC 0033F5AC  D0 5F 00 08 */	stfs f2, 8(r31)
/* 803429D0 0033F5B0  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 803429D4 0033F5B4  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 803429D8 0033F5B8  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 803429DC 0033F5BC  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 803429E0 0033F5C0  D0 7F 00 1C */	stfs f3, 0x1c(r31)
/* 803429E4 0033F5C4  D0 7F 00 20 */	stfs f3, 0x20(r31)
/* 803429E8 0033F5C8  D0 7F 00 24 */	stfs f3, 0x24(r31)
/* 803429EC 0033F5CC  C0 02 E9 3C */	lfs f0, lbl_804DE31C@sda21(r2)
/* 803429F0 0033F5D0  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 803429F4 0033F5D4  D0 7F 00 2C */	stfs f3, 0x2c(r31)
/* 803429F8 0033F5D8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 803429FC 0033F5DC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80342A00 0033F5E0  CB C1 00 48 */	lfd f30, 0x48(r1)
/* 80342A04 0033F5E4  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80342A08 0033F5E8  CB 81 00 38 */	lfd f28, 0x38(r1)
/* 80342A0C 0033F5EC  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 80342A10 0033F5F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80342A14 0033F5F4  38 21 00 58 */	addi r1, r1, 0x58
/* 80342A18 0033F5F8  7C 08 03 A6 */	mtlr r0
/* 80342A1C 0033F5FC  4E 80 00 20 */	blr 

.global C_MTXLightOrtho
C_MTXLightOrtho:
/* 80342A20 0033F600  ED 44 18 28 */	fsubs f10, f4, f3
/* 80342A24 0033F604  C1 62 E9 30 */	lfs f11, lbl_804DE310@sda21(r2)
/* 80342A28 0033F608  EC 01 10 28 */	fsubs f0, f1, f2
/* 80342A2C 0033F60C  C1 22 E9 38 */	lfs f9, lbl_804DE318@sda21(r2)
/* 80342A30 0033F610  EC 64 18 2A */	fadds f3, f4, f3
/* 80342A34 0033F614  ED 8B 50 24 */	fdivs f12, f11, f10
/* 80342A38 0033F618  ED 4B 00 24 */	fdivs f10, f11, f0
/* 80342A3C 0033F61C  EC 89 03 32 */	fmuls f4, f9, f12
/* 80342A40 0033F620  FC 60 18 50 */	fneg f3, f3
/* 80342A44 0033F624  EC 01 10 2A */	fadds f0, f1, f2
/* 80342A48 0033F628  EC 24 01 72 */	fmuls f1, f4, f5
/* 80342A4C 0033F62C  EC 4C 00 F2 */	fmuls f2, f12, f3
/* 80342A50 0033F630  FC 00 00 50 */	fneg f0, f0
/* 80342A54 0033F634  D0 23 00 00 */	stfs f1, 0(r3)
/* 80342A58 0033F638  EC 29 02 B2 */	fmuls f1, f9, f10
/* 80342A5C 0033F63C  EC 45 00 B2 */	fmuls f2, f5, f2
/* 80342A60 0033F640  C0 62 E9 34 */	lfs f3, lbl_804DE314@sda21(r2)
/* 80342A64 0033F644  EC 0A 00 32 */	fmuls f0, f10, f0
/* 80342A68 0033F648  D0 63 00 04 */	stfs f3, 4(r3)
/* 80342A6C 0033F64C  EC 47 10 2A */	fadds f2, f7, f2
/* 80342A70 0033F650  EC 21 01 B2 */	fmuls f1, f1, f6
/* 80342A74 0033F654  D0 63 00 08 */	stfs f3, 8(r3)
/* 80342A78 0033F658  EC 06 00 32 */	fmuls f0, f6, f0
/* 80342A7C 0033F65C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80342A80 0033F660  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 80342A84 0033F664  EC 08 00 2A */	fadds f0, f8, f0
/* 80342A88 0033F668  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80342A8C 0033F66C  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 80342A90 0033F670  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80342A94 0033F674  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80342A98 0033F678  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 80342A9C 0033F67C  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 80342AA0 0033F680  D1 63 00 2C */	stfs f11, 0x2c(r3)
/* 80342AA4 0033F684  4E 80 00 20 */	blr 


.section .sdata

.global lbl_804D5C00
lbl_804D5C00:
    .4byte 0x00000000
    .4byte 0x3F800000


.section .sdata2

.global lbl_804DE310
lbl_804DE310:
	.4byte 0x3F800000
.global lbl_804DE314
lbl_804DE314:
	.4byte 0x00000000
.global lbl_804DE318
lbl_804DE318:
	.4byte 0x40000000
.global lbl_804DE31C
lbl_804DE31C:
	.4byte 0xBF800000
.global lbl_804DE320
lbl_804DE320:
	.4byte 0x3F000000
.global lbl_804DE324
lbl_804DE324:
	.4byte 0x3C8EFA35
