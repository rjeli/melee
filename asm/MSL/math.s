.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global frexp
frexp:
/* 80326118 00322CF8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8032611C 00322CFC  3C 00 7F F0 */	lis r0, 0x7ff0
/* 80326120 00322D00  38 80 00 00 */	li r4, 0
/* 80326124 00322D04  D8 21 00 08 */	stfd f1, 8(r1)
/* 80326128 00322D08  80 A1 00 08 */	lwz r5, 8(r1)
/* 8032612C 00322D0C  81 01 00 0C */	lwz r8, 0xc(r1)
/* 80326130 00322D10  54 A6 00 7E */	clrlwi r6, r5, 1
/* 80326134 00322D14  7C 06 00 00 */	cmpw r6, r0
/* 80326138 00322D18  90 83 00 00 */	stw r4, 0(r3)
/* 8032613C 00322D1C  38 E5 00 00 */	addi r7, r5, 0
/* 80326140 00322D20  38 86 00 00 */	addi r4, r6, 0
/* 80326144 00322D24  40 80 00 0C */	bge lbl_80326150
/* 80326148 00322D28  7C 80 43 79 */	or. r0, r4, r8
/* 8032614C 00322D2C  40 82 00 0C */	bne lbl_80326158
lbl_80326150:
/* 80326150 00322D30  C8 21 00 08 */	lfd f1, 8(r1)
/* 80326154 00322D34  48 00 00 58 */	b lbl_803261AC
lbl_80326158:
/* 80326158 00322D38  3C 00 00 10 */	lis r0, 0x10
/* 8032615C 00322D3C  7C 04 00 00 */	cmpw r4, r0
/* 80326160 00322D40  40 80 00 28 */	bge lbl_80326188
/* 80326164 00322D44  C8 21 00 08 */	lfd f1, 8(r1)
/* 80326168 00322D48  38 00 FF CA */	li r0, -54
/* 8032616C 00322D4C  C8 02 E7 B0 */	lfd f0, lbl_804DE190@sda21(r2)
/* 80326170 00322D50  FC 01 00 32 */	fmul f0, f1, f0
/* 80326174 00322D54  D8 01 00 08 */	stfd f0, 8(r1)
/* 80326178 00322D58  80 81 00 08 */	lwz r4, 8(r1)
/* 8032617C 00322D5C  90 03 00 00 */	stw r0, 0(r3)
/* 80326180 00322D60  38 E4 00 00 */	addi r7, r4, 0
/* 80326184 00322D64  54 84 00 7E */	clrlwi r4, r4, 1
lbl_80326188:
/* 80326188 00322D68  80 A3 00 00 */	lwz r5, 0(r3)
/* 8032618C 00322D6C  7C 84 A6 70 */	srawi r4, r4, 0x14
/* 80326190 00322D70  54 E0 03 00 */	rlwinm r0, r7, 0, 0xc, 0
/* 80326194 00322D74  7C 84 2A 14 */	add r4, r4, r5
/* 80326198 00322D78  38 84 FC 02 */	addi r4, r4, -1022
/* 8032619C 00322D7C  90 83 00 00 */	stw r4, 0(r3)
/* 803261A0 00322D80  64 00 3F E0 */	oris r0, r0, 0x3fe0
/* 803261A4 00322D84  90 01 00 08 */	stw r0, 8(r1)
/* 803261A8 00322D88  C8 21 00 08 */	lfd f1, 8(r1)
lbl_803261AC:
/* 803261AC 00322D8C  38 21 00 18 */	addi r1, r1, 0x18
/* 803261B0 00322D90  4E 80 00 20 */	blr 

.global func_803261B4
func_803261B4:
/* 803261B4 00322D94  FC 20 0A 10 */	fabs f1, f1
/* 803261B8 00322D98  4E 80 00 20 */	blr 

.global tanf
tanf:
/* 803261BC 00322D9C  7C 08 02 A6 */	mflr r0
/* 803261C0 00322DA0  90 01 00 04 */	stw r0, 4(r1)
/* 803261C4 00322DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803261C8 00322DA8  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 803261CC 00322DAC  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 803261D0 00322DB0  FF C0 08 90 */	fmr f30, f1
/* 803261D4 00322DB4  48 00 00 2D */	bl func_80326200
/* 803261D8 00322DB8  FF E0 08 90 */	fmr f31, f1
/* 803261DC 00322DBC  FC 20 F0 90 */	fmr f1, f30
/* 803261E0 00322DC0  48 00 00 41 */	bl func_80326220
/* 803261E4 00322DC4  EC 21 F8 24 */	fdivs f1, f1, f31
/* 803261E8 00322DC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803261EC 00322DCC  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 803261F0 00322DD0  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 803261F4 00322DD4  7C 08 03 A6 */	mtlr r0
/* 803261F8 00322DD8  38 21 00 20 */	addi r1, r1, 0x20
/* 803261FC 00322DDC  4E 80 00 20 */	blr 

.global func_80326200
func_80326200:
/* 80326200 00322DE0  7C 08 02 A6 */	mflr r0
/* 80326204 00322DE4  90 01 00 04 */	stw r0, 4(r1)
/* 80326208 00322DE8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8032620C 00322DEC  48 00 00 35 */	bl func_80326240
/* 80326210 00322DF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80326214 00322DF4  38 21 00 08 */	addi r1, r1, 8
/* 80326218 00322DF8  7C 08 03 A6 */	mtlr r0
/* 8032621C 00322DFC  4E 80 00 20 */	blr 

