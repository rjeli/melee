.include "macros.inc"

.set fobj_c_sdata2_start, lbl_804DE4F0 - 0x20
.set lbl_804DE4D0, fobj_c_sdata2_start
.set lbl_804DE4E0, fobj_c_sdata2_start + 0x10

.section .text  # 0x80005940 - 0x803B7240

.global HSD_FObjInterpretAnim
HSD_FObjInterpretAnim:
/* 8036B030 00367C10  7C 08 02 A6 */	mflr r0
/* 8036B034 00367C14  90 01 00 04 */	stw r0, 4(r1)
/* 8036B038 00367C18  94 21 FF 58 */	stwu r1, -0xa8(r1)
/* 8036B03C 00367C1C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8036B040 00367C20  DB C1 00 98 */	stfd f30, 0x98(r1)
/* 8036B044 00367C24  FF C0 08 90 */	fmr f30, f1
/* 8036B048 00367C28  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8036B04C 00367C2C  BF 41 00 78 */	stmw r26, 0x78(r1)
/* 8036B050 00367C30  7C 7F 1B 79 */	or. r31, r3, r3
/* 8036B054 00367C34  3C 60 80 40 */	lis r3, lbl_80406350@ha
/* 8036B058 00367C38  3B C3 63 50 */	addi r30, r3, lbl_80406350@l
/* 8036B05C 00367C3C  3B 84 00 00 */	addi r28, r4, 0
/* 8036B060 00367C40  3B 65 00 00 */	addi r27, r5, 0
/* 8036B064 00367C44  C3 A2 EA F0 */	lfs f29, lbl_804DE4D0@sda21(r2)
/* 8036B068 00367C48  41 82 00 10 */	beq lbl_8036B078
/* 8036B06C 00367C4C  7F E3 FB 78 */	mr r3, r31
/* 8036B070 00367C50  4B FF F9 F5 */	bl HSD_FObjGetState
/* 8036B074 00367C54  48 00 00 08 */	b lbl_8036B07C
lbl_8036B078:
/* 8036B078 00367C58  38 60 00 00 */	li r3, 0
lbl_8036B07C:
/* 8036B07C 00367C5C  28 03 00 00 */	cmplwi r3, 0
/* 8036B080 00367C60  41 82 06 2C */	beq lbl_8036B6AC
/* 8036B084 00367C64  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8036B088 00367C68  EC 00 F0 2A */	fadds f0, f0, f30
/* 8036B08C 00367C6C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8036B090 00367C70  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8036B094 00367C74  C8 02 EB 10 */	lfd f0, lbl_804DE4F0@sda21(r2)
/* 8036B098 00367C78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8036B09C 00367C7C  41 80 06 10 */	blt lbl_8036B6AC
/* 8036B0A0 00367C80  CB E2 EB 00 */	lfd f31, lbl_804DE4E0@sda21(r2)
/* 8036B0A4 00367C84  3F A0 43 30 */	lis r29, 0x4330
/* 8036B0A8 00367C88  C3 C2 EA F0 */	lfs f30, lbl_804DE4D0@sda21(r2)
lbl_8036B0AC:
/* 8036B0AC 00367C8C  2C 03 00 04 */	cmpwi r3, 4
/* 8036B0B0 00367C90  41 82 05 40 */	beq lbl_8036B5F0
/* 8036B0B4 00367C94  40 80 00 1C */	bge lbl_8036B0D0
/* 8036B0B8 00367C98  2C 03 00 00 */	cmpwi r3, 0
/* 8036B0BC 00367C9C  41 82 05 F0 */	beq lbl_8036B6AC
/* 8036B0C0 00367CA0  41 80 FF EC */	blt lbl_8036B0AC
/* 8036B0C4 00367CA4  2C 03 00 03 */	cmpwi r3, 3
/* 8036B0C8 00367CA8  40 80 04 5C */	bge lbl_8036B524
/* 8036B0CC 00367CAC  48 00 00 68 */	b lbl_8036B134
lbl_8036B0D0:
/* 8036B0D0 00367CB0  2C 03 00 06 */	cmpwi r3, 6
/* 8036B0D4 00367CB4  41 82 00 0C */	beq lbl_8036B0E0
/* 8036B0D8 00367CB8  40 80 FF D4 */	bge lbl_8036B0AC
/* 8036B0DC 00367CBC  48 00 05 B0 */	b lbl_8036B68C
lbl_8036B0E0:
/* 8036B0E0 00367CC0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8036B0E4 00367CC4  EC 00 E8 2A */	fadds f0, f0, f29
/* 8036B0E8 00367CC8  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8036B0EC 00367CCC  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B0F0 00367CD0  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8036B0F4 00367CD4  41 82 00 2C */	beq lbl_8036B120
/* 8036B0F8 00367CD8  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 8036B0FC 00367CDC  98 1F 00 12 */	stb r0, 0x12(r31)
/* 8036B100 00367CE0  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B104 00367CE4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8036B108 00367CE8  98 1F 00 10 */	stb r0, 0x10(r31)
/* 8036B10C 00367CEC  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B110 00367CF0  60 00 00 80 */	ori r0, r0, 0x80
/* 8036B114 00367CF4  98 1F 00 10 */	stb r0, 0x10(r31)
/* 8036B118 00367CF8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8036B11C 00367CFC  D0 1F 00 20 */	stfs f0, 0x20(r31)
lbl_8036B120:
/* 8036B120 00367D00  38 7F 00 00 */	addi r3, r31, 0
/* 8036B124 00367D04  38 9C 00 00 */	addi r4, r28, 0
/* 8036B128 00367D08  38 BB 00 00 */	addi r5, r27, 0
/* 8036B12C 00367D0C  4B FF FD 45 */	bl FObjUpdateAnim
/* 8036B130 00367D10  48 00 05 7C */	b lbl_8036B6AC
lbl_8036B134:
/* 8036B134 00367D14  80 9F 00 08 */	lwz r4, 8(r31)
/* 8036B138 00367D18  80 7F 00 04 */	lwz r3, 4(r31)
/* 8036B13C 00367D1C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8036B140 00367D20  7C 64 18 50 */	subf r3, r4, r3
/* 8036B144 00367D24  7C 03 00 40 */	cmplw r3, r0
/* 8036B148 00367D28  41 80 00 0C */	blt lbl_8036B154
/* 8036B14C 00367D2C  38 60 00 06 */	li r3, 6
/* 8036B150 00367D30  4B FF FF 5C */	b lbl_8036B0AC
lbl_8036B154:
/* 8036B154 00367D34  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 8036B158 00367D38  98 1F 00 12 */	stb r0, 0x12(r31)
/* 8036B15C 00367D3C  A0 1F 00 16 */	lhz r0, 0x16(r31)
/* 8036B160 00367D40  28 00 00 00 */	cmplwi r0, 0
/* 8036B164 00367D44  40 82 00 20 */	bne lbl_8036B184
/* 8036B168 00367D48  80 9F 00 04 */	lwz r4, 4(r31)
/* 8036B16C 00367D4C  38 7F 00 04 */	addi r3, r31, 4
/* 8036B170 00367D50  88 04 00 00 */	lbz r0, 0(r4)
/* 8036B174 00367D54  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8036B178 00367D58  98 1F 00 11 */	stb r0, 0x11(r31)
/* 8036B17C 00367D5C  4B FF FC 61 */	bl parsePackInfo
/* 8036B180 00367D60  B0 7F 00 16 */	sth r3, 0x16(r31)
lbl_8036B184:
/* 8036B184 00367D64  A0 7F 00 16 */	lhz r3, 0x16(r31)
/* 8036B188 00367D68  38 03 FF FF */	addi r0, r3, -1
/* 8036B18C 00367D6C  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 8036B190 00367D70  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 8036B194 00367D74  2C 00 00 04 */	cmpwi r0, 4
/* 8036B198 00367D78  41 82 02 00 */	beq lbl_8036B398
/* 8036B19C 00367D7C  40 80 00 1C */	bge lbl_8036B1B8
/* 8036B1A0 00367D80  2C 00 00 02 */	cmpwi r0, 2
/* 8036B1A4 00367D84  41 82 00 C8 */	beq lbl_8036B26C
/* 8036B1A8 00367D88  40 80 01 68 */	bge lbl_8036B310
/* 8036B1AC 00367D8C  2C 00 00 01 */	cmpwi r0, 1
/* 8036B1B0 00367D90  40 80 00 18 */	bge lbl_8036B1C8
/* 8036B1B4 00367D94  48 00 03 68 */	b lbl_8036B51C
lbl_8036B1B8:
/* 8036B1B8 00367D98  2C 00 00 06 */	cmpwi r0, 6
/* 8036B1BC 00367D9C  41 82 02 D8 */	beq lbl_8036B494
/* 8036B1C0 00367DA0  40 80 03 5C */	bge lbl_8036B51C
/* 8036B1C4 00367DA4  48 00 02 68 */	b lbl_8036B42C
lbl_8036B1C8:
/* 8036B1C8 00367DA8  28 1F 00 00 */	cmplwi r31, 0
/* 8036B1CC 00367DAC  40 82 00 0C */	bne lbl_8036B1D8
/* 8036B1D0 00367DB0  3B 40 00 00 */	li r26, 0
/* 8036B1D4 00367DB4  48 00 00 0C */	b lbl_8036B1E0
lbl_8036B1D8:
/* 8036B1D8 00367DB8  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B1DC 00367DBC  54 1A 07 3E */	clrlwi r26, r0, 0x1c
lbl_8036B1E0:
/* 8036B1E0 00367DC0  38 1A FF FF */	addi r0, r26, -1
/* 8036B1E4 00367DC4  28 00 00 01 */	cmplwi r0, 1
/* 8036B1E8 00367DC8  38 00 00 01 */	li r0, 1
/* 8036B1EC 00367DCC  40 81 00 08 */	ble lbl_8036B1F4
/* 8036B1F0 00367DD0  38 00 00 00 */	li r0, 0
lbl_8036B1F4:
/* 8036B1F4 00367DD4  2C 00 00 00 */	cmpwi r0, 0
/* 8036B1F8 00367DD8  40 82 00 14 */	bne lbl_8036B20C
/* 8036B1FC 00367DDC  38 BE 00 18 */	addi r5, r30, 0x18
/* 8036B200 00367DE0  38 6D A6 B8 */	addi r3, r13, lbl_804D5D58@sda21
/* 8036B204 00367DE4  38 80 01 7F */	li r4, 0x17f
/* 8036B208 00367DE8  48 01 D0 19 */	bl __assert
lbl_8036B20C:
/* 8036B20C 00367DEC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8036B210 00367DF0  38 7F 00 04 */	addi r3, r31, 4
/* 8036B214 00367DF4  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8036B218 00367DF8  88 9F 00 14 */	lbz r4, 0x14(r31)
/* 8036B21C 00367DFC  4B FF F9 F5 */	bl parseFloat
/* 8036B220 00367E00  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8036B224 00367E04  88 1F 00 12 */	lbz r0, 0x12(r31)
/* 8036B228 00367E08  28 00 00 05 */	cmplwi r0, 5
/* 8036B22C 00367E0C  41 82 00 10 */	beq lbl_8036B23C
/* 8036B230 00367E10  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8036B234 00367E14  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8036B238 00367E18  D3 DF 00 2C */	stfs f30, 0x2c(r31)
lbl_8036B23C:
/* 8036B23C 00367E1C  28 1A 00 01 */	cmplwi r26, 1
/* 8036B240 00367E20  40 82 00 0C */	bne lbl_8036B24C
/* 8036B244 00367E24  38 60 00 03 */	li r3, 3
/* 8036B248 00367E28  48 00 00 08 */	b lbl_8036B250
lbl_8036B24C:
/* 8036B24C 00367E2C  38 60 00 04 */	li r3, 4
lbl_8036B250:
/* 8036B250 00367E30  28 1F 00 00 */	cmplwi r31, 0
/* 8036B254 00367E34  41 82 FE 58 */	beq lbl_8036B0AC
/* 8036B258 00367E38  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B25C 00367E3C  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 8036B260 00367E40  50 60 07 3E */	rlwimi r0, r3, 0, 0x1c, 0x1f
/* 8036B264 00367E44  98 1F 00 10 */	stb r0, 0x10(r31)
/* 8036B268 00367E48  4B FF FE 44 */	b lbl_8036B0AC
lbl_8036B26C:
/* 8036B26C 00367E4C  28 1F 00 00 */	cmplwi r31, 0
/* 8036B270 00367E50  40 82 00 0C */	bne lbl_8036B27C
/* 8036B274 00367E54  3B 40 00 00 */	li r26, 0
/* 8036B278 00367E58  48 00 00 0C */	b lbl_8036B284
lbl_8036B27C:
/* 8036B27C 00367E5C  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B280 00367E60  54 1A 07 3E */	clrlwi r26, r0, 0x1c
lbl_8036B284:
/* 8036B284 00367E64  38 1A FF FF */	addi r0, r26, -1
/* 8036B288 00367E68  28 00 00 01 */	cmplwi r0, 1
/* 8036B28C 00367E6C  38 00 00 01 */	li r0, 1
/* 8036B290 00367E70  40 81 00 08 */	ble lbl_8036B298
/* 8036B294 00367E74  38 00 00 00 */	li r0, 0
lbl_8036B298:
/* 8036B298 00367E78  2C 00 00 00 */	cmpwi r0, 0
/* 8036B29C 00367E7C  40 82 00 14 */	bne lbl_8036B2B0
/* 8036B2A0 00367E80  38 BE 00 18 */	addi r5, r30, 0x18
/* 8036B2A4 00367E84  38 6D A6 B8 */	addi r3, r13, lbl_804D5D58@sda21
/* 8036B2A8 00367E88  38 80 01 93 */	li r4, 0x193
/* 8036B2AC 00367E8C  48 01 CF 75 */	bl __assert
lbl_8036B2B0:
/* 8036B2B0 00367E90  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8036B2B4 00367E94  38 7F 00 04 */	addi r3, r31, 4
/* 8036B2B8 00367E98  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8036B2BC 00367E9C  88 9F 00 14 */	lbz r4, 0x14(r31)
/* 8036B2C0 00367EA0  4B FF F9 51 */	bl parseFloat
/* 8036B2C4 00367EA4  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8036B2C8 00367EA8  88 1F 00 12 */	lbz r0, 0x12(r31)
/* 8036B2CC 00367EAC  28 00 00 05 */	cmplwi r0, 5
/* 8036B2D0 00367EB0  41 82 00 10 */	beq lbl_8036B2E0
/* 8036B2D4 00367EB4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8036B2D8 00367EB8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8036B2DC 00367EBC  D3 DF 00 2C */	stfs f30, 0x2c(r31)
lbl_8036B2E0:
/* 8036B2E0 00367EC0  28 1A 00 01 */	cmplwi r26, 1
/* 8036B2E4 00367EC4  40 82 00 0C */	bne lbl_8036B2F0
/* 8036B2E8 00367EC8  38 60 00 03 */	li r3, 3
/* 8036B2EC 00367ECC  48 00 00 08 */	b lbl_8036B2F4
lbl_8036B2F0:
/* 8036B2F0 00367ED0  38 60 00 04 */	li r3, 4
lbl_8036B2F4:
/* 8036B2F4 00367ED4  28 1F 00 00 */	cmplwi r31, 0
/* 8036B2F8 00367ED8  41 82 FD B4 */	beq lbl_8036B0AC
/* 8036B2FC 00367EDC  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B300 00367EE0  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 8036B304 00367EE4  50 60 07 3E */	rlwimi r0, r3, 0, 0x1c, 0x1f
/* 8036B308 00367EE8  98 1F 00 10 */	stb r0, 0x10(r31)
/* 8036B30C 00367EEC  4B FF FD A0 */	b lbl_8036B0AC
lbl_8036B310:
/* 8036B310 00367EF0  28 1F 00 00 */	cmplwi r31, 0
/* 8036B314 00367EF4  40 82 00 0C */	bne lbl_8036B320
/* 8036B318 00367EF8  3B 40 00 00 */	li r26, 0
/* 8036B31C 00367EFC  48 00 00 0C */	b lbl_8036B328
lbl_8036B320:
/* 8036B320 00367F00  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B324 00367F04  54 1A 07 3E */	clrlwi r26, r0, 0x1c
lbl_8036B328:
/* 8036B328 00367F08  38 1A FF FF */	addi r0, r26, -1
/* 8036B32C 00367F0C  28 00 00 01 */	cmplwi r0, 1
/* 8036B330 00367F10  38 00 00 01 */	li r0, 1
/* 8036B334 00367F14  40 81 00 08 */	ble lbl_8036B33C
/* 8036B338 00367F18  38 00 00 00 */	li r0, 0
lbl_8036B33C:
/* 8036B33C 00367F1C  2C 00 00 00 */	cmpwi r0, 0
/* 8036B340 00367F20  40 82 00 14 */	bne lbl_8036B354
/* 8036B344 00367F24  38 BE 00 18 */	addi r5, r30, 0x18
/* 8036B348 00367F28  38 6D A6 B8 */	addi r3, r13, lbl_804D5D58@sda21
/* 8036B34C 00367F2C  38 80 01 A7 */	li r4, 0x1a7
/* 8036B350 00367F30  48 01 CE D1 */	bl __assert
lbl_8036B354:
/* 8036B354 00367F34  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8036B358 00367F38  38 7F 00 04 */	addi r3, r31, 4
/* 8036B35C 00367F3C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8036B360 00367F40  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8036B364 00367F44  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8036B368 00367F48  88 9F 00 14 */	lbz r4, 0x14(r31)
/* 8036B36C 00367F4C  4B FF F8 A5 */	bl parseFloat
/* 8036B370 00367F50  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8036B374 00367F54  28 1A 00 01 */	cmplwi r26, 1
/* 8036B378 00367F58  D3 DF 00 2C */	stfs f30, 0x2c(r31)
/* 8036B37C 00367F5C  40 82 00 0C */	bne lbl_8036B388
/* 8036B380 00367F60  38 80 00 03 */	li r4, 3
/* 8036B384 00367F64  48 00 00 08 */	b lbl_8036B38C
lbl_8036B388:
/* 8036B388 00367F68  38 80 00 04 */	li r4, 4
lbl_8036B38C:
/* 8036B38C 00367F6C  7F E3 FB 78 */	mr r3, r31
/* 8036B390 00367F70  4B FF F6 B5 */	bl HSD_FObjSetState
/* 8036B394 00367F74  4B FF FD 18 */	b lbl_8036B0AC
lbl_8036B398:
/* 8036B398 00367F78  28 1F 00 00 */	cmplwi r31, 0
/* 8036B39C 00367F7C  40 82 00 0C */	bne lbl_8036B3A8
/* 8036B3A0 00367F80  3B 40 00 00 */	li r26, 0
/* 8036B3A4 00367F84  48 00 00 0C */	b lbl_8036B3B0
lbl_8036B3A8:
/* 8036B3A8 00367F88  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B3AC 00367F8C  54 1A 07 3E */	clrlwi r26, r0, 0x1c
lbl_8036B3B0:
/* 8036B3B0 00367F90  38 1A FF FF */	addi r0, r26, -1
/* 8036B3B4 00367F94  28 00 00 01 */	cmplwi r0, 1
/* 8036B3B8 00367F98  38 00 00 01 */	li r0, 1
/* 8036B3BC 00367F9C  40 81 00 08 */	ble lbl_8036B3C4
/* 8036B3C0 00367FA0  38 00 00 00 */	li r0, 0
lbl_8036B3C4:
/* 8036B3C4 00367FA4  2C 00 00 00 */	cmpwi r0, 0
/* 8036B3C8 00367FA8  40 82 00 14 */	bne lbl_8036B3DC
/* 8036B3CC 00367FAC  38 BE 00 18 */	addi r5, r30, 0x18
/* 8036B3D0 00367FB0  38 6D A6 B8 */	addi r3, r13, lbl_804D5D58@sda21
/* 8036B3D4 00367FB4  38 80 01 B9 */	li r4, 0x1b9
/* 8036B3D8 00367FB8  48 01 CE 49 */	bl __assert
lbl_8036B3DC:
/* 8036B3DC 00367FBC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8036B3E0 00367FC0  38 7F 00 04 */	addi r3, r31, 4
/* 8036B3E4 00367FC4  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8036B3E8 00367FC8  88 9F 00 14 */	lbz r4, 0x14(r31)
/* 8036B3EC 00367FCC  4B FF F8 25 */	bl parseFloat
/* 8036B3F0 00367FD0  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8036B3F4 00367FD4  38 7F 00 04 */	addi r3, r31, 4
/* 8036B3F8 00367FD8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8036B3FC 00367FDC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8036B400 00367FE0  88 9F 00 15 */	lbz r4, 0x15(r31)
/* 8036B404 00367FE4  4B FF F8 0D */	bl parseFloat
/* 8036B408 00367FE8  28 1A 00 01 */	cmplwi r26, 1
/* 8036B40C 00367FEC  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8036B410 00367FF0  40 82 00 0C */	bne lbl_8036B41C
/* 8036B414 00367FF4  38 80 00 03 */	li r4, 3
/* 8036B418 00367FF8  48 00 00 08 */	b lbl_8036B420
lbl_8036B41C:
/* 8036B41C 00367FFC  38 80 00 04 */	li r4, 4
lbl_8036B420:
/* 8036B420 00368000  7F E3 FB 78 */	mr r3, r31
/* 8036B424 00368004  4B FF F6 21 */	bl HSD_FObjSetState
/* 8036B428 00368008  4B FF FC 84 */	b lbl_8036B0AC
lbl_8036B42C:
/* 8036B42C 0036800C  28 1F 00 00 */	cmplwi r31, 0
/* 8036B430 00368010  40 82 00 0C */	bne lbl_8036B43C
/* 8036B434 00368014  38 60 00 00 */	li r3, 0
/* 8036B438 00368018  48 00 00 0C */	b lbl_8036B444
lbl_8036B43C:
/* 8036B43C 0036801C  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B440 00368020  54 03 07 3E */	clrlwi r3, r0, 0x1c
lbl_8036B444:
/* 8036B444 00368024  38 03 FF FF */	addi r0, r3, -1
/* 8036B448 00368028  28 00 00 01 */	cmplwi r0, 1
/* 8036B44C 0036802C  38 00 00 01 */	li r0, 1
/* 8036B450 00368030  40 81 00 08 */	ble lbl_8036B458
/* 8036B454 00368034  38 00 00 00 */	li r0, 0
lbl_8036B458:
/* 8036B458 00368038  2C 00 00 00 */	cmpwi r0, 0
/* 8036B45C 0036803C  40 82 00 14 */	bne lbl_8036B470
/* 8036B460 00368040  38 BE 00 18 */	addi r5, r30, 0x18
/* 8036B464 00368044  38 6D A6 B8 */	addi r3, r13, lbl_804D5D58@sda21
/* 8036B468 00368048  38 80 01 CC */	li r4, 0x1cc
/* 8036B46C 0036804C  48 01 CD B5 */	bl __assert
lbl_8036B470:
/* 8036B470 00368050  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8036B474 00368054  38 7F 00 04 */	addi r3, r31, 4
/* 8036B478 00368058  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8036B47C 0036805C  88 9F 00 15 */	lbz r4, 0x15(r31)
/* 8036B480 00368060  4B FF F7 91 */	bl parseFloat
/* 8036B484 00368064  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8036B488 00368068  7F E3 FB 78 */	mr r3, r31
/* 8036B48C 0036806C  4B FF F5 D9 */	bl HSD_FObjGetState
/* 8036B490 00368070  4B FF FC 1C */	b lbl_8036B0AC
lbl_8036B494:
/* 8036B494 00368074  28 1F 00 00 */	cmplwi r31, 0
/* 8036B498 00368078  40 82 00 0C */	bne lbl_8036B4A4
/* 8036B49C 0036807C  3B 40 00 00 */	li r26, 0
/* 8036B4A0 00368080  48 00 00 0C */	b lbl_8036B4AC
lbl_8036B4A4:
/* 8036B4A4 00368084  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B4A8 00368088  54 1A 07 3E */	clrlwi r26, r0, 0x1c
lbl_8036B4AC:
/* 8036B4AC 0036808C  38 1A FF FF */	addi r0, r26, -1
/* 8036B4B0 00368090  28 00 00 01 */	cmplwi r0, 1
/* 8036B4B4 00368094  38 00 00 01 */	li r0, 1
/* 8036B4B8 00368098  40 81 00 08 */	ble lbl_8036B4C0
/* 8036B4BC 0036809C  38 00 00 00 */	li r0, 0
lbl_8036B4C0:
/* 8036B4C0 003680A0  2C 00 00 00 */	cmpwi r0, 0
/* 8036B4C4 003680A4  40 82 00 14 */	bne lbl_8036B4D8
/* 8036B4C8 003680A8  38 BE 00 18 */	addi r5, r30, 0x18
/* 8036B4CC 003680AC  38 6D A6 B8 */	addi r3, r13, lbl_804D5D58@sda21
/* 8036B4D0 003680B0  38 80 01 E9 */	li r4, 0x1e9
/* 8036B4D4 003680B4  48 01 CD 4D */	bl __assert
lbl_8036B4D8:
/* 8036B4D8 003680B8  7F E3 FB 78 */	mr r3, r31
/* 8036B4DC 003680BC  4B FF F9 5D */	bl FObjLaunchKeyData
/* 8036B4E0 003680C0  38 7F 00 04 */	addi r3, r31, 4
/* 8036B4E4 003680C4  88 9F 00 14 */	lbz r4, 0x14(r31)
/* 8036B4E8 003680C8  4B FF F7 29 */	bl parseFloat
/* 8036B4EC 003680CC  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8036B4F0 003680D0  28 1A 00 01 */	cmplwi r26, 1
/* 8036B4F4 003680D4  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B4F8 003680D8  60 00 00 40 */	ori r0, r0, 0x40
/* 8036B4FC 003680DC  98 1F 00 10 */	stb r0, 0x10(r31)
/* 8036B500 003680E0  40 82 00 0C */	bne lbl_8036B50C
/* 8036B504 003680E4  38 80 00 03 */	li r4, 3
/* 8036B508 003680E8  48 00 00 08 */	b lbl_8036B510
lbl_8036B50C:
/* 8036B50C 003680EC  38 80 00 04 */	li r4, 4
lbl_8036B510:
/* 8036B510 003680F0  7F E3 FB 78 */	mr r3, r31
/* 8036B514 003680F4  4B FF F5 31 */	bl HSD_FObjSetState
/* 8036B518 003680F8  4B FF FB 94 */	b lbl_8036B0AC
lbl_8036B51C:
/* 8036B51C 003680FC  38 60 00 00 */	li r3, 0
/* 8036B520 00368100  4B FF FB 8C */	b lbl_8036B0AC
lbl_8036B524:
/* 8036B524 00368104  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B528 00368108  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8036B52C 0036810C  41 82 00 14 */	beq lbl_8036B540
/* 8036B530 00368110  38 7F 00 00 */	addi r3, r31, 0
/* 8036B534 00368114  38 9C 00 00 */	addi r4, r28, 0
/* 8036B538 00368118  38 BB 00 00 */	addi r5, r27, 0
/* 8036B53C 0036811C  4B FF F9 35 */	bl FObjUpdateAnim
lbl_8036B540:
/* 8036B540 00368120  28 1F 00 00 */	cmplwi r31, 0
/* 8036B544 00368124  40 82 00 0C */	bne lbl_8036B550
/* 8036B548 00368128  38 00 00 00 */	li r0, 0
/* 8036B54C 0036812C  48 00 00 0C */	b lbl_8036B558
lbl_8036B550:
/* 8036B550 00368130  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B554 00368134  54 00 07 3E */	clrlwi r0, r0, 0x1c
lbl_8036B558:
/* 8036B558 00368138  28 00 00 03 */	cmplwi r0, 3
/* 8036B55C 0036813C  41 82 00 14 */	beq lbl_8036B570
/* 8036B560 00368140  38 BE 00 00 */	addi r5, r30, 0
/* 8036B564 00368144  38 6D A6 B8 */	addi r3, r13, lbl_804D5D58@sda21
/* 8036B568 00368148  38 80 01 6C */	li r4, 0x16c
/* 8036B56C 0036814C  48 01 CC B5 */	bl __assert
lbl_8036B570:
/* 8036B570 00368150  80 9F 00 08 */	lwz r4, 8(r31)
/* 8036B574 00368154  80 7F 00 04 */	lwz r3, 4(r31)
/* 8036B578 00368158  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8036B57C 0036815C  7C 64 18 50 */	subf r3, r4, r3
/* 8036B580 00368160  7C 03 00 40 */	cmplw r3, r0
/* 8036B584 00368164  41 80 00 0C */	blt lbl_8036B590
/* 8036B588 00368168  38 60 00 06 */	li r3, 6
/* 8036B58C 0036816C  4B FF FB 20 */	b lbl_8036B0AC
lbl_8036B590:
/* 8036B590 00368170  38 A0 00 00 */	li r5, 0
/* 8036B594 00368174  38 85 00 00 */	addi r4, r5, 0
lbl_8036B598:
/* 8036B598 00368178  80 7F 00 04 */	lwz r3, 4(r31)
/* 8036B59C 0036817C  38 03 00 01 */	addi r0, r3, 1
/* 8036B5A0 00368180  90 1F 00 04 */	stw r0, 4(r31)
/* 8036B5A4 00368184  88 63 00 00 */	lbz r3, 0(r3)
/* 8036B5A8 00368188  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8036B5AC 0036818C  54 63 06 7E */	clrlwi r3, r3, 0x19
/* 8036B5B0 00368190  7C 63 20 30 */	slw r3, r3, r4
/* 8036B5B4 00368194  7C A5 1B 78 */	or r5, r5, r3
/* 8036B5B8 00368198  38 84 00 07 */	addi r4, r4, 7
/* 8036B5BC 0036819C  40 82 FF DC */	bne lbl_8036B598
/* 8036B5C0 003681A0  B0 BF 00 1A */	sth r5, 0x1a(r31)
/* 8036B5C4 003681A4  28 1F 00 00 */	cmplwi r31, 0
/* 8036B5C8 003681A8  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B5CC 003681AC  60 00 00 20 */	ori r0, r0, 0x20
/* 8036B5D0 003681B0  98 1F 00 10 */	stb r0, 0x10(r31)
/* 8036B5D4 003681B4  41 82 00 14 */	beq lbl_8036B5E8
/* 8036B5D8 003681B8  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B5DC 003681BC  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 8036B5E0 003681C0  60 00 00 02 */	ori r0, r0, 2
/* 8036B5E4 003681C4  98 1F 00 10 */	stb r0, 0x10(r31)
lbl_8036B5E8:
/* 8036B5E8 003681C8  38 60 00 02 */	li r3, 2
/* 8036B5EC 003681CC  4B FF FA C0 */	b lbl_8036B0AC
lbl_8036B5F0:
/* 8036B5F0 003681D0  A0 1F 00 1A */	lhz r0, 0x1a(r31)
/* 8036B5F4 003681D4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8036B5F8 003681D8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8036B5FC 003681DC  93 A1 00 70 */	stw r29, 0x70(r1)
/* 8036B600 003681E0  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8036B604 003681E4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8036B608 003681E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8036B60C 003681EC  4C 40 13 82 */	cror 2, 0, 2
/* 8036B610 003681F0  40 82 00 4C */	bne lbl_8036B65C
/* 8036B614 003681F4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8036B618 003681F8  28 1F 00 00 */	cmplwi r31, 0
/* 8036B61C 003681FC  38 60 00 03 */	li r3, 3
/* 8036B620 00368200  93 A1 00 68 */	stw r29, 0x68(r1)
/* 8036B624 00368204  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8036B628 00368208  90 01 00 74 */	stw r0, 0x74(r1)
/* 8036B62C 0036820C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8036B630 00368210  93 A1 00 70 */	stw r29, 0x70(r1)
/* 8036B634 00368214  EC 01 00 28 */	fsubs f0, f1, f0
/* 8036B638 00368218  C8 21 00 70 */	lfd f1, 0x70(r1)
/* 8036B63C 0036821C  EF A1 F8 28 */	fsubs f29, f1, f31
/* 8036B640 00368220  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8036B644 00368224  41 82 FA 68 */	beq lbl_8036B0AC
/* 8036B648 00368228  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B64C 0036822C  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 8036B650 00368230  50 60 07 3E */	rlwimi r0, r3, 0, 0x1c, 0x1f
/* 8036B654 00368234  98 1F 00 10 */	stb r0, 0x10(r31)
/* 8036B658 00368238  4B FF FA 54 */	b lbl_8036B0AC
lbl_8036B65C:
/* 8036B65C 0036823C  38 7F 00 00 */	addi r3, r31, 0
/* 8036B660 00368240  38 9C 00 00 */	addi r4, r28, 0
/* 8036B664 00368244  38 BB 00 00 */	addi r5, r27, 0
/* 8036B668 00368248  4B FF F8 09 */	bl FObjUpdateAnim
/* 8036B66C 0036824C  28 1F 00 00 */	cmplwi r31, 0
/* 8036B670 00368250  38 60 00 05 */	li r3, 5
/* 8036B674 00368254  41 82 00 38 */	beq lbl_8036B6AC
/* 8036B678 00368258  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B67C 0036825C  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 8036B680 00368260  50 60 07 3E */	rlwimi r0, r3, 0, 0x1c, 0x1f
/* 8036B684 00368264  98 1F 00 10 */	stb r0, 0x10(r31)
/* 8036B688 00368268  48 00 00 24 */	b lbl_8036B6AC
lbl_8036B68C:
/* 8036B68C 0036826C  28 1F 00 00 */	cmplwi r31, 0
/* 8036B690 00368270  38 60 00 04 */	li r3, 4
/* 8036B694 00368274  41 82 FA 18 */	beq lbl_8036B0AC
/* 8036B698 00368278  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8036B69C 0036827C  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 8036B6A0 00368280  50 60 07 3E */	rlwimi r0, r3, 0, 0x1c, 0x1f
/* 8036B6A4 00368284  98 1F 00 10 */	stb r0, 0x10(r31)
/* 8036B6A8 00368288  4B FF FA 04 */	b lbl_8036B0AC
lbl_8036B6AC:
/* 8036B6AC 0036828C  BB 41 00 78 */	lmw r26, 0x78(r1)
/* 8036B6B0 00368290  80 01 00 AC */	lwz r0, 0xac(r1)
/* 8036B6B4 00368294  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8036B6B8 00368298  CB C1 00 98 */	lfd f30, 0x98(r1)
/* 8036B6BC 0036829C  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8036B6C0 003682A0  38 21 00 A8 */	addi r1, r1, 0xa8
/* 8036B6C4 003682A4  7C 08 03 A6 */	mtlr r0
/* 8036B6C8 003682A8  4E 80 00 20 */	blr

