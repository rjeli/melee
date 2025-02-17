.include "macros.inc"

.section .text

.global it_802D3260
it_802D3260:
/* 802D3260 002CFE40  7C 08 02 A6 */	mflr r0
/* 802D3264 002CFE44  90 01 00 04 */	stw r0, 4(r1)
/* 802D3268 002CFE48  38 00 00 00 */	li r0, 0
/* 802D326C 002CFE4C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D3270 002CFE50  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D3274 002CFE54  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D3278 002CFE58  7C 7E 1B 78 */	mr r30, r3
/* 802D327C 002CFE5C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D3280 002CFE60  C0 02 DA C8 */	lfs f0, it_804DD4A8@sda21(r2)
/* 802D3284 002CFE64  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802D3288 002CFE68  80 84 00 04 */	lwz r4, 4(r4)
/* 802D328C 002CFE6C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 802D3290 002CFE70  90 1F 0D B4 */	stw r0, 0xdb4(r31)
/* 802D3294 002CFE74  90 1F 0D B0 */	stw r0, 0xdb0(r31)
/* 802D3298 002CFE78  90 1F 0D AC */	stw r0, 0xdac(r31)
/* 802D329C 002CFE7C  C0 24 00 00 */	lfs f1, 0(r4)
/* 802D32A0 002CFE80  4B FA 6A 3D */	bl it_80279CDC
/* 802D32A4 002CFE84  7F C3 F3 78 */	mr r3, r30
/* 802D32A8 002CFE88  48 00 02 E9 */	bl it_802D3590
/* 802D32AC 002CFE8C  38 7F 00 00 */	addi r3, r31, 0
/* 802D32B0 002CFE90  38 80 27 2A */	li r4, 0x272a
/* 802D32B4 002CFE94  38 A0 00 7F */	li r5, 0x7f
/* 802D32B8 002CFE98  38 C0 00 40 */	li r6, 0x40
/* 802D32BC 002CFE9C  4B F9 7B C9 */	bl Item_8026AE84
/* 802D32C0 002CFEA0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D32C4 002CFEA4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D32C8 002CFEA8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D32CC 002CFEAC  38 21 00 18 */	addi r1, r1, 0x18
/* 802D32D0 002CFEB0  7C 08 03 A6 */	mtlr r0
/* 802D32D4 002CFEB4  4E 80 00 20 */	blr

.global it_802D32D8
it_802D32D8:
/* 802D32D8 002CFEB8  4E 80 00 20 */	blr

.global it_802D32DC
it_802D32DC:
/* 802D32DC 002CFEBC  7C 08 02 A6 */	mflr r0
/* 802D32E0 002CFEC0  90 01 00 04 */	stw r0, 4(r1)
/* 802D32E4 002CFEC4  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D32E8 002CFEC8  4B F9 85 AD */	bl it_8026B894
/* 802D32EC 002CFECC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D32F0 002CFED0  38 21 00 08 */	addi r1, r1, 8
/* 802D32F4 002CFED4  7C 08 03 A6 */	mtlr r0
/* 802D32F8 002CFED8  4E 80 00 20 */	blr

.global it_802D32FC
it_802D32FC:
/* 802D32FC 002CFEDC  7C 08 02 A6 */	mflr r0
/* 802D3300 002CFEE0  90 01 00 04 */	stw r0, 4(r1)
/* 802D3304 002CFEE4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D3308 002CFEE8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D330C 002CFEEC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D3310 002CFEF0  7C 7E 1B 78 */	mr r30, r3
/* 802D3314 002CFEF4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D3318 002CFEF8  4B F9 F9 55 */	bl it_80272C6C
/* 802D331C 002CFEFC  2C 03 00 00 */	cmpwi r3, 0
/* 802D3320 002CFF00  40 82 00 34 */	bne .L_802D3354
/* 802D3324 002CFF04  80 7F 0E 34 */	lwz r3, 0xe34(r31)
/* 802D3328 002CFF08  38 03 FF FF */	addi r0, r3, -1
/* 802D332C 002CFF0C  90 1F 0E 34 */	stw r0, 0xe34(r31)
/* 802D3330 002CFF10  80 1F 0E 34 */	lwz r0, 0xe34(r31)
/* 802D3334 002CFF14  2C 00 00 00 */	cmpwi r0, 0
/* 802D3338 002CFF18  41 81 00 10 */	bgt .L_802D3348
/* 802D333C 002CFF1C  7F C3 F3 78 */	mr r3, r30
/* 802D3340 002CFF20  48 00 00 B9 */	bl it_802D33F8
/* 802D3344 002CFF24  48 00 00 10 */	b .L_802D3354
.L_802D3348:
/* 802D3348 002CFF28  7F C3 F3 78 */	mr r3, r30
/* 802D334C 002CFF2C  80 9F 00 D0 */	lwz r4, 0xd0(r31)
/* 802D3350 002CFF30  4B F9 59 E5 */	bl Item_80268D34
.L_802D3354:
/* 802D3354 002CFF34  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D3358 002CFF38  38 60 00 00 */	li r3, 0
/* 802D335C 002CFF3C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D3360 002CFF40  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D3364 002CFF44  38 21 00 18 */	addi r1, r1, 0x18
/* 802D3368 002CFF48  7C 08 03 A6 */	mtlr r0
/* 802D336C 002CFF4C  4E 80 00 20 */	blr

