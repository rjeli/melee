.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_803A4138
func_803A4138:
/* 803A4138 003A0D18  7C 08 02 A6 */	mflr r0
/* 803A413C 003A0D1C  3C 60 80 4D */	lis r3, lbl_804D10B0@ha
/* 803A4140 003A0D20  90 01 00 04 */	stw r0, 4(r1)
/* 803A4144 003A0D24  38 00 00 00 */	li r0, 0
/* 803A4148 003A0D28  38 63 10 B0 */	addi r3, r3, lbl_804D10B0@l
/* 803A414C 003A0D2C  94 21 FF F8 */	stwu r1, -8(r1)
/* 803A4150 003A0D30  38 A0 00 04 */	li r5, 4
/* 803A4154 003A0D34  B0 0D C2 3E */	sth r0, lbl_804D78DE@sda21(r13)
/* 803A4158 003A0D38  B0 0D C2 38 */	sth r0, lbl_804D78D8@sda21(r13)
/* 803A415C 003A0D3C  B0 8D C2 B8 */	sth r4, lbl_804D7958@sda21(r13)
/* 803A4160 003A0D40  4B FD 6B E9 */	bl HSD_ObjAllocInit
/* 803A4164 003A0D44  38 60 00 00 */	li r3, 0
/* 803A4168 003A0D48  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803A416C 003A0D4C  38 21 00 08 */	addi r1, r1, 8
/* 803A4170 003A0D50  7C 08 03 A6 */	mtlr r0
/* 803A4174 003A0D54  4E 80 00 20 */	blr 

.global func_803A4178
func_803A4178:
/* 803A4178 003A0D58  7C 08 02 A6 */	mflr r0
/* 803A417C 003A0D5C  3C A0 80 4D */	lis r5, lbl_804D10B0@ha
/* 803A4180 003A0D60  90 01 00 04 */	stw r0, 4(r1)
/* 803A4184 003A0D64  38 05 10 B0 */	addi r0, r5, lbl_804D10B0@l
/* 803A4188 003A0D68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A418C 003A0D6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A4190 003A0D70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A4194 003A0D74  3B C4 00 00 */	addi r30, r4, 0
/* 803A4198 003A0D78  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A419C 003A0D7C  3B A3 00 00 */	addi r29, r3, 0
/* 803A41A0 003A0D80  7C 03 03 78 */	mr r3, r0
/* 803A41A4 003A0D84  4B FD 6A 25 */	bl HSD_ObjAlloc
/* 803A41A8 003A0D88  7C 7F 1B 79 */	or. r31, r3, r3
/* 803A41AC 003A0D8C  41 82 00 14 */	beq lbl_803A41C0
/* 803A41B0 003A0D90  A0 AD C2 B8 */	lhz r5, lbl_804D7958@sda21(r13)
/* 803A41B4 003A0D94  38 7F 00 00 */	addi r3, r31, 0
/* 803A41B8 003A0D98  38 80 00 00 */	li r4, 0
/* 803A41BC 003A0D9C  4B C5 EF 45 */	bl memset
lbl_803A41C0:
/* 803A41C0 003A0DA0  28 1F 00 00 */	cmplwi r31, 0
/* 803A41C4 003A0DA4  41 82 00 78 */	beq lbl_803A423C
/* 803A41C8 003A0DA8  38 60 00 00 */	li r3, 0
/* 803A41CC 003A0DAC  90 7F 00 00 */	stw r3, 0(r31)
/* 803A41D0 003A0DB0  38 00 00 01 */	li r0, 1
/* 803A41D4 003A0DB4  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 803A41D8 003A0DB8  98 7F 00 31 */	stb r3, 0x31(r31)
/* 803A41DC 003A0DBC  9B BF 00 30 */	stb r29, 0x30(r31)
/* 803A41E0 003A0DC0  C0 02 F0 88 */	lfs f0, lbl_804DEA68@sda21(r2)
/* 803A41E4 003A0DC4  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 803A41E8 003A0DC8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 803A41EC 003A0DCC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 803A41F0 003A0DD0  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 803A41F4 003A0DD4  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 803A41F8 003A0DD8  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 803A41FC 003A0DDC  C0 02 F0 8C */	lfs f0, lbl_804DEA6C@sda21(r2)
/* 803A4200 003A0DE0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 803A4204 003A0DE4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 803A4208 003A0DE8  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 803A420C 003A0DEC  90 7F 00 9C */	stw r3, 0x9c(r31)
/* 803A4210 003A0DF0  98 7F 00 A2 */	stb r3, 0xa2(r31)
/* 803A4214 003A0DF4  90 7F 00 04 */	stw r3, 4(r31)
/* 803A4218 003A0DF8  B3 DF 00 A0 */	sth r30, 0xa0(r31)
/* 803A421C 003A0DFC  A0 6D C2 3E */	lhz r3, lbl_804D78DE@sda21(r13)
/* 803A4220 003A0E00  A0 0D C2 38 */	lhz r0, lbl_804D78D8@sda21(r13)
/* 803A4224 003A0E04  38 63 00 01 */	addi r3, r3, 1
/* 803A4228 003A0E08  B0 6D C2 3E */	sth r3, lbl_804D78DE@sda21(r13)
/* 803A422C 003A0E0C  A0 6D C2 3E */	lhz r3, lbl_804D78DE@sda21(r13)
/* 803A4230 003A0E10  7C 03 00 40 */	cmplw r3, r0
/* 803A4234 003A0E14  40 81 00 08 */	ble lbl_803A423C
/* 803A4238 003A0E18  B0 6D C2 38 */	sth r3, lbl_804D78D8@sda21(r13)
lbl_803A423C:
/* 803A423C 003A0E1C  7F E3 FB 78 */	mr r3, r31
/* 803A4240 003A0E20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A4244 003A0E24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A4248 003A0E28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A424C 003A0E2C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A4250 003A0E30  38 21 00 20 */	addi r1, r1, 0x20
/* 803A4254 003A0E34  7C 08 03 A6 */	mtlr r0
/* 803A4258 003A0E38  4E 80 00 20 */	blr 