.global func_80326220
func_80326220:
/* 80326220 00322E00  7C 08 02 A6 */	mflr r0
/* 80326224 00322E04  90 01 00 04 */	stw r0, 4(r1)
/* 80326228 00322E08  94 21 FF F8 */	stwu r1, -8(r1)
/* 8032622C 00322E0C  48 00 01 A9 */	bl func_803263D4
/* 80326230 00322E10  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80326234 00322E14  38 21 00 08 */	addi r1, r1, 8
/* 80326238 00322E18  7C 08 03 A6 */	mtlr r0
/* 8032623C 00322E1C  4E 80 00 20 */	blr 

.global func_80326240
func_80326240:
/* 80326240 00322E20  7C 08 02 A6 */	mflr r0
/* 80326244 00322E24  3C 60 80 40 */	lis r3, lbl_80400778@ha
/* 80326248 00322E28  90 01 00 04 */	stw r0, 4(r1)
/* 8032624C 00322E2C  38 63 07 78 */	addi r3, r3, lbl_80400778@l
/* 80326250 00322E30  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80326254 00322E34  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80326258 00322E38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8032625C 00322E3C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80326260 00322E40  C0 02 E7 B8 */	lfs f0, lbl_804DE198@sda21(r2)
/* 80326264 00322E44  80 01 00 08 */	lwz r0, 8(r1)
/* 80326268 00322E48  C0 C1 00 08 */	lfs f6, 8(r1)
/* 8032626C 00322E4C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80326270 00322E50  EC 20 01 B2 */	fmuls f1, f0, f6
/* 80326274 00322E54  41 82 00 1C */	beq lbl_80326290
/* 80326278 00322E58  C0 02 E7 BC */	lfs f0, lbl_804DE19C@sda21(r2)
/* 8032627C 00322E5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80326280 00322E60  FC 00 00 1E */	fctiwz f0, f0
/* 80326284 00322E64  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80326288 00322E68  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8032628C 00322E6C  48 00 00 18 */	b lbl_803262A4
lbl_80326290:
/* 80326290 00322E70  C0 02 E7 BC */	lfs f0, lbl_804DE19C@sda21(r2)
/* 80326294 00322E74  EC 00 08 2A */	fadds f0, f0, f1
/* 80326298 00322E78  FC 00 00 1E */	fctiwz f0, f0
/* 8032629C 00322E7C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803262A0 00322E80  80 81 00 14 */	lwz r4, 0x14(r1)
lbl_803262A4:
/* 803262A4 00322E84  54 80 08 3C */	slwi r0, r4, 1
/* 803262A8 00322E88  C8 22 E7 C8 */	lfd f1, lbl_804DE1A8@sda21(r2)
/* 803262AC 00322E8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803262B0 00322E90  C0 43 00 00 */	lfs f2, 0(r3)
/* 803262B4 00322E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 803262B8 00322E98  3C 00 43 30 */	lis r0, 0x4330
/* 803262BC 00322E9C  C0 63 00 04 */	lfs f3, 4(r3)
/* 803262C0 00322EA0  54 9F 07 BE */	clrlwi r31, r4, 0x1e
/* 803262C4 00322EA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 803262C8 00322EA8  C0 83 00 08 */	lfs f4, 8(r3)
/* 803262CC 00322EAC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803262D0 00322EB0  C0 A3 00 0C */	lfs f5, 0xc(r3)
/* 803262D4 00322EB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 803262D8 00322EB8  EC 06 00 28 */	fsubs f0, f6, f0
/* 803262DC 00322EBC  EC 02 01 BA */	fmadds f0, f2, f6, f0
/* 803262E0 00322EC0  EC 03 01 BA */	fmadds f0, f3, f6, f0
/* 803262E4 00322EC4  EC 04 01 BA */	fmadds f0, f4, f6, f0
/* 803262E8 00322EC8  EF E5 01 BA */	fmadds f31, f5, f6, f0
/* 803262EC 00322ECC  FC 20 F8 90 */	fmr f1, f31
/* 803262F0 00322ED0  4B FF FE C5 */	bl func_803261B4
/* 803262F4 00322ED4  C0 02 E7 C0 */	lfs f0, lbl_804DE1A0@sda21(r2)
/* 803262F8 00322ED8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803262FC 00322EDC  40 80 00 24 */	bge lbl_80326320
/* 80326300 00322EE0  3C 60 80 3C */	lis r3, lbl_803B9358@ha
/* 80326304 00322EE4  57 E4 18 38 */	slwi r4, r31, 3
/* 80326308 00322EE8  38 03 93 58 */	addi r0, r3, lbl_803B9358@l
/* 8032630C 00322EEC  7C 60 22 14 */	add r3, r0, r4
/* 80326310 00322EF0  C0 23 00 00 */	lfs f1, 0(r3)
/* 80326314 00322EF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80326318 00322EF8  EC 3F 00 7C */	fnmsubs f1, f31, f1, f0
/* 8032631C 00322EFC  48 00 00 A0 */	b lbl_803263BC
lbl_80326320:
/* 80326320 00322F00  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 80326324 00322F04  EC 9F 07 F2 */	fmuls f4, f31, f31
/* 80326328 00322F08  41 82 00 50 */	beq lbl_80326378
/* 8032632C 00322F0C  3C 60 80 3C */	lis r3, lbl_803B9378@ha
/* 80326330 00322F10  38 83 93 78 */	addi r4, r3, lbl_803B9378@l
/* 80326334 00322F14  C0 44 00 04 */	lfs f2, 4(r4)
/* 80326338 00322F18  3C 60 80 3C */	lis r3, lbl_803B9358@ha
/* 8032633C 00322F1C  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80326340 00322F20  38 03 93 58 */	addi r0, r3, lbl_803B9358@l
/* 80326344 00322F24  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80326348 00322F28  EC 62 09 3A */	fmadds f3, f2, f4, f1
/* 8032634C 00322F2C  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80326350 00322F30  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 80326354 00322F34  57 E4 18 38 */	slwi r4, r31, 3
/* 80326358 00322F38  7C 60 22 14 */	add r3, r0, r4
/* 8032635C 00322F3C  EC 64 00 FA */	fmadds f3, f4, f3, f0
/* 80326360 00322F40  C0 03 00 00 */	lfs f0, 0(r3)
/* 80326364 00322F44  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 80326368 00322F48  EC 24 08 BE */	fnmadds f1, f4, f2, f1
/* 8032636C 00322F4C  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80326370 00322F50  EC 21 00 32 */	fmuls f1, f1, f0
/* 80326374 00322F54  48 00 00 48 */	b lbl_803263BC
lbl_80326378:
/* 80326378 00322F58  3C 60 80 3C */	lis r3, lbl_803B9378@ha
/* 8032637C 00322F5C  38 83 93 78 */	addi r4, r3, lbl_803B9378@l
/* 80326380 00322F60  C0 44 00 00 */	lfs f2, 0(r4)
/* 80326384 00322F64  3C 60 80 3C */	lis r3, lbl_803B9358@ha
/* 80326388 00322F68  C0 24 00 08 */	lfs f1, 8(r4)
/* 8032638C 00322F6C  38 63 93 58 */	addi r3, r3, lbl_803B9358@l
/* 80326390 00322F70  57 E0 18 38 */	slwi r0, r31, 3
/* 80326394 00322F74  EC 62 09 3A */	fmadds f3, f2, f4, f1
/* 80326398 00322F78  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8032639C 00322F7C  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 803263A0 00322F80  7C 63 02 14 */	add r3, r3, r0
/* 803263A4 00322F84  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 803263A8 00322F88  EC 64 00 FA */	fmadds f3, f4, f3, f0
/* 803263AC 00322F8C  C0 03 00 04 */	lfs f0, 4(r3)
/* 803263B0 00322F90  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 803263B4 00322F94  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 803263B8 00322F98  EC 21 00 32 */	fmuls f1, f1, f0
lbl_803263BC:
/* 803263BC 00322F9C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803263C0 00322FA0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 803263C4 00322FA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803263C8 00322FA8  7C 08 03 A6 */	mtlr r0
/* 803263CC 00322FAC  38 21 00 28 */	addi r1, r1, 0x28
/* 803263D0 00322FB0  4E 80 00 20 */	blr 