.global it_802D3370
it_802D3370:
/* 802D3370 002CFF50  7C 08 02 A6 */	mflr r0
/* 802D3374 002CFF54  90 01 00 04 */	stw r0, 4(r1)
/* 802D3378 002CFF58  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D337C 002CFF5C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D3380 002CFF60  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 802D3384 002CFF64  2C 00 00 01 */	cmpwi r0, 1
/* 802D3388 002CFF68  40 82 00 14 */	bne .L_802D339C
/* 802D338C 002CFF6C  80 84 00 CC */	lwz r4, 0xcc(r4)
/* 802D3390 002CFF70  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802D3394 002CFF74  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802D3398 002CFF78  4B F9 F4 C9 */	bl it_80272860
.L_802D339C:
/* 802D339C 002CFF7C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D33A0 002CFF80  38 21 00 08 */	addi r1, r1, 8
/* 802D33A4 002CFF84  7C 08 03 A6 */	mtlr r0
/* 802D33A8 002CFF88  4E 80 00 20 */	blr

.global it_802D33AC
it_802D33AC:
/* 802D33AC 002CFF8C  7C 08 02 A6 */	mflr r0
/* 802D33B0 002CFF90  90 01 00 04 */	stw r0, 4(r1)
/* 802D33B4 002CFF94  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D33B8 002CFF98  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D33BC 002CFF9C  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 802D33C0 002CFFA0  2C 00 00 01 */	cmpwi r0, 1
/* 802D33C4 002CFFA4  40 82 00 14 */	bne .L_802D33D8
/* 802D33C8 002CFFA8  3C 80 80 2D */	lis r4, it_802D32D8@ha
/* 802D33CC 002CFFAC  38 84 32 D8 */	addi r4, r4, it_802D32D8@l
/* 802D33D0 002CFFB0  4B F9 AD 8D */	bl it_8026E15C
/* 802D33D4 002CFFB4  48 00 00 10 */	b .L_802D33E4
.L_802D33D8:
/* 802D33D8 002CFFB8  3C 80 80 2D */	lis r4, it_802D32D8@ha
/* 802D33DC 002CFFBC  38 84 32 D8 */	addi r4, r4, it_802D32D8@l
/* 802D33E0 002CFFC0  4B F9 A2 4D */	bl it_8026D62C
.L_802D33E4:
/* 802D33E4 002CFFC4  38 60 00 00 */	li r3, 0
/* 802D33E8 002CFFC8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D33EC 002CFFCC  38 21 00 08 */	addi r1, r1, 8
/* 802D33F0 002CFFD0  7C 08 03 A6 */	mtlr r0
/* 802D33F4 002CFFD4  4E 80 00 20 */	blr