.global func_803A425C
func_803A425C:
/* 803A425C 003A0E3C  7C 08 02 A6 */	mflr r0
/* 803A4260 003A0E40  90 01 00 04 */	stw r0, 4(r1)
/* 803A4264 003A0E44  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803A4268 003A0E48  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803A426C 003A0E4C  3B E3 00 00 */	addi r31, r3, 0
/* 803A4270 003A0E50  38 64 00 00 */	addi r3, r4, 0
/* 803A4274 003A0E54  A0 9F 00 1E */	lhz r4, 0x1e(r31)
/* 803A4278 003A0E58  4B FF FF 01 */	bl func_803A4178
/* 803A427C 003A0E5C  90 7F 00 8C */	stw r3, 0x8c(r31)
/* 803A4280 003A0E60  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803A4284 003A0E64  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803A4288 003A0E68  38 21 00 18 */	addi r1, r1, 0x18
/* 803A428C 003A0E6C  7C 08 03 A6 */	mtlr r0
/* 803A4290 003A0E70  4E 80 00 20 */	blr 

.global func_803A4294
func_803A4294:
/* 803A4294 003A0E74  7C 08 02 A6 */	mflr r0
/* 803A4298 003A0E78  90 01 00 04 */	stw r0, 4(r1)
/* 803A429C 003A0E7C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803A42A0 003A0E80  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803A42A4 003A0E84  3B E3 00 00 */	addi r31, r3, 0
/* 803A42A8 003A0E88  38 64 00 00 */	addi r3, r4, 0
/* 803A42AC 003A0E8C  A0 9F 00 1C */	lhz r4, 0x1c(r31)
/* 803A42B0 003A0E90  4B FF FE C9 */	bl func_803A4178
/* 803A42B4 003A0E94  90 7F 00 54 */	stw r3, 0x54(r31)
/* 803A42B8 003A0E98  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803A42BC 003A0E9C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803A42C0 003A0EA0  38 21 00 18 */	addi r1, r1, 0x18
/* 803A42C4 003A0EA4  7C 08 03 A6 */	mtlr r0
/* 803A42C8 003A0EA8  4E 80 00 20 */	blr 

.global func_803A42CC
func_803A42CC:
/* 803A42CC 003A0EAC  28 04 00 00 */	cmplwi r4, 0
/* 803A42D0 003A0EB0  41 82 00 18 */	beq lbl_803A42E8
/* 803A42D4 003A0EB4  28 03 00 00 */	cmplwi r3, 0
/* 803A42D8 003A0EB8  41 82 00 10 */	beq lbl_803A42E8
/* 803A42DC 003A0EBC  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 803A42E0 003A0EC0  28 00 00 00 */	cmplwi r0, 0
/* 803A42E4 003A0EC4  41 82 00 0C */	beq lbl_803A42F0
lbl_803A42E8:
/* 803A42E8 003A0EC8  38 60 FF FF */	li r3, -1
/* 803A42EC 003A0ECC  4E 80 00 20 */	blr 
lbl_803A42F0:
/* 803A42F0 003A0ED0  90 83 00 8C */	stw r4, 0x8c(r3)
/* 803A42F4 003A0ED4  A0 64 00 32 */	lhz r3, 0x32(r4)
/* 803A42F8 003A0ED8  38 03 00 01 */	addi r0, r3, 1
/* 803A42FC 003A0EDC  B0 04 00 32 */	sth r0, 0x32(r4)
/* 803A4300 003A0EE0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803A4304 003A0EE4  4E 80 00 20 */	blr 