.global HSD_FObjInterpretAnimAll
HSD_FObjInterpretAnimAll:
/* 8036B6CC 003682AC  7C 08 02 A6 */	mflr r0
/* 8036B6D0 003682B0  90 01 00 04 */	stw r0, 4(r1)
/* 8036B6D4 003682B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8036B6D8 003682B8  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8036B6DC 003682BC  FF E0 08 90 */	fmr f31, f1
/* 8036B6E0 003682C0  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8036B6E4 003682C4  3B E3 00 00 */	addi r31, r3, 0
/* 8036B6E8 003682C8  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8036B6EC 003682CC  3B C5 00 00 */	addi r30, r5, 0
/* 8036B6F0 003682D0  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8036B6F4 003682D4  3B A4 00 00 */	addi r29, r4, 0
/* 8036B6F8 003682D8  48 00 00 1C */	b lbl_8036B714
lbl_8036B6FC:
/* 8036B6FC 003682DC  FC 20 F8 90 */	fmr f1, f31
/* 8036B700 003682E0  38 7F 00 00 */	addi r3, r31, 0
/* 8036B704 003682E4  38 9D 00 00 */	addi r4, r29, 0
/* 8036B708 003682E8  38 BE 00 00 */	addi r5, r30, 0
/* 8036B70C 003682EC  4B FF F9 25 */	bl HSD_FObjInterpretAnim
/* 8036B710 003682F0  83 FF 00 00 */	lwz r31, 0(r31)
lbl_8036B714:
/* 8036B714 003682F4  28 1F 00 00 */	cmplwi r31, 0
/* 8036B718 003682F8  40 82 FF E4 */	bne lbl_8036B6FC
/* 8036B71C 003682FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8036B720 00368300  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8036B724 00368304  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8036B728 00368308  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8036B72C 0036830C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8036B730 00368310  38 21 00 30 */	addi r1, r1, 0x30
/* 8036B734 00368314  7C 08 03 A6 */	mtlr r0
/* 8036B738 00368318  4E 80 00 20 */	blr