.global it_802D33F8
it_802D33F8:
/* 802D33F8 002CFFD8  7C 08 02 A6 */	mflr r0
/* 802D33FC 002CFFDC  90 01 00 04 */	stw r0, 4(r1)
/* 802D3400 002CFFE0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 802D3404 002CFFE4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 802D3408 002CFFE8  93 C1 00 20 */	stw r30, 0x20(r1)
/* 802D340C 002CFFEC  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 802D3410 002CFFF0  7C 7D 1B 78 */	mr r29, r3
/* 802D3414 002CFFF4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D3418 002CFFF8  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 802D341C 002CFFFC  83 C3 00 04 */	lwz r30, 4(r3)
/* 802D3420 002D0000  80 7E 00 08 */	lwz r3, 8(r30)
/* 802D3424 002D0004  48 0A D1 5D */	bl HSD_Randi
/* 802D3428 002D0008  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802D342C 002D000C  7C 03 20 00 */	cmpw r3, r4
/* 802D3430 002D0010  40 80 00 0C */	bge .L_802D343C
/* 802D3434 002D0014  38 80 00 02 */	li r4, 2
/* 802D3438 002D0018  48 00 00 38 */	b .L_802D3470
.L_802D343C:
/* 802D343C 002D001C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 802D3440 002D0020  7C 84 02 14 */	add r4, r4, r0
/* 802D3444 002D0024  7C 03 20 00 */	cmpw r3, r4
/* 802D3448 002D0028  40 80 00 0C */	bge .L_802D3454
/* 802D344C 002D002C  38 80 00 03 */	li r4, 3
/* 802D3450 002D0030  48 00 00 20 */	b .L_802D3470
.L_802D3454:
/* 802D3454 002D0034  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802D3458 002D0038  7C 00 22 14 */	add r0, r0, r4
/* 802D345C 002D003C  7C 03 00 00 */	cmpw r3, r0
/* 802D3460 002D0040  40 80 00 0C */	bge .L_802D346C
/* 802D3464 002D0044  38 80 00 04 */	li r4, 4
/* 802D3468 002D0048  48 00 00 08 */	b .L_802D3470
.L_802D346C:
/* 802D346C 002D004C  38 80 00 05 */	li r4, 5
.L_802D3470:
/* 802D3470 002D0050  38 7D 00 00 */	addi r3, r29, 0
/* 802D3474 002D0054  38 A0 00 02 */	li r5, 2
/* 802D3478 002D0058  4B F9 59 E5 */	bl Item_80268E5C
/* 802D347C 002D005C  38 00 00 00 */	li r0, 0
/* 802D3480 002D0060  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D3484 002D0064  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D3488 002D0068  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802D348C 002D006C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 802D3490 002D0070  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 802D3494 002D0074  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 802D3498 002D0078  38 21 00 28 */	addi r1, r1, 0x28
/* 802D349C 002D007C  7C 08 03 A6 */	mtlr r0
/* 802D34A0 002D0080  4E 80 00 20 */	blr

.global it_802D34A4
it_802D34A4:
/* 802D34A4 002D0084  7C 08 02 A6 */	mflr r0
/* 802D34A8 002D0088  90 01 00 04 */	stw r0, 4(r1)
/* 802D34AC 002D008C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D34B0 002D0090  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D34B4 002D0094  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D34B8 002D0098  7C 7E 1B 78 */	mr r30, r3
/* 802D34BC 002D009C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D34C0 002D00A0  4B F9 F7 AD */	bl it_80272C6C
/* 802D34C4 002D00A4  2C 03 00 00 */	cmpwi r3, 0
/* 802D34C8 002D00A8  40 82 00 10 */	bne .L_802D34D8
/* 802D34CC 002D00AC  7F C3 F3 78 */	mr r3, r30
/* 802D34D0 002D00B0  80 9F 00 D0 */	lwz r4, 0xd0(r31)
/* 802D34D4 002D00B4  4B F9 58 61 */	bl Item_80268D34
.L_802D34D8:
/* 802D34D8 002D00B8  80 1F 0D AC */	lwz r0, 0xdac(r31)
/* 802D34DC 002D00BC  28 00 00 00 */	cmplwi r0, 0
/* 802D34E0 002D00C0  41 82 00 0C */	beq .L_802D34EC
/* 802D34E4 002D00C4  38 60 00 01 */	li r3, 1
/* 802D34E8 002D00C8  48 00 00 08 */	b .L_802D34F0
.L_802D34EC:
/* 802D34EC 002D00CC  38 60 00 00 */	li r3, 0
.L_802D34F0:
/* 802D34F0 002D00D0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D34F4 002D00D4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D34F8 002D00D8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D34FC 002D00DC  38 21 00 18 */	addi r1, r1, 0x18
/* 802D3500 002D00E0  7C 08 03 A6 */	mtlr r0
/* 802D3504 002D00E4  4E 80 00 20 */	blr

