.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_8020DFDC
func_8020DFDC:
/* 8020DFDC 0020ABBC  4E 80 00 20 */	blr 
/* 8020DFE0 0020ABC0  7C 08 02 A6 */	mflr r0
/* 8020DFE4 0020ABC4  90 01 00 04 */	stw r0, 4(r1)
/* 8020DFE8 0020ABC8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8020DFEC 0020ABCC  4B FB 6A 0D */	bl func_801C49F8
/* 8020DFF0 0020ABD0  3C 80 80 4A */	lis r4, lbl_8049E6C8@ha
/* 8020DFF4 0020ABD4  90 6D B3 D0 */	stw r3, lbl_804D6A70-_SDA_BASE_(r13)
/* 8020DFF8 0020ABD8  38 64 E6 C8 */	addi r3, r4, lbl_8049E6C8@l
/* 8020DFFC 0020ABDC  38 A3 00 8C */	addi r5, r3, 0x8c
/* 8020E000 0020ABE0  88 03 00 8C */	lbz r0, 0x8c(r3)
/* 8020E004 0020ABE4  38 60 00 00 */	li r3, 0
/* 8020E008 0020ABE8  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8020E00C 0020ABEC  98 05 00 00 */	stb r0, 0(r5)
/* 8020E010 0020ABF0  38 80 00 01 */	li r4, 1
/* 8020E014 0020ABF4  38 60 00 00 */	li r3, 0
/* 8020E018 0020ABF8  88 05 00 00 */	lbz r0, 0(r5)
/* 8020E01C 0020ABFC  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 8020E020 0020AC00  98 05 00 00 */	stb r0, 0(r5)
/* 8020E024 0020AC04  48 00 00 5D */	bl func_8020E080
/* 8020E028 0020AC08  38 60 00 02 */	li r3, 2
/* 8020E02C 0020AC0C  48 00 00 55 */	bl func_8020E080
/* 8020E030 0020AC10  38 60 00 01 */	li r3, 1
/* 8020E034 0020AC14  48 00 00 4D */	bl func_8020E080
/* 8020E038 0020AC18  4B FB 59 89 */	bl func_801C39C0
/* 8020E03C 0020AC1C  4B FB 5B 79 */	bl func_801C3BB4
/* 8020E040 0020AC20  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8020E044 0020AC24  38 21 00 08 */	addi r1, r1, 8
/* 8020E048 0020AC28  7C 08 03 A6 */	mtlr r0
/* 8020E04C 0020AC2C  4E 80 00 20 */	blr 
/* 8020E050 0020AC30  4E 80 00 20 */	blr 
/* 8020E054 0020AC34  7C 08 02 A6 */	mflr r0
/* 8020E058 0020AC38  38 60 00 00 */	li r3, 0
/* 8020E05C 0020AC3C  90 01 00 04 */	stw r0, 4(r1)
/* 8020E060 0020AC40  94 21 FF F8 */	stwu r1, -8(r1)
/* 8020E064 0020AC44  4B FB CD A1 */	bl func_801CAE04
/* 8020E068 0020AC48  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8020E06C 0020AC4C  38 21 00 08 */	addi r1, r1, 8
/* 8020E070 0020AC50  7C 08 03 A6 */	mtlr r0
/* 8020E074 0020AC54  4E 80 00 20 */	blr 
/* 8020E078 0020AC58  38 60 00 00 */	li r3, 0
/* 8020E07C 0020AC5C  4E 80 00 20 */	blr 