.global func_803263D4
func_803263D4:
/* 803263D4 00322FB4  7C 08 02 A6 */	mflr r0
/* 803263D8 00322FB8  3C 60 80 40 */	lis r3, lbl_80400778@ha
/* 803263DC 00322FBC  90 01 00 04 */	stw r0, 4(r1)
/* 803263E0 00322FC0  38 63 07 78 */	addi r3, r3, lbl_80400778@l
/* 803263E4 00322FC4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 803263E8 00322FC8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 803263EC 00322FCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803263F0 00322FD0  D0 21 00 08 */	stfs f1, 8(r1)
/* 803263F4 00322FD4  C0 02 E7 B8 */	lfs f0, lbl_804DE198@sda21(r2)
/* 803263F8 00322FD8  80 01 00 08 */	lwz r0, 8(r1)
/* 803263FC 00322FDC  C0 C1 00 08 */	lfs f6, 8(r1)
/* 80326400 00322FE0  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80326404 00322FE4  EC 20 01 B2 */	fmuls f1, f0, f6
/* 80326408 00322FE8  41 82 00 1C */	beq lbl_80326424
/* 8032640C 00322FEC  C0 02 E7 BC */	lfs f0, lbl_804DE19C@sda21(r2)
/* 80326410 00322FF0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80326414 00322FF4  FC 00 00 1E */	fctiwz f0, f0
/* 80326418 00322FF8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8032641C 00322FFC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80326420 00323000  48 00 00 18 */	b lbl_80326438
lbl_80326424:
/* 80326424 00323004  C0 02 E7 BC */	lfs f0, lbl_804DE19C@sda21(r2)
/* 80326428 00323008  EC 00 08 2A */	fadds f0, f0, f1
/* 8032642C 0032300C  FC 00 00 1E */	fctiwz f0, f0
/* 80326430 00323010  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80326434 00323014  80 81 00 14 */	lwz r4, 0x14(r1)
lbl_80326438:
/* 80326438 00323018  54 80 08 3C */	slwi r0, r4, 1
/* 8032643C 0032301C  C8 22 E7 C8 */	lfd f1, lbl_804DE1A8@sda21(r2)
/* 80326440 00323020  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80326444 00323024  C0 43 00 00 */	lfs f2, 0(r3)
/* 80326448 00323028  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032644C 0032302C  3C 00 43 30 */	lis r0, 0x4330
/* 80326450 00323030  C0 63 00 04 */	lfs f3, 4(r3)
/* 80326454 00323034  54 9F 07 BE */	clrlwi r31, r4, 0x1e
/* 80326458 00323038  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032645C 0032303C  C0 83 00 08 */	lfs f4, 8(r3)
/* 80326460 00323040  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80326464 00323044  C0 A3 00 0C */	lfs f5, 0xc(r3)
/* 80326468 00323048  EC 00 08 28 */	fsubs f0, f0, f1
/* 8032646C 0032304C  EC 06 00 28 */	fsubs f0, f6, f0
/* 80326470 00323050  EC 02 01 BA */	fmadds f0, f2, f6, f0
/* 80326474 00323054  EC 03 01 BA */	fmadds f0, f3, f6, f0
/* 80326478 00323058  EC 04 01 BA */	fmadds f0, f4, f6, f0
/* 8032647C 0032305C  EF E5 01 BA */	fmadds f31, f5, f6, f0
/* 80326480 00323060  FC 20 F8 90 */	fmr f1, f31
/* 80326484 00323064  4B FF FD 31 */	bl func_803261B4
/* 80326488 00323068  C0 02 E7 C0 */	lfs f0, lbl_804DE1A0@sda21(r2)
/* 8032648C 0032306C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80326490 00323070  40 80 00 34 */	bge lbl_803264C4
/* 80326494 00323074  3C 60 80 3C */	lis r3, lbl_803B9358@ha
/* 80326498 00323078  57 E4 18 38 */	slwi r4, r31, 3
/* 8032649C 0032307C  38 03 93 58 */	addi r0, r3, lbl_803B9358@l
/* 803264A0 00323080  7C 60 22 14 */	add r3, r0, r4
/* 803264A4 00323084  C0 23 00 04 */	lfs f1, 4(r3)
/* 803264A8 00323088  3C 80 80 3C */	lis r4, lbl_803B9378@ha
/* 803264AC 0032308C  38 84 93 78 */	addi r4, r4, lbl_803B9378@l
/* 803264B0 00323090  C0 03 00 00 */	lfs f0, 0(r3)
/* 803264B4 00323094  EC 3F 00 72 */	fmuls f1, f31, f1
/* 803264B8 00323098  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 803264BC 0032309C  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 803264C0 003230A0  48 00 00 A0 */	b lbl_80326560
lbl_803264C4:
/* 803264C4 003230A4  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 803264C8 003230A8  EC 9F 07 F2 */	fmuls f4, f31, f31
/* 803264CC 003230AC  41 82 00 4C */	beq lbl_80326518
/* 803264D0 003230B0  3C 60 80 3C */	lis r3, lbl_803B9378@ha
/* 803264D4 003230B4  38 83 93 78 */	addi r4, r3, lbl_803B9378@l
/* 803264D8 003230B8  C0 44 00 00 */	lfs f2, 0(r4)
/* 803264DC 003230BC  3C 60 80 3C */	lis r3, lbl_803B9358@ha
/* 803264E0 003230C0  C0 24 00 08 */	lfs f1, 8(r4)
/* 803264E4 003230C4  38 03 93 58 */	addi r0, r3, lbl_803B9358@l
/* 803264E8 003230C8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 803264EC 003230CC  EC 62 09 3A */	fmadds f3, f2, f4, f1
/* 803264F0 003230D0  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 803264F4 003230D4  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 803264F8 003230D8  57 E4 18 38 */	slwi r4, r31, 3
/* 803264FC 003230DC  7C 60 22 14 */	add r3, r0, r4
/* 80326500 003230E0  EC 64 00 FA */	fmadds f3, f4, f3, f0
/* 80326504 003230E4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80326508 003230E8  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 8032650C 003230EC  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 80326510 003230F0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80326514 003230F4  48 00 00 4C */	b lbl_80326560
lbl_80326518:
/* 80326518 003230F8  3C 60 80 3C */	lis r3, lbl_803B9378@ha
/* 8032651C 003230FC  38 83 93 78 */	addi r4, r3, lbl_803B9378@l
/* 80326520 00323100  C0 44 00 04 */	lfs f2, 4(r4)
/* 80326524 00323104  3C 60 80 3C */	lis r3, lbl_803B9358@ha
/* 80326528 00323108  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8032652C 0032310C  38 63 93 58 */	addi r3, r3, lbl_803B9358@l
/* 80326530 00323110  57 E0 18 38 */	slwi r0, r31, 3
/* 80326534 00323114  EC 62 09 3A */	fmadds f3, f2, f4, f1
/* 80326538 00323118  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8032653C 0032311C  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80326540 00323120  7C 63 02 14 */	add r3, r3, r0
/* 80326544 00323124  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 80326548 00323128  EC 64 00 FA */	fmadds f3, f4, f3, f0
/* 8032654C 0032312C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80326550 00323130  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 80326554 00323134  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 80326558 00323138  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8032655C 0032313C  EC 21 00 32 */	fmuls f1, f1, f0
lbl_80326560:
/* 80326560 00323140  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80326564 00323144  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80326568 00323148  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8032656C 0032314C  7C 08 03 A6 */	mtlr r0
/* 80326570 00323150  38 21 00 28 */	addi r1, r1, 0x28
/* 80326574 00323154  4E 80 00 20 */	blr 

