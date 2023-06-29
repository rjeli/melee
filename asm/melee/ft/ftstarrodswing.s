.include "macros.inc"

.section .text

.global ftCo_800CD82C
ftCo_800CD82C:
/* 800CD82C 000CA40C  7C 08 02 A6 */	mflr r0
/* 800CD830 000CA410  3C C0 00 08 */	lis r6, 0x83D60@ha
/* 800CD834 000CA414  90 01 00 04 */	stw r0, 4(r1)
/* 800CD838 000CA418  38 06 3D 60 */	addi r0, r6, 0x83D60@l
/* 800CD83C 000CA41C  38 C5 00 00 */	addi r6, r5, 0
/* 800CD840 000CA420  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800CD844 000CA424  38 A0 00 00 */	li r5, 0
/* 800CD848 000CA428  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800CD84C 000CA42C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 800CD850 000CA430  90 1F 22 00 */	stw r0, 0x2200(r31)
/* 800CD854 000CA434  38 00 00 00 */	li r0, 0
/* 800CD858 000CA438  90 1F 22 04 */	stw r0, 0x2204(r31)
/* 800CD85C 000CA43C  4B FF F8 E5 */	bl ftCo_800CD140
/* 800CD860 000CA440  3C 60 80 0D */	lis r3, ft_800CD914@ha
/* 800CD864 000CA444  38 03 D9 14 */	addi r0, r3, ft_800CD914@l
/* 800CD868 000CA448  3C 60 80 0D */	lis r3, ft_800CD31C@ha
/* 800CD86C 000CA44C  90 1F 21 BC */	stw r0, 0x21bc(r31)
/* 800CD870 000CA450  38 03 D3 1C */	addi r0, r3, ft_800CD31C@l
/* 800CD874 000CA454  90 1F 21 DC */	stw r0, 0x21dc(r31)
/* 800CD878 000CA458  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800CD87C 000CA45C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 800CD880 000CA460  38 21 00 28 */	addi r1, r1, 0x28
/* 800CD884 000CA464  7C 08 03 A6 */	mtlr r0
/* 800CD888 000CA468  4E 80 00 20 */	blr

.global ftCo_StarRodSwing_Anim
ftCo_StarRodSwing_Anim:
/* 800CD88C 000CA46C  7C 08 02 A6 */	mflr r0
/* 800CD890 000CA470  90 01 00 04 */	stw r0, 4(r1)
/* 800CD894 000CA474  94 21 FF F8 */	stwu r1, -8(r1)
/* 800CD898 000CA478  4B FF F9 25 */	bl ftCo_800CD1BC
/* 800CD89C 000CA47C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800CD8A0 000CA480  38 21 00 08 */	addi r1, r1, 8
/* 800CD8A4 000CA484  7C 08 03 A6 */	mtlr r0
/* 800CD8A8 000CA488  4E 80 00 20 */	blr

.global ftCo_StarRodSwing_IASA
ftCo_StarRodSwing_IASA:
/* 800CD8AC 000CA48C  7C 08 02 A6 */	mflr r0
/* 800CD8B0 000CA490  90 01 00 04 */	stw r0, 4(r1)
/* 800CD8B4 000CA494  94 21 FF F8 */	stwu r1, -8(r1)
/* 800CD8B8 000CA498  4B FF F9 4D */	bl ftCo_800CD204
/* 800CD8BC 000CA49C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800CD8C0 000CA4A0  38 21 00 08 */	addi r1, r1, 8
/* 800CD8C4 000CA4A4  7C 08 03 A6 */	mtlr r0
/* 800CD8C8 000CA4A8  4E 80 00 20 */	blr

.global ftCo_StarRodSwing_Phys
ftCo_StarRodSwing_Phys:
/* 800CD8CC 000CA4AC  7C 08 02 A6 */	mflr r0
/* 800CD8D0 000CA4B0  90 01 00 04 */	stw r0, 4(r1)
/* 800CD8D4 000CA4B4  94 21 FF F8 */	stwu r1, -8(r1)
/* 800CD8D8 000CA4B8  4B FF F9 A1 */	bl ftCo_800CD278
/* 800CD8DC 000CA4BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800CD8E0 000CA4C0  38 21 00 08 */	addi r1, r1, 8
/* 800CD8E4 000CA4C4  7C 08 03 A6 */	mtlr r0
/* 800CD8E8 000CA4C8  4E 80 00 20 */	blr

.global ftCo_StarRodSwing_Coll
ftCo_StarRodSwing_Coll:
/* 800CD8EC 000CA4CC  7C 08 02 A6 */	mflr r0
/* 800CD8F0 000CA4D0  3C 80 80 0D */	lis r4, ft_800CD31C@ha
/* 800CD8F4 000CA4D4  90 01 00 04 */	stw r0, 4(r1)
/* 800CD8F8 000CA4D8  38 84 D3 1C */	addi r4, r4, ft_800CD31C@l
/* 800CD8FC 000CA4DC  94 21 FF F8 */	stwu r1, -8(r1)
/* 800CD900 000CA4E0  4B FF F9 C5 */	bl ftCo_800CD2C4
/* 800CD904 000CA4E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800CD908 000CA4E8  38 21 00 08 */	addi r1, r1, 8
/* 800CD90C 000CA4EC  7C 08 03 A6 */	mtlr r0
/* 800CD910 000CA4F0  4E 80 00 20 */	blr