.global it_802D3508
it_802D3508:
/* 802D3508 002D00E8  7C 08 02 A6 */	mflr r0
/* 802D350C 002D00EC  90 01 00 04 */	stw r0, 4(r1)
/* 802D3510 002D00F0  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D3514 002D00F4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D3518 002D00F8  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 802D351C 002D00FC  2C 00 00 01 */	cmpwi r0, 1
/* 802D3520 002D0100  40 82 00 14 */	bne .L_802D3534
/* 802D3524 002D0104  80 84 00 CC */	lwz r4, 0xcc(r4)
/* 802D3528 002D0108  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802D352C 002D010C  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802D3530 002D0110  4B F9 F3 31 */	bl it_80272860
.L_802D3534:
/* 802D3534 002D0114  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D3538 002D0118  38 21 00 08 */	addi r1, r1, 8
/* 802D353C 002D011C  7C 08 03 A6 */	mtlr r0
/* 802D3540 002D0120  4E 80 00 20 */	blr

.global it_802D3544
it_802D3544:
/* 802D3544 002D0124  7C 08 02 A6 */	mflr r0
/* 802D3548 002D0128  90 01 00 04 */	stw r0, 4(r1)
/* 802D354C 002D012C  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D3550 002D0130  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D3554 002D0134  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 802D3558 002D0138  2C 00 00 01 */	cmpwi r0, 1
/* 802D355C 002D013C  40 82 00 14 */	bne .L_802D3570
/* 802D3560 002D0140  3C 80 80 2D */	lis r4, it_802D32D8@ha
/* 802D3564 002D0144  38 84 32 D8 */	addi r4, r4, it_802D32D8@l
/* 802D3568 002D0148  4B F9 AB F5 */	bl it_8026E15C
/* 802D356C 002D014C  48 00 00 10 */	b .L_802D357C
.L_802D3570:
/* 802D3570 002D0150  3C 80 80 2D */	lis r4, it_802D32D8@ha
/* 802D3574 002D0154  38 84 32 D8 */	addi r4, r4, it_802D32D8@l
/* 802D3578 002D0158  4B F9 A0 B5 */	bl it_8026D62C
.L_802D357C:
/* 802D357C 002D015C  38 60 00 00 */	li r3, 0
/* 802D3580 002D0160  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D3584 002D0164  38 21 00 08 */	addi r1, r1, 8
/* 802D3588 002D0168  7C 08 03 A6 */	mtlr r0
/* 802D358C 002D016C  4E 80 00 20 */	blr

.global it_802D3590
it_802D3590:
/* 802D3590 002D0170  7C 08 02 A6 */	mflr r0
/* 802D3594 002D0174  90 01 00 04 */	stw r0, 4(r1)
/* 802D3598 002D0178  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D359C 002D017C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D35A0 002D0180  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D35A4 002D0184  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D35A8 002D0188  7C 7D 1B 78 */	mr r29, r3
/* 802D35AC 002D018C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D35B0 002D0190  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802D35B4 002D0194  7F E3 FB 78 */	mr r3, r31
/* 802D35B8 002D0198  83 C4 00 04 */	lwz r30, 4(r4)
/* 802D35BC 002D019C  4B FA 2D 01 */	bl it_802762BC
/* 802D35C0 002D01A0  38 7D 00 00 */	addi r3, r29, 0
/* 802D35C4 002D01A4  38 80 00 00 */	li r4, 0
/* 802D35C8 002D01A8  38 A0 00 02 */	li r5, 2
/* 802D35CC 002D01AC  4B F9 58 91 */	bl Item_80268E5C
/* 802D35D0 002D01B0  38 00 00 00 */	li r0, 0
/* 802D35D4 002D01B4  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D35D8 002D01B8  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D35DC 002D01BC  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D35E0 002D01C0  90 1F 0E 34 */	stw r0, 0xe34(r31)
/* 802D35E4 002D01C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D35E8 002D01C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D35EC 002D01CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D35F0 002D01D0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D35F4 002D01D4  38 21 00 20 */	addi r1, r1, 0x20
/* 802D35F8 002D01D8  7C 08 03 A6 */	mtlr r0
/* 802D35FC 002D01DC  4E 80 00 20 */	blr