.global func_80326578
func_80326578:
/* 80326578 00323158  3C 60 80 3C */	lis r3, lbl_803B8F40@ha
/* 8032657C 0032315C  38 83 8F 40 */	addi r4, r3, lbl_803B8F40@l
/* 80326580 00323160  C0 04 00 00 */	lfs f0, 0(r4)
/* 80326584 00323164  3C 60 80 40 */	lis r3, lbl_80400778@ha
/* 80326588 00323168  D4 03 07 78 */	stfsu f0, lbl_80400778@l(r3)
/* 8032658C 0032316C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80326590 00323170  D0 03 00 04 */	stfs f0, 4(r3)
/* 80326594 00323174  C0 04 00 08 */	lfs f0, 8(r4)
/* 80326598 00323178  D0 03 00 08 */	stfs f0, 8(r3)
/* 8032659C 0032317C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 803265A0 00323180  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803265A4 00323184  4E 80 00 20 */	blr 

.global func_803265A8
func_803265A8:
/* 803265A8 00323188  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 803265AC 0032318C  3C 00 7F 80 */	lis r0, 0x7f80
/* 803265B0 00323190  D0 21 00 08 */	stfs f1, 8(r1)
/* 803265B4 00323194  80 81 00 08 */	lwz r4, 8(r1)
/* 803265B8 00323198  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 803265BC 0032319C  7C 03 00 00 */	cmpw r3, r0
/* 803265C0 003231A0  41 82 01 1C */	beq lbl_803266DC
/* 803265C4 003231A4  40 80 00 0C */	bge lbl_803265D0
/* 803265C8 003231A8  2C 03 00 00 */	cmpwi r3, 0
/* 803265CC 003231AC  41 82 01 38 */	beq lbl_80326704
lbl_803265D0:
/* 803265D0 003231B0  80 62 E7 D0 */	lwz r3, lbl_804DE1B0@sda21(r2)
/* 803265D4 003231B4  80 C1 00 08 */	lwz r6, 8(r1)
/* 803265D8 003231B8  90 61 00 10 */	stw r3, 0x10(r1)
/* 803265DC 003231BC  80 82 E7 D4 */	lwz r4, lbl_804DE1B4@sda21(r2)
/* 803265E0 003231C0  54 C0 04 3F */	clrlwi. r0, r6, 0x10
/* 803265E4 003231C4  54 C3 4D FE */	srwi r3, r6, 0x17
/* 803265E8 003231C8  90 81 00 14 */	stw r4, 0x14(r1)
/* 803265EC 003231CC  54 C5 02 7E */	clrlwi r5, r6, 9
/* 803265F0 003231D0  38 E3 FF 81 */	addi r7, r3, -127
/* 803265F4 003231D4  54 C8 86 7E */	rlwinm r8, r6, 0x10, 0x19, 0x1f
/* 803265F8 003231D8  41 82 00 A8 */	beq lbl_803266A0
/* 803265FC 003231DC  54 C3 02 5E */	rlwinm r3, r6, 0, 9, 0xf
/* 80326600 003231E0  64 64 3F 80 */	oris r4, r3, 0x3f80
/* 80326604 003231E4  64 A3 3F 80 */	oris r3, r5, 0x3f80
/* 80326608 003231E8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8032660C 003231EC  54 C0 04 21 */	rlwinm. r0, r6, 0, 0x10, 0x10
/* 80326610 003231F0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80326614 003231F4  41 82 00 14 */	beq lbl_80326628
/* 80326618 003231F8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8032661C 003231FC  39 08 00 01 */	addi r8, r8, 1
/* 80326620 00323200  3C 03 00 01 */	addis r0, r3, 1
/* 80326624 00323204  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_80326628:
/* 80326628 00323208  3C 60 80 3C */	lis r3, lbl_803B9154@ha
/* 8032662C 0032320C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80326630 00323210  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80326634 00323214  55 04 10 3A */	slwi r4, r8, 2
/* 80326638 00323218  38 03 91 54 */	addi r0, r3, lbl_803B9154@l
/* 8032663C 0032321C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80326640 00323220  7C 60 22 14 */	add r3, r0, r4
/* 80326644 00323224  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 80326648 00323228  EC C2 00 28 */	fsubs f6, f2, f0
/* 8032664C 0032322C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80326650 00323230  3C 60 80 3C */	lis r3, lbl_803B8F50@ha
/* 80326654 00323234  90 01 00 24 */	stw r0, 0x24(r1)
/* 80326658 00323238  3C 00 43 30 */	lis r0, 0x4330
/* 8032665C 0032323C  EC C6 00 32 */	fmuls f6, f6, f0
/* 80326660 00323240  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80326664 00323244  90 01 00 20 */	stw r0, 0x20(r1)
/* 80326668 00323248  38 03 8F 50 */	addi r0, r3, lbl_803B8F50@l
/* 8032666C 0032324C  C8 82 E7 E8 */	lfd f4, lbl_804DE1C8@sda21(r2)
/* 80326670 00323250  C8 61 00 20 */	lfd f3, 0x20(r1)
/* 80326674 00323254  7C 60 22 14 */	add r3, r0, r4
/* 80326678 00323258  EC 46 01 B2 */	fmuls f2, f6, f6
/* 8032667C 0032325C  C0 A2 E7 E0 */	lfs f5, lbl_804DE1C0@sda21(r2)
/* 80326680 00323260  EC 06 00 7A */	fmadds f0, f6, f1, f0
/* 80326684 00323264  EC 63 20 28 */	fsubs f3, f3, f4
/* 80326688 00323268  C0 23 00 00 */	lfs f1, 0(r3)
/* 8032668C 0032326C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80326690 00323270  EC 25 08 FA */	fmadds f1, f5, f3, f1
/* 80326694 00323274  EC 06 00 2A */	fadds f0, f6, f0
/* 80326698 00323278  EC 21 00 2A */	fadds f1, f1, f0
/* 8032669C 0032327C  48 00 00 70 */	b lbl_8032670C
lbl_803266A0:
/* 803266A0 00323280  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 803266A4 00323284  C8 22 E7 E8 */	lfd f1, lbl_804DE1C8@sda21(r2)
/* 803266A8 00323288  90 01 00 24 */	stw r0, 0x24(r1)
/* 803266AC 0032328C  3C 00 43 30 */	lis r0, 0x4330
/* 803266B0 00323290  3C 60 80 3C */	lis r3, lbl_803B8F50@ha
/* 803266B4 00323294  C0 42 E7 E0 */	lfs f2, lbl_804DE1C0@sda21(r2)
/* 803266B8 00323298  90 01 00 20 */	stw r0, 0x20(r1)
/* 803266BC 0032329C  55 04 10 3A */	slwi r4, r8, 2
/* 803266C0 003232A0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 803266C4 003232A4  38 03 8F 50 */	addi r0, r3, lbl_803B8F50@l
/* 803266C8 003232A8  7C 60 22 14 */	add r3, r0, r4
/* 803266CC 003232AC  EC 20 08 28 */	fsubs f1, f0, f1
/* 803266D0 003232B0  C0 03 00 00 */	lfs f0, 0(r3)
/* 803266D4 003232B4  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 803266D8 003232B8  48 00 00 34 */	b lbl_8032670C
lbl_803266DC:
/* 803266DC 003232BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 803266E0 003232C0  41 82 00 0C */	beq lbl_803266EC
/* 803266E4 003232C4  C0 21 00 08 */	lfs f1, 8(r1)
/* 803266E8 003232C8  48 00 00 24 */	b lbl_8032670C
lbl_803266EC:
/* 803266EC 003232CC  54 80 00 01 */	rlwinm. r0, r4, 0, 0, 0
/* 803266F0 003232D0  41 82 00 0C */	beq lbl_803266FC
/* 803266F4 003232D4  C0 22 E7 D8 */	lfs f1, lbl_804DE1B8@sda21(r2)
/* 803266F8 003232D8  48 00 00 14 */	b lbl_8032670C
lbl_803266FC:
/* 803266FC 003232DC  C0 22 E7 DC */	lfs f1, lbl_804DE1BC@sda21(r2)
/* 80326700 003232E0  48 00 00 0C */	b lbl_8032670C
lbl_80326704:
/* 80326704 003232E4  C0 02 E7 DC */	lfs f0, lbl_804DE1BC@sda21(r2)
/* 80326708 003232E8  FC 20 00 50 */	fneg f1, f0
lbl_8032670C:
/* 8032670C 003232EC  38 21 00 28 */	addi r1, r1, 0x28
/* 80326710 003232F0  4E 80 00 20 */	blr 