.global func_8020E080
func_8020E080:
/* 8020E080 0020AC60  7C 08 02 A6 */	mflr r0
/* 8020E084 0020AC64  90 01 00 04 */	stw r0, 4(r1)
/* 8020E088 0020AC68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020E08C 0020AC6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020E090 0020AC70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020E094 0020AC74  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8020E098 0020AC78  93 81 00 10 */	stw r28, 0x10(r1)
/* 8020E09C 0020AC7C  3B 83 00 00 */	addi r28, r3, 0
/* 8020E0A0 0020AC80  1C 1C 00 14 */	mulli r0, r28, 0x14
/* 8020E0A4 0020AC84  3C 60 80 3E */	lis r3, lbl_803E6278@ha
/* 8020E0A8 0020AC88  3B E3 62 78 */	addi r31, r3, lbl_803E6278@l
/* 8020E0AC 0020AC8C  38 7C 00 00 */	addi r3, r28, 0
/* 8020E0B0 0020AC90  7F BF 02 14 */	add r29, r31, r0
/* 8020E0B4 0020AC94  4B FB 34 1D */	bl func_801C14D0
/* 8020E0B8 0020AC98  7C 7E 1B 79 */	or. r30, r3, r3
/* 8020E0BC 0020AC9C  41 82 00 70 */	beq lbl_8020E12C
/* 8020E0C0 0020ACA0  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 8020E0C4 0020ACA4  38 00 00 00 */	li r0, 0
/* 8020E0C8 0020ACA8  3C 60 80 1C */	lis r3, func_801C5DB0@ha
/* 8020E0CC 0020ACAC  90 1F 00 08 */	stw r0, 8(r31)
/* 8020E0D0 0020ACB0  38 83 5D B0 */	addi r4, r3, func_801C5DB0@l
/* 8020E0D4 0020ACB4  38 7E 00 00 */	addi r3, r30, 0
/* 8020E0D8 0020ACB8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8020E0DC 0020ACBC  38 A0 00 03 */	li r5, 3
/* 8020E0E0 0020ACC0  38 C0 00 00 */	li r6, 0
/* 8020E0E4 0020ACC4  48 18 25 B9 */	bl func_8039069C
/* 8020E0E8 0020ACC8  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8020E0EC 0020ACCC  28 00 00 00 */	cmplwi r0, 0
/* 8020E0F0 0020ACD0  41 82 00 08 */	beq lbl_8020E0F8
/* 8020E0F4 0020ACD4  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_8020E0F8:
/* 8020E0F8 0020ACD8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8020E0FC 0020ACDC  28 0C 00 00 */	cmplwi r12, 0
/* 8020E100 0020ACE0  41 82 00 10 */	beq lbl_8020E110
/* 8020E104 0020ACE4  7D 88 03 A6 */	mtlr r12
/* 8020E108 0020ACE8  38 7E 00 00 */	addi r3, r30, 0
/* 8020E10C 0020ACEC  4E 80 00 21 */	blrl 
lbl_8020E110:
/* 8020E110 0020ACF0  80 9D 00 08 */	lwz r4, 8(r29)
/* 8020E114 0020ACF4  28 04 00 00 */	cmplwi r4, 0
/* 8020E118 0020ACF8  41 82 00 2C */	beq lbl_8020E144
/* 8020E11C 0020ACFC  38 7E 00 00 */	addi r3, r30, 0
/* 8020E120 0020AD00  38 A0 00 04 */	li r5, 4
/* 8020E124 0020AD04  48 18 1C 31 */	bl func_8038FD54
/* 8020E128 0020AD08  48 00 00 1C */	b lbl_8020E144
lbl_8020E12C:
/* 8020E12C 0020AD0C  38 DC 00 00 */	addi r6, r28, 0
/* 8020E130 0020AD10  4C C6 31 82 */	crclr 6
/* 8020E134 0020AD14  38 7F 00 7C */	addi r3, r31, 0x7c
/* 8020E138 0020AD18  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 8020E13C 0020AD1C  38 A0 00 C2 */	li r5, 0xc2
/* 8020E140 0020AD20  48 13 75 69 */	bl OSReport
lbl_8020E144:
/* 8020E144 0020AD24  7F C3 F3 78 */	mr r3, r30
/* 8020E148 0020AD28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020E14C 0020AD2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020E150 0020AD30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8020E154 0020AD34  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8020E158 0020AD38  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8020E15C 0020AD3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8020E160 0020AD40  7C 08 03 A6 */	mtlr r0
/* 8020E164 0020AD44  4E 80 00 20 */	blr 
/* 8020E168 0020AD48  7C 08 02 A6 */	mflr r0
/* 8020E16C 0020AD4C  38 A0 00 00 */	li r5, 0
/* 8020E170 0020AD50  90 01 00 04 */	stw r0, 4(r1)
/* 8020E174 0020AD54  94 21 FF F8 */	stwu r1, -8(r1)
/* 8020E178 0020AD58  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8020E17C 0020AD5C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8020E180 0020AD60  4B FB 9F B9 */	bl func_801C8138
/* 8020E184 0020AD64  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8020E188 0020AD68  38 21 00 08 */	addi r1, r1, 8
/* 8020E18C 0020AD6C  7C 08 03 A6 */	mtlr r0
/* 8020E190 0020AD70  4E 80 00 20 */	blr 
/* 8020E194 0020AD74  38 60 00 00 */	li r3, 0
/* 8020E198 0020AD78  4E 80 00 20 */	blr 
/* 8020E19C 0020AD7C  4E 80 00 20 */	blr 
/* 8020E1A0 0020AD80  4E 80 00 20 */	blr 
/* 8020E1A4 0020AD84  7C 08 02 A6 */	mflr r0
/* 8020E1A8 0020AD88  90 01 00 04 */	stw r0, 4(r1)
/* 8020E1AC 0020AD8C  94 21 FF F8 */	stwu r1, -8(r1)
/* 8020E1B0 0020AD90  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8020E1B4 0020AD94  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8020E1B8 0020AD98  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8020E1BC 0020AD9C  4B FB 4D 15 */	bl func_801C2ED0
/* 8020E1C0 0020ADA0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8020E1C4 0020ADA4  38 21 00 08 */	addi r1, r1, 8
/* 8020E1C8 0020ADA8  7C 08 03 A6 */	mtlr r0
/* 8020E1CC 0020ADAC  4E 80 00 20 */	blr 
/* 8020E1D0 0020ADB0  38 60 00 00 */	li r3, 0
/* 8020E1D4 0020ADB4  4E 80 00 20 */	blr 
/* 8020E1D8 0020ADB8  7C 08 02 A6 */	mflr r0
/* 8020E1DC 0020ADBC  90 01 00 04 */	stw r0, 4(r1)
/* 8020E1E0 0020ADC0  94 21 FF F8 */	stwu r1, -8(r1)
/* 8020E1E4 0020ADC4  4B FB 4D FD */	bl func_801C2FE0
/* 8020E1E8 0020ADC8  4B E0 34 0D */	bl func_800115F4
/* 8020E1EC 0020ADCC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8020E1F0 0020ADD0  38 21 00 08 */	addi r1, r1, 8
/* 8020E1F4 0020ADD4  7C 08 03 A6 */	mtlr r0
/* 8020E1F8 0020ADD8  4E 80 00 20 */	blr 
/* 8020E1FC 0020ADDC  4E 80 00 20 */	blr 
/* 8020E200 0020ADE0  7C 08 02 A6 */	mflr r0
/* 8020E204 0020ADE4  90 01 00 04 */	stw r0, 4(r1)
/* 8020E208 0020ADE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020E20C 0020ADEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020E210 0020ADF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020E214 0020ADF4  7C 7E 1B 78 */	mr r30, r3
/* 8020E218 0020ADF8  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 8020E21C 0020ADFC  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8020E220 0020AE00  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8020E224 0020AE04  4B FB 4C AD */	bl func_801C2ED0
/* 8020E228 0020AE08  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8020E22C 0020AE0C  38 7E 00 00 */	addi r3, r30, 0
/* 8020E230 0020AE10  38 A0 00 00 */	li r5, 0
/* 8020E234 0020AE14  4B FB 9F 05 */	bl func_801C8138
/* 8020E238 0020AE18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020E23C 0020AE1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020E240 0020AE20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8020E244 0020AE24  38 21 00 20 */	addi r1, r1, 0x20
/* 8020E248 0020AE28  7C 08 03 A6 */	mtlr r0
/* 8020E24C 0020AE2C  4E 80 00 20 */	blr 
/* 8020E250 0020AE30  38 60 00 00 */	li r3, 0
/* 8020E254 0020AE34  4E 80 00 20 */	blr 
/* 8020E258 0020AE38  4E 80 00 20 */	blr 
/* 8020E25C 0020AE3C  4E 80 00 20 */	blr 
/* 8020E260 0020AE40  38 60 00 00 */	li r3, 0
/* 8020E264 0020AE44  4E 80 00 20 */	blr 
/* 8020E268 0020AE48  38 60 00 01 */	li r3, 1
/* 8020E26C 0020AE4C  4E 80 00 20 */	blr 
/* 8020E270 0020AE50  4E 80 00 20 */	blr 