.global it_802D3600
it_802D3600:
/* 802D3600 002D01E0  7C 08 02 A6 */	mflr r0
/* 802D3604 002D01E4  90 01 00 04 */	stw r0, 4(r1)
/* 802D3608 002D01E8  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D360C 002D01EC  4B FA 69 ED */	bl it_80279FF8
/* 802D3610 002D01F0  38 60 00 00 */	li r3, 0
/* 802D3614 002D01F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D3618 002D01F8  38 21 00 08 */	addi r1, r1, 8
/* 802D361C 002D01FC  7C 08 03 A6 */	mtlr r0
/* 802D3620 002D0200  4E 80 00 20 */	blr

.global it_802D3624
it_802D3624:
/* 802D3624 002D0204  7C 08 02 A6 */	mflr r0
/* 802D3628 002D0208  90 01 00 04 */	stw r0, 4(r1)
/* 802D362C 002D020C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D3630 002D0210  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D3634 002D0214  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D3638 002D0218  7C 7E 1B 78 */	mr r30, r3
/* 802D363C 002D021C  4B FA 6A 61 */	bl it_8027A09C
/* 802D3640 002D0220  2C 03 00 00 */	cmpwi r3, 0
/* 802D3644 002D0224  41 82 00 2C */	beq .L_802D3670
/* 802D3648 002D0228  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 802D364C 002D022C  7F C3 F3 78 */	mr r3, r30
/* 802D3650 002D0230  4B F9 FE 05 */	bl it_80273454
/* 802D3654 002D0234  38 7E 00 00 */	addi r3, r30, 0
/* 802D3658 002D0238  38 80 00 01 */	li r4, 1
/* 802D365C 002D023C  38 A0 00 02 */	li r5, 2
/* 802D3660 002D0240  4B F9 57 FD */	bl Item_80268E5C
/* 802D3664 002D0244  38 00 00 00 */	li r0, 0
/* 802D3668 002D0248  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D366C 002D024C  90 1F 0D 2C */	stw r0, 0xd2c(r31)
.L_802D3670:
/* 802D3670 002D0250  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D3674 002D0254  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D3678 002D0258  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D367C 002D025C  38 21 00 18 */	addi r1, r1, 0x18
/* 802D3680 002D0260  7C 08 03 A6 */	mtlr r0
/* 802D3684 002D0264  4E 80 00 20 */	blr

.global it_802D3688
it_802D3688:
/* 802D3688 002D0268  7C 08 02 A6 */	mflr r0
/* 802D368C 002D026C  3C 80 80 2D */	lis r4, it_802D32D8@ha
/* 802D3690 002D0270  90 01 00 04 */	stw r0, 4(r1)
/* 802D3694 002D0274  38 84 32 D8 */	addi r4, r4, it_802D32D8@l
/* 802D3698 002D0278  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D369C 002D027C  4B FA 6A 7D */	bl it_8027A118
/* 802D36A0 002D0280  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D36A4 002D0284  38 21 00 08 */	addi r1, r1, 8
/* 802D36A8 002D0288  7C 08 03 A6 */	mtlr r0
/* 802D36AC 002D028C  4E 80 00 20 */	blr


.section .data
    .balign 8
.global it_803F7FF8
it_803F7FF8:
    .4byte 0
    .4byte it_802D3600
    .4byte it_802D3624
    .4byte it_802D3688
    .4byte 1
    .4byte it_802D32FC
    .4byte it_802D3370
    .4byte it_802D33AC
    .4byte 2
    .4byte it_802D34A4
    .4byte it_802D3508
    .4byte it_802D3544
    .4byte 3
    .4byte it_802D34A4
    .4byte it_802D3508
    .4byte it_802D3544
    .4byte 4
    .4byte it_802D34A4
    .4byte it_802D3508
    .4byte it_802D3544
    .4byte 5
    .4byte it_802D34A4
    .4byte it_802D3508
    .4byte it_802D3544


.section .sdata2
    .balign 8
.global it_804DD4A8
it_804DD4A8:
    .4byte 0x00000000