.section .rodata

.global lbl_803B8F40
lbl_803B8F40:
    .4byte 0x3E800000
    .4byte 0x3CBE6080
    .4byte 0x34372200
    .4byte 0x2DA44152
.global lbl_803B8F50
lbl_803B8F50:
    .4byte 0x00000000
    .4byte 0x3BFF0153
    .4byte 0x3C7E0545
    .4byte 0x3CBDC8D8
    .4byte 0x3CFC14D8
    .4byte 0x3D1CF43E
    .4byte 0x3D3BA2C8
    .4byte 0x3D5A16EC
    .4byte 0x3D785186
    .4byte 0x3D8B29B7
    .4byte 0x3D9A0EBD
    .4byte 0x3DA8D83A
    .4byte 0x3DB78694
    .4byte 0x3DC61A2F
    .4byte 0x3DD4936A
    .4byte 0x3DE2F2A4
    .4byte 0x3DF1383B
    .4byte 0x3DFF648A
    .4byte 0x3E06BBF4
    .4byte 0x3E0DB957
    .4byte 0x3E14AA98
    .4byte 0x3E1B8FE1
    .4byte 0x3E22695B
    .4byte 0x3E29372F
    .4byte 0x3E2FF984
    .4byte 0x3E36B07F
    .4byte 0x3E3D5C48
    .4byte 0x3E43FD03
    .4byte 0x3E4A92D5
    .4byte 0x3E511DE1
    .4byte 0x3E579E4A
    .4byte 0x3E5E1434
    .4byte 0x3E647FBE
    .4byte 0x3E6AE10B
    .4byte 0x3E71383B
    .4byte 0x3E77856E
    .4byte 0x3E7DC8C3
    .4byte 0x3E82012D
    .4byte 0x3E851927
    .4byte 0x3E882C60
    .4byte 0x3E8B3AE5
    .4byte 0x3E8E44C6
    .4byte 0x3E914A10
    .4byte 0x3E944AD1
    .4byte 0x3E974716
    .4byte 0x3E9A3EED
    .4byte 0x3E9D3263
    .4byte 0x3EA02184
    .4byte 0x3EA30C5E
    .4byte 0x3EA5F2FD
    .4byte 0x3EA8D56C
    .4byte 0x3EABB3B9
    .4byte 0x3EAE8DEE
    .4byte 0x3EB16418
    .4byte 0x3EB43641
    .4byte 0x3EB70475
    .4byte 0x3EB9CEC0
    .4byte 0x3EBC952B
    .4byte 0x3EBF57C2
    .4byte 0x3EC2168F
    .4byte 0x3EC4D19C
    .4byte 0x3EC788F4
    .4byte 0x3ECA3CA1
    .4byte 0x3ECCECAC
    .4byte 0x3ECF991F
    .4byte 0x3ED24205
    .4byte 0x3ED4E765
    .4byte 0x3ED7894A
    .4byte 0x3EDA27BC
    .4byte 0x3EDCC2C5
    .4byte 0x3EDF5A6D
    .4byte 0x3EE1EEBD
    .4byte 0x3EE47FBE
    .4byte 0x3EE70D78
    .4byte 0x3EE997F4
    .4byte 0x3EEC1F39
    .4byte 0x3EEEA350
    .4byte 0x3EF12441
    .4byte 0x3EF3A213
    .4byte 0x3EF61CCF
    .4byte 0x3EF8947B
    .4byte 0x3EFB0920
    .4byte 0x3EFD7AC4
    .4byte 0x3EFFE970
    .4byte 0x3F012A95
    .4byte 0x3F025EFD
    .4byte 0x3F0391F3
    .4byte 0x3F04C37A
    .4byte 0x3F05F397
    .4byte 0x3F07224C
    .4byte 0x3F084F9D
    .4byte 0x3F097B8D
    .4byte 0x3F0AA61F
    .4byte 0x3F0BCF56
    .4byte 0x3F0CF736
    .4byte 0x3F0E1DC1
    .4byte 0x3F0F42FB
    .4byte 0x3F1066E7
    .4byte 0x3F118987
    .4byte 0x3F12AADE
    .4byte 0x3F13CAF1
    .4byte 0x3F14E9C0
    .4byte 0x3F16074F
    .4byte 0x3F1723A2
    .4byte 0x3F183EBA
    .4byte 0x3F19589A
    .4byte 0x3F1A7145
    .4byte 0x3F1B88BE
    .4byte 0x3F1C9F07
    .4byte 0x3F1DB422
    .4byte 0x3F1EC813
    .4byte 0x3F1FDADC
    .4byte 0x3F20EC7F
    .4byte 0x3F21FCFF
    .4byte 0x3F230C5E
    .4byte 0x3F241A9F
    .4byte 0x3F2527C3
    .4byte 0x3F2633CE
    .4byte 0x3F273EC1
    .4byte 0x3F28489E
    .4byte 0x3F295169
    .4byte 0x3F2A5923
    .4byte 0x3F2B5FCF
    .4byte 0x3F2C656E
    .4byte 0x3F2D6A02
    .4byte 0x3F2E6D8F
    .4byte 0x3F2F7015
    .4byte 0x3F307198
    .4byte 0x3F317218