.global HSD_FObjLoadDesc
HSD_FObjLoadDesc:
/* 8036B73C 0036831C  7C 08 02 A6 */	mflr r0
/* 8036B740 00368320  90 01 00 04 */	stw r0, 4(r1)
/* 8036B744 00368324  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8036B748 00368328  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8036B74C 0036832C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8036B750 00368330  7C 7E 1B 79 */	or. r30, r3, r3
/* 8036B754 00368334  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8036B758 00368338  93 81 00 18 */	stw r28, 0x18(r1)
/* 8036B75C 0036833C  41 82 00 C8 */	beq lbl_8036B824
/* 8036B760 00368340  48 00 00 E9 */	bl HSD_FObjAlloc
/* 8036B764 00368344  83 9E 00 00 */	lwz r28, 0(r30)
/* 8036B768 00368348  3B E3 00 00 */	addi r31, r3, 0
/* 8036B76C 0036834C  28 1C 00 00 */	cmplwi r28, 0
/* 8036B770 00368350  41 82 00 60 */	beq lbl_8036B7D0
/* 8036B774 00368354  48 00 00 D5 */	bl HSD_FObjAlloc
/* 8036B778 00368358  7C 7D 1B 78 */	mr r29, r3
/* 8036B77C 0036835C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8036B780 00368360  4B FF FF BD */	bl HSD_FObjLoadDesc
/* 8036B784 00368364  90 7D 00 00 */	stw r3, 0(r29)
/* 8036B788 00368368  38 00 00 00 */	li r0, 0
/* 8036B78C 0036836C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8036B790 00368370  FC 00 00 1E */	fctiwz f0, f0
/* 8036B794 00368374  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8036B798 00368378  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8036B79C 0036837C  B0 7D 00 18 */	sth r3, 0x18(r29)
/* 8036B7A0 00368380  88 7C 00 0C */	lbz r3, 0xc(r28)
/* 8036B7A4 00368384  98 7D 00 13 */	stb r3, 0x13(r29)
/* 8036B7A8 00368388  88 7C 00 0D */	lbz r3, 0xd(r28)
/* 8036B7AC 0036838C  98 7D 00 14 */	stb r3, 0x14(r29)
/* 8036B7B0 00368390  88 7C 00 0E */	lbz r3, 0xe(r28)
/* 8036B7B4 00368394  98 7D 00 15 */	stb r3, 0x15(r29)
/* 8036B7B8 00368398  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8036B7BC 0036839C  90 7D 00 08 */	stw r3, 8(r29)
/* 8036B7C0 003683A0  80 7C 00 04 */	lwz r3, 4(r28)
/* 8036B7C4 003683A4  90 7D 00 0C */	stw r3, 0xc(r29)
/* 8036B7C8 003683A8  98 1D 00 10 */	stb r0, 0x10(r29)
/* 8036B7CC 003683AC  48 00 00 08 */	b lbl_8036B7D4
lbl_8036B7D0:
/* 8036B7D0 003683B0  3B A0 00 00 */	li r29, 0
lbl_8036B7D4:
/* 8036B7D4 003683B4  93 BF 00 00 */	stw r29, 0(r31)
/* 8036B7D8 003683B8  38 00 00 00 */	li r0, 0
/* 8036B7DC 003683BC  38 7F 00 00 */	addi r3, r31, 0
/* 8036B7E0 003683C0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8036B7E4 003683C4  FC 00 00 1E */	fctiwz f0, f0
/* 8036B7E8 003683C8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8036B7EC 003683CC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8036B7F0 003683D0  B0 9F 00 18 */	sth r4, 0x18(r31)
/* 8036B7F4 003683D4  88 9E 00 0C */	lbz r4, 0xc(r30)
/* 8036B7F8 003683D8  98 9F 00 13 */	stb r4, 0x13(r31)
/* 8036B7FC 003683DC  88 9E 00 0D */	lbz r4, 0xd(r30)
/* 8036B800 003683E0  98 9F 00 14 */	stb r4, 0x14(r31)
/* 8036B804 003683E4  88 9E 00 0E */	lbz r4, 0xe(r30)
/* 8036B808 003683E8  98 9F 00 15 */	stb r4, 0x15(r31)
/* 8036B80C 003683EC  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8036B810 003683F0  90 9F 00 08 */	stw r4, 8(r31)
/* 8036B814 003683F4  80 9E 00 04 */	lwz r4, 4(r30)
/* 8036B818 003683F8  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8036B81C 003683FC  98 1F 00 10 */	stb r0, 0x10(r31)
/* 8036B820 00368400  48 00 00 08 */	b lbl_8036B828
lbl_8036B824:
/* 8036B824 00368404  38 60 00 00 */	li r3, 0
lbl_8036B828:
/* 8036B828 00368408  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8036B82C 0036840C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8036B830 00368410  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8036B834 00368414  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8036B838 00368418  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8036B83C 0036841C  38 21 00 28 */	addi r1, r1, 0x28
/* 8036B840 00368420  7C 08 03 A6 */	mtlr r0
/* 8036B844 00368424  4E 80 00 20 */	blr