.global func_803A4308
func_803A4308:
/* 803A4308 003A0EE8  28 04 00 00 */	cmplwi r4, 0
/* 803A430C 003A0EEC  41 82 00 18 */	beq lbl_803A4324
/* 803A4310 003A0EF0  28 03 00 00 */	cmplwi r3, 0
/* 803A4314 003A0EF4  41 82 00 10 */	beq lbl_803A4324
/* 803A4318 003A0EF8  80 03 00 54 */	lwz r0, 0x54(r3)
/* 803A431C 003A0EFC  28 00 00 00 */	cmplwi r0, 0
/* 803A4320 003A0F00  41 82 00 0C */	beq lbl_803A432C
lbl_803A4324:
/* 803A4324 003A0F04  38 60 FF FF */	li r3, -1
/* 803A4328 003A0F08  4E 80 00 20 */	blr 
lbl_803A432C:
/* 803A432C 003A0F0C  90 83 00 54 */	stw r4, 0x54(r3)
/* 803A4330 003A0F10  A0 64 00 32 */	lhz r3, 0x32(r4)
/* 803A4334 003A0F14  38 03 00 01 */	addi r0, r3, 1
/* 803A4338 003A0F18  B0 04 00 32 */	sth r0, 0x32(r4)
/* 803A433C 003A0F1C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803A4340 003A0F20  4E 80 00 20 */	blr 

.global func_803A4344
func_803A4344:
/* 803A4344 003A0F24  7C 08 02 A6 */	mflr r0
/* 803A4348 003A0F28  90 01 00 04 */	stw r0, 4(r1)
/* 803A434C 003A0F2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A4350 003A0F30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A4354 003A0F34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A4358 003A0F38  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A435C 003A0F3C  7C 7D 1B 78 */	mr r29, r3
/* 803A4360 003A0F40  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 803A4364 003A0F44  28 04 00 00 */	cmplwi r4, 0
/* 803A4368 003A0F48  40 82 00 0C */	bne lbl_803A4374
/* 803A436C 003A0F4C  38 60 FF FF */	li r3, -1
/* 803A4370 003A0F50  48 00 00 5C */	b lbl_803A43CC
lbl_803A4374:
/* 803A4374 003A0F54  A0 64 00 32 */	lhz r3, 0x32(r4)
/* 803A4378 003A0F58  38 03 FF FF */	addi r0, r3, -1
/* 803A437C 003A0F5C  54 1E 04 3F */	clrlwi. r30, r0, 0x10
/* 803A4380 003A0F60  B0 04 00 32 */	sth r0, 0x32(r4)
/* 803A4384 003A0F64  40 82 00 3C */	bne lbl_803A43C0
/* 803A4388 003A0F68  83 FD 00 8C */	lwz r31, 0x8c(r29)
/* 803A438C 003A0F6C  81 9F 00 9C */	lwz r12, 0x9c(r31)
/* 803A4390 003A0F70  28 0C 00 00 */	cmplwi r12, 0
/* 803A4394 003A0F74  41 82 00 10 */	beq lbl_803A43A4
/* 803A4398 003A0F78  7D 88 03 A6 */	mtlr r12
/* 803A439C 003A0F7C  38 7F 00 00 */	addi r3, r31, 0
/* 803A43A0 003A0F80  4E 80 00 21 */	blrl 
lbl_803A43A4:
/* 803A43A4 003A0F84  3C 60 80 4D */	lis r3, lbl_804D10B0@ha
/* 803A43A8 003A0F88  38 63 10 B0 */	addi r3, r3, lbl_804D10B0@l
/* 803A43AC 003A0F8C  38 9F 00 00 */	addi r4, r31, 0
/* 803A43B0 003A0F90  4B FD 69 71 */	bl HSD_ObjFree
/* 803A43B4 003A0F94  A0 6D C2 3E */	lhz r3, lbl_804D78DE@sda21(r13)
/* 803A43B8 003A0F98  38 03 FF FF */	addi r0, r3, -1
/* 803A43BC 003A0F9C  B0 0D C2 3E */	sth r0, lbl_804D78DE@sda21(r13)
lbl_803A43C0:
/* 803A43C0 003A0FA0  38 00 00 00 */	li r0, 0
/* 803A43C4 003A0FA4  90 1D 00 8C */	stw r0, 0x8c(r29)
/* 803A43C8 003A0FA8  7F C3 F3 78 */	mr r3, r30
lbl_803A43CC:
/* 803A43CC 003A0FAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A43D0 003A0FB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A43D4 003A0FB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A43D8 003A0FB8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A43DC 003A0FBC  38 21 00 20 */	addi r1, r1, 0x20
/* 803A43E0 003A0FC0  7C 08 03 A6 */	mtlr r0
/* 803A43E4 003A0FC4  4E 80 00 20 */	blr 