.global ft_800CD914
ft_800CD914:
/* 800CD914 000CA4F4  7C 08 02 A6 */	mflr r0
/* 800CD918 000CA4F8  90 01 00 04 */	stw r0, 4(r1)
/* 800CD91C 000CA4FC  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 800CD920 000CA500  93 E1 00 44 */	stw r31, 0x44(r1)
/* 800CD924 000CA504  93 C1 00 40 */	stw r30, 0x40(r1)
/* 800CD928 000CA508  93 A1 00 3C */	stw r29, 0x3c(r1)
/* 800CD92C 000CA50C  7C 7D 1B 78 */	mr r29, r3
/* 800CD930 000CA510  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 800CD934 000CA514  80 9F 01 0C */	lwz r4, 0x10c(r31)
/* 800CD938 000CA518  80 7F 19 74 */	lwz r3, 0x1974(r31)
/* 800CD93C 000CA51C  80 84 00 08 */	lwz r4, 8(r4)
/* 800CD940 000CA520  28 03 00 00 */	cmplwi r3, 0
/* 800CD944 000CA524  8B C4 00 10 */	lbz r30, 0x10(r4)
/* 800CD948 000CA528  41 82 01 50 */	beq .L_800CDA98
/* 800CD94C 000CA52C  48 19 D9 B5 */	bl itGetKind
/* 800CD950 000CA530  2C 03 00 16 */	cmpwi r3, 0x16
/* 800CD954 000CA534  41 82 00 1C */	beq .L_800CD970
/* 800CD958 000CA538  3C 60 80 3C */	lis r3, .L_803C6EB8@ha
/* 800CD95C 000CA53C  3C 80 80 3C */	lis r4, .L_803C6ECC@ha
/* 800CD960 000CA540  38 A4 6E CC */	addi r5, r4, .L_803C6ECC@l
/* 800CD964 000CA544  38 63 6E B8 */	addi r3, r3, .L_803C6EB8@l
/* 800CD968 000CA548  38 80 00 64 */	li r4, 0x64
/* 800CD96C 000CA54C  48 2B A8 B5 */	bl __assert
.L_800CD970:
/* 800CD970 000CA550  80 7F 22 00 */	lwz r3, 0x2200(r31)
/* 800CD974 000CA554  3C 03 FF F8 */	addis r0, r3, 0xfff8
/* 800CD978 000CA558  28 00 3D 60 */	cmplwi r0, 0x3d60
/* 800CD97C 000CA55C  41 82 00 4C */	beq .L_800CD9C8
/* 800CD980 000CA560  80 7F 19 74 */	lwz r3, 0x1974(r31)
/* 800CD984 000CA564  48 19 DC 11 */	bl it_8026B594
/* 800CD988 000CA568  2C 03 00 00 */	cmpwi r3, 0
/* 800CD98C 000CA56C  40 82 00 1C */	bne .L_800CD9A8
/* 800CD990 000CA570  80 9F 22 00 */	lwz r4, 0x2200(r31)
/* 800CD994 000CA574  38 7F 00 00 */	addi r3, r31, 0
/* 800CD998 000CA578  38 A0 00 7F */	li r5, 0x7f
/* 800CD99C 000CA57C  38 C0 00 40 */	li r6, 0x40
/* 800CD9A0 000CA580  4B FB A7 A9 */	bl ft_80088148
/* 800CD9A4 000CA584  48 00 00 18 */	b .L_800CD9BC
.L_800CD9A8:
/* 800CD9A8 000CA588  38 7F 00 00 */	addi r3, r31, 0
/* 800CD9AC 000CA58C  38 80 00 EA */	li r4, 0xea
/* 800CD9B0 000CA590  38 A0 00 7F */	li r5, 0x7f
/* 800CD9B4 000CA594  38 C0 00 40 */	li r6, 0x40
/* 800CD9B8 000CA598  4B FB A7 91 */	bl ft_80088148
.L_800CD9BC:
/* 800CD9BC 000CA59C  3C 60 00 08 */	lis r3, 0x00083D60@ha
/* 800CD9C0 000CA5A0  38 03 3D 60 */	addi r0, r3, 0x00083D60@l
/* 800CD9C4 000CA5A4  90 1F 22 00 */	stw r0, 0x2200(r31)
.L_800CD9C8:
/* 800CD9C8 000CA5A8  88 7F 22 10 */	lbz r3, 0x2210(r31)
/* 800CD9CC 000CA5AC  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 800CD9D0 000CA5B0  41 82 00 18 */	beq .L_800CD9E8
/* 800CD9D4 000CA5B4  38 00 00 00 */	li r0, 0
/* 800CD9D8 000CA5B8  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 800CD9DC 000CA5BC  98 7F 22 10 */	stb r3, 0x2210(r31)
/* 800CD9E0 000CA5C0  38 00 00 01 */	li r0, 1
/* 800CD9E4 000CA5C4  48 00 00 08 */	b .L_800CD9EC
.L_800CD9E8:
/* 800CD9E8 000CA5C8  38 00 00 00 */	li r0, 0
.L_800CD9EC:
/* 800CD9EC 000CA5CC  2C 00 00 00 */	cmpwi r0, 0
/* 800CD9F0 000CA5D0  41 82 00 A8 */	beq .L_800CDA98
/* 800CD9F4 000CA5D4  80 7F 19 74 */	lwz r3, 0x1974(r31)
/* 800CD9F8 000CA5D8  38 81 00 1C */	addi r4, r1, 0x1c
/* 800CD9FC 000CA5DC  48 1C 49 99 */	bl it_80292394
/* 800CDA00 000CA5E0  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 800CDA04 000CA5E4  57 C0 20 36 */	slwi r0, r30, 4
/* 800CDA08 000CA5E8  38 81 00 1C */	addi r4, r1, 0x1c
/* 800CDA0C 000CA5EC  7C 63 00 2E */	lwzx r3, r3, r0
/* 800CDA10 000CA5F0  38 A1 00 28 */	addi r5, r1, 0x28
/* 800CDA14 000CA5F4  4B F3 D7 B9 */	bl lb_8000B1CC
/* 800CDA18 000CA5F8  80 7F 19 74 */	lwz r3, 0x1974(r31)
/* 800CDA1C 000CA5FC  48 19 DB 79 */	bl it_8026B594
/* 800CDA20 000CA600  2C 03 00 00 */	cmpwi r3, 0
/* 800CDA24 000CA604  40 82 00 44 */	bne .L_800CDA68
/* 800CDA28 000CA608  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 800CDA2C 000CA60C  38 7D 00 00 */	addi r3, r29, 0
/* 800CDA30 000CA610  39 01 00 28 */	addi r8, r1, 0x28
/* 800CDA34 000CA614  4C C6 31 82 */	crclr 6
/* 800CDA38 000CA618  38 84 06 0C */	addi r4, r4, 0x60c
/* 800CDA3C 000CA61C  39 3F 00 2C */	addi r9, r31, 0x2c
/* 800CDA40 000CA620  38 A0 00 05 */	li r5, 5
/* 800CDA44 000CA624  38 C0 04 2E */	li r6, 0x42e
/* 800CDA48 000CA628  38 E0 00 00 */	li r7, 0
/* 800CDA4C 000CA62C  4B F9 9C A5 */	bl efAsync_Spawn
/* 800CDA50 000CA630  80 7F 19 74 */	lwz r3, 0x1974(r31)
/* 800CDA54 000CA634  38 81 00 28 */	addi r4, r1, 0x28
/* 800CDA58 000CA638  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 800CDA5C 000CA63C  80 BF 22 04 */	lwz r5, 0x2204(r31)
/* 800CDA60 000CA640  48 1C 49 5D */	bl it_802923BC
/* 800CDA64 000CA644  48 00 00 34 */	b .L_800CDA98
.L_800CDA68:
/* 800CDA68 000CA648  C0 02 95 28 */	lfs f0, ftCo_804D8F08@sda21(r2)
/* 800CDA6C 000CA64C  38 7D 00 00 */	addi r3, r29, 0
/* 800CDA70 000CA650  39 01 00 28 */	addi r8, r1, 0x28
/* 800CDA74 000CA654  4C C6 31 82 */	crclr 6
/* 800CDA78 000CA658  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800CDA7C 000CA65C  39 21 00 18 */	addi r9, r1, 0x18
/* 800CDA80 000CA660  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 800CDA84 000CA664  38 A0 00 05 */	li r5, 5
/* 800CDA88 000CA668  38 C0 04 08 */	li r6, 0x408
/* 800CDA8C 000CA66C  38 84 06 0C */	addi r4, r4, 0x60c
/* 800CDA90 000CA670  38 E0 00 00 */	li r7, 0
/* 800CDA94 000CA674  4B F9 9C 5D */	bl efAsync_Spawn
.L_800CDA98:
/* 800CDA98 000CA678  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 800CDA9C 000CA67C  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 800CDAA0 000CA680  83 C1 00 40 */	lwz r30, 0x40(r1)
/* 800CDAA4 000CA684  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 800CDAA8 000CA688  38 21 00 48 */	addi r1, r1, 0x48
/* 800CDAAC 000CA68C  7C 08 03 A6 */	mtlr r0
/* 800CDAB0 000CA690  4E 80 00 20 */	blr


.section .data
    .balign 8
.L_803C6EB8:
    .asciz "ftstarrodswing.c"
    .balign 4
.L_803C6ECC:
    .asciz "itGetKind(fp->item_gobj) == It_Kind_StarRod"
    .balign 4


.section .sdata2
    .balign 8
ftCo_804D8F08:
    .float 0