.global HSD_FObjAlloc
HSD_FObjAlloc:
/* 8036B848 00368428  7C 08 02 A6 */	mflr r0
/* 8036B84C 0036842C  3C 60 80 4C */	lis r3, fobj_alloc_data@ha
/* 8036B850 00368430  90 01 00 04 */	stw r0, 4(r1)
/* 8036B854 00368434  38 63 08 D8 */	addi r3, r3, fobj_alloc_data@l
/* 8036B858 00368438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036B85C 0036843C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036B860 00368440  48 00 F3 69 */	bl HSD_ObjAlloc
/* 8036B864 00368444  7C 7F 1B 79 */	or. r31, r3, r3
/* 8036B868 00368448  40 82 00 14 */	bne lbl_8036B87C
/* 8036B86C 0036844C  38 6D A6 B8 */	addi r3, r13, lbl_804D5D58@sda21
/* 8036B870 00368450  38 80 02 F3 */	li r4, 0x2f3
/* 8036B874 00368454  38 AD A6 C0 */	addi r5, r13, lbl_804D5D60@sda21
/* 8036B878 00368458  48 01 C9 A9 */	bl __assert
lbl_8036B87C:
/* 8036B87C 0036845C  38 7F 00 00 */	addi r3, r31, 0
/* 8036B880 00368460  38 80 00 00 */	li r4, 0
/* 8036B884 00368464  38 A0 00 30 */	li r5, 0x30
/* 8036B888 00368468  4B C9 78 79 */	bl memset
/* 8036B88C 0036846C  7F E3 FB 78 */	mr r3, r31
/* 8036B890 00368470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036B894 00368474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036B898 00368478  38 21 00 10 */	addi r1, r1, 0x10
/* 8036B89C 0036847C  7C 08 03 A6 */	mtlr r0
/* 8036B8A0 00368480  4E 80 00 20 */	blr