.global lbl_803B9154
lbl_803B9154:
    .4byte 0x3F800000
    .4byte 0x3F7E03F8
    .4byte 0x3F7C0FC1
    .4byte 0x3F7A232D
    .4byte 0x3F783E10
    .4byte 0x3F76603E
    .4byte 0x3F74898D
    .4byte 0x3F72B9D6
    .4byte 0x3F70F0F1
    .4byte 0x3F6F2EB7
    .4byte 0x3F6D7304
    .4byte 0x3F6BBDB3
    .4byte 0x3F6A0EA1
    .4byte 0x3F6865AC
    .4byte 0x3F66C2B4
    .4byte 0x3F652598
    .4byte 0x3F638E39
    .4byte 0x3F61FC78
    .4byte 0x3F607038
    .4byte 0x3F5EE95C
    .4byte 0x3F5D67C9
    .4byte 0x3F5BEB62
    .4byte 0x3F5A740E
    .4byte 0x3F5901B2
    .4byte 0x3F579436
    .4byte 0x3F562B81
    .4byte 0x3F54C77B
    .4byte 0x3F53680D
    .4byte 0x3F520D21
    .4byte 0x3F50B6A0
    .4byte 0x3F4F6475
    .4byte 0x3F4E168A
    .4byte 0x3F4CCCCD
    .4byte 0x3F4B8728
    .4byte 0x3F4A4588
    .4byte 0x3F4907DA
    .4byte 0x3F47CE0C
    .4byte 0x3F46980C
    .4byte 0x3F4565C8
    .4byte 0x3F443730
    .4byte 0x3F430C31
    .4byte 0x3F41E4BC
    .4byte 0x3F40C0C1
    .4byte 0x3F3FA030
    .4byte 0x3F3E82FA
    .4byte 0x3F3D6910
    .4byte 0x3F3C5264
    .4byte 0x3F3B3EE7
    .4byte 0x3F3A2E8C
    .4byte 0x3F392144
    .4byte 0x3F381703
    .4byte 0x3F370FBB
    .4byte 0x3F360B61
    .4byte 0x3F3509E7
    .4byte 0x3F340B41
    .4byte 0x3F330F63
    .4byte 0x3F321643
    .4byte 0x3F311FD4
    .4byte 0x3F302C0B
    .4byte 0x3F2F3ADE
    .4byte 0x3F2E4C41
    .4byte 0x3F2D602B
    .4byte 0x3F2C7692
    .4byte 0x3F2B8F6A
    .4byte 0x3F2AAAAB
    .4byte 0x3F29C84A
    .4byte 0x3F28E83F
    .4byte 0x3F280A81
    .4byte 0x3F272F05
    .4byte 0x3F2655C4
    .4byte 0x3F257EB5
    .4byte 0x3F24A9CF
    .4byte 0x3F23D70A
    .4byte 0x3F23065E
    .4byte 0x3F2237C3
    .4byte 0x3F216B31
    .4byte 0x3F20A0A1
    .4byte 0x3F1FD80A
    .4byte 0x3F1F1166
    .4byte 0x3F1E4CAD
    .4byte 0x3F1D89D9
    .4byte 0x3F1CC8E1
    .4byte 0x3F1C09C1
    .4byte 0x3F1B4C70
    .4byte 0x3F1A90E8
    .4byte 0x3F19D723
    .4byte 0x3F191F1A
    .4byte 0x3F1868C8
    .4byte 0x3F17B426
    .4byte 0x3F17012E
    .4byte 0x3F164FDA
    .4byte 0x3F15A025
    .4byte 0x3F14F209
    .4byte 0x3F144581
    .4byte 0x3F139A86
    .4byte 0x3F12F114
    .4byte 0x3F124925
    .4byte 0x3F11A2B4
    .4byte 0x3F10FDBC
    .4byte 0x3F105A38
    .4byte 0x3F0FB824
    .4byte 0x3F0F177A
    .4byte 0x3F0E7835
    .4byte 0x3F0DDA52
    .4byte 0x3F0D3DCB
    .4byte 0x3F0CA29C
    .4byte 0x3F0C08C1
    .4byte 0x3F0B7034
    .4byte 0x3F0AD8F3
    .4byte 0x3F0A42F8
    .4byte 0x3F09AE41
    .4byte 0x3F091AC7
    .4byte 0x3F088889
    .4byte 0x3F07F781
    .4byte 0x3F0767AB
    .4byte 0x3F06D905
    .4byte 0x3F064B8A
    .4byte 0x3F05BF37
    .4byte 0x3F053408
    .4byte 0x3F04A9FA
    .4byte 0x3F042108
    .4byte 0x3F039930
    .4byte 0x3F03126F
    .4byte 0x3F028CC0
    .4byte 0x3F020821
    .4byte 0x3F01848E
    .4byte 0x3F010204
    .4byte 0x3F008080
    .4byte 0x3F000000