.global func_803A43E8
func_803A43E8:
/* 803A43E8 003A0FC8  7C 08 02 A6 */	mflr r0
/* 803A43EC 003A0FCC  90 01 00 04 */	stw r0, 4(r1)
/* 803A43F0 003A0FD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A43F4 003A0FD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A43F8 003A0FD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A43FC 003A0FDC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A4400 003A0FE0  7C 7D 1B 78 */	mr r29, r3
/* 803A4404 003A0FE4  80 63 00 54 */	lwz r3, 0x54(r3)
/* 803A4408 003A0FE8  28 03 00 00 */	cmplwi r3, 0
/* 803A440C 003A0FEC  40 82 00 0C */	bne lbl_803A4418
/* 803A4410 003A0FF0  38 60 FF FF */	li r3, -1
/* 803A4414 003A0FF4  48 00 00 74 */	b lbl_803A4488
lbl_803A4418:
/* 803A4418 003A0FF8  84 03 00 04 */	lwzu r0, 4(r3)
/* 803A441C 003A0FFC  7C 00 E8 40 */	cmplw r0, r29
/* 803A4420 003A1000  40 82 00 0C */	bne lbl_803A442C
/* 803A4424 003A1004  38 00 00 00 */	li r0, 0
/* 803A4428 003A1008  90 03 00 00 */	stw r0, 0(r3)
lbl_803A442C:
/* 803A442C 003A100C  80 9D 00 54 */	lwz r4, 0x54(r29)
/* 803A4430 003A1010  A0 64 00 32 */	lhz r3, 0x32(r4)
/* 803A4434 003A1014  38 03 FF FF */	addi r0, r3, -1
/* 803A4438 003A1018  54 1E 04 3F */	clrlwi. r30, r0, 0x10
/* 803A443C 003A101C  B0 04 00 32 */	sth r0, 0x32(r4)
/* 803A4440 003A1020  40 82 00 3C */	bne lbl_803A447C
/* 803A4444 003A1024  83 FD 00 54 */	lwz r31, 0x54(r29)
/* 803A4448 003A1028  81 9F 00 9C */	lwz r12, 0x9c(r31)
/* 803A444C 003A102C  28 0C 00 00 */	cmplwi r12, 0
/* 803A4450 003A1030  41 82 00 10 */	beq lbl_803A4460
/* 803A4454 003A1034  7D 88 03 A6 */	mtlr r12
/* 803A4458 003A1038  38 7F 00 00 */	addi r3, r31, 0
/* 803A445C 003A103C  4E 80 00 21 */	blrl 
lbl_803A4460:
/* 803A4460 003A1040  3C 60 80 4D */	lis r3, lbl_804D10B0@ha
/* 803A4464 003A1044  38 63 10 B0 */	addi r3, r3, lbl_804D10B0@l
/* 803A4468 003A1048  38 9F 00 00 */	addi r4, r31, 0
/* 803A446C 003A104C  4B FD 68 B5 */	bl HSD_ObjFree
/* 803A4470 003A1050  A0 6D C2 3E */	lhz r3, lbl_804D78DE@sda21(r13)
/* 803A4474 003A1054  38 03 FF FF */	addi r0, r3, -1
/* 803A4478 003A1058  B0 0D C2 3E */	sth r0, lbl_804D78DE@sda21(r13)
lbl_803A447C:
/* 803A447C 003A105C  38 00 00 00 */	li r0, 0
/* 803A4480 003A1060  90 1D 00 54 */	stw r0, 0x54(r29)
/* 803A4484 003A1064  7F C3 F3 78 */	mr r3, r30
lbl_803A4488:
/* 803A4488 003A1068  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A448C 003A106C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A4490 003A1070  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A4494 003A1074  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A4498 003A1078  38 21 00 20 */	addi r1, r1, 0x20
/* 803A449C 003A107C  7C 08 03 A6 */	mtlr r0
/* 803A44A0 003A1080  4E 80 00 20 */	blr 


.section .bss, "wa"

.global lbl_804D10B0
lbl_804D10B0:
	.skip 0x30


.section .sbss

.global lbl_804D7958
lbl_804D7958:
	.skip 0x8


.section .sdata2

.global lbl_804DEA68
lbl_804DEA68:
	.4byte 0x00000000
.global lbl_804DEA6C
lbl_804DEA6C:
	.4byte 0x3F800000