.global HSD_FObjFree
HSD_FObjFree:
/* 8036B8A4 00368484  7C 08 02 A6 */	mflr r0
/* 8036B8A8 00368488  3C A0 80 4C */	lis r5, fobj_alloc_data@ha
/* 8036B8AC 0036848C  90 01 00 04 */	stw r0, 4(r1)
/* 8036B8B0 00368490  38 83 00 00 */	addi r4, r3, 0
/* 8036B8B4 00368494  38 65 08 D8 */	addi r3, r5, fobj_alloc_data@l
/* 8036B8B8 00368498  94 21 FF F8 */	stwu r1, -8(r1)
/* 8036B8BC 0036849C  48 00 F4 65 */	bl HSD_ObjFree
/* 8036B8C0 003684A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036B8C4 003684A4  38 21 00 08 */	addi r1, r1, 8
/* 8036B8C8 003684A8  7C 08 03 A6 */	mtlr r0
/* 8036B8CC 003684AC  4E 80 00 20 */	blr


.section .data
    .balign 8
.global lbl_80406350
lbl_80406350:
    .asciz "st == FOBJ_LOAD_WAIT"
    .balign 4
    .asciz "st == FOBJ_LOAD_DATA0 || st == FOBJ_LOAD_DATA"
    .balign 4


.section .sdata
    .balign 8
.global lbl_804D5D58
lbl_804D5D58:
    .asciz "fobj.c"
    .balign 4
.global lbl_804D5D60
lbl_804D5D60:
    .asciz "new"
    .balign 4


.section .sdata2
    .balign 8
.global lbl_804DE4F0
lbl_804DE4F0:
    .4byte 0x00000000
    .4byte 0x00000000