.global lbl_803B9358
lbl_803B9358:
    .4byte 0x00000000
    .4byte 0x3F800000
    .4byte 0x3F800000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xBF800000
    .4byte 0xBF800000
    .4byte 0x00000000
.global lbl_803B9378
lbl_803B9378:
    .4byte 0x366CCFAA
    .4byte 0x34A5E129
    .4byte 0xB9AAE275
    .4byte 0xB8196543
    .4byte 0x3C81E0ED
    .4byte 0x3B2335DD
    .4byte 0xBE9DE9E6
    .4byte 0xBDA55DE7
    .4byte 0x3F800000
    .4byte 0x3F490FDB


.section .sdata2

.global lbl_804DE190
lbl_804DE190:
	.4byte 0x43500000
	.4byte 0x00000000
.global lbl_804DE198
lbl_804DE198:
	.4byte 0x3F22F983
.global lbl_804DE19C
lbl_804DE19C:
	.4byte 0x3F000000
.global lbl_804DE1A0
lbl_804DE1A0:
	.4byte 0x39B504F3
	.4byte 0x00000000
.global lbl_804DE1A8
lbl_804DE1A8:
	.4byte 0x43300000
	.4byte 0x80000000
.global lbl_804DE1B0
lbl_804DE1B0:
	.4byte 0xBF000030
.global lbl_804DE1B4
lbl_804DE1B4:
	.4byte 0x3EAAAA36
.global lbl_804DE1B8
lbl_804DE1B8:
	.4byte 0x7FFFFFFF
.global lbl_804DE1BC
lbl_804DE1BC:
	.4byte 0x7F800000
.global lbl_804DE1C0
lbl_804DE1C0:
	.4byte 0x3F317218
	.4byte 0x00000000
.global lbl_804DE1C8
lbl_804DE1C8:
	.4byte 0x43300000
	.4byte 0x80000000
