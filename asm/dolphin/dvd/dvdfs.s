.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global __DVDFSInit
__DVDFSInit:
/* 80337934 00334514  3C 60 80 00 */	lis r3, 0x80000038@ha
/* 80337938 00334518  90 6D BB D8 */	stw r3, lbl_804D7278@sda21(r13)
/* 8033793C 0033451C  80 03 00 38 */	lwz r0, 0x80000038@l(r3)
/* 80337940 00334520  90 0D BB DC */	stw r0, FstStart@sda21(r13)
/* 80337944 00334524  80 6D BB DC */	lwz r3, FstStart@sda21(r13)
/* 80337948 00334528  28 03 00 00 */	cmplwi r3, 0
/* 8033794C 0033452C  4D 82 00 20 */	beqlr 
/* 80337950 00334530  80 03 00 08 */	lwz r0, 8(r3)
/* 80337954 00334534  90 0D BB E4 */	stw r0, MaxEntryNum@sda21(r13)
/* 80337958 00334538  80 0D BB E4 */	lwz r0, MaxEntryNum@sda21(r13)
/* 8033795C 0033453C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80337960 00334540  7C 03 02 14 */	add r0, r3, r0
/* 80337964 00334544  90 0D BB E0 */	stw r0, FstStringStart@sda21(r13)
/* 80337968 00334548  4E 80 00 20 */	blr 

.global DVDConvertPathToEntrynum
DVDConvertPathToEntrynum:
/* 8033796C 0033454C  7C 08 02 A6 */	mflr r0
/* 80337970 00334550  90 01 00 04 */	stw r0, 4(r1)
/* 80337974 00334554  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 80337978 00334558  BE 81 00 18 */	stmw r20, 0x18(r1)
/* 8033797C 0033455C  7C 77 1B 78 */	mr r23, r3
/* 80337980 00334560  3C 60 80 40 */	lis r3, lbl_80400D80@ha
/* 80337984 00334564  3B 37 00 00 */	addi r25, r23, 0
/* 80337988 00334568  3B E3 0D 80 */	addi r31, r3, lbl_80400D80@l
/* 8033798C 0033456C  83 4D BB E8 */	lwz r26, currentDirectory@sda21(r13)
lbl_80337990:
/* 80337990 00334570  88 77 00 00 */	lbz r3, 0(r23)
/* 80337994 00334574  7C 60 07 75 */	extsb. r0, r3
/* 80337998 00334578  40 82 00 0C */	bne lbl_803379A4
/* 8033799C 0033457C  7F 43 D3 78 */	mr r3, r26
/* 803379A0 00334580  48 00 02 AC */	b lbl_80337C4C
lbl_803379A4:
/* 803379A4 00334584  7C 60 07 74 */	extsb r0, r3
/* 803379A8 00334588  2C 00 00 2F */	cmpwi r0, 0x2f
/* 803379AC 0033458C  40 82 00 10 */	bne lbl_803379BC
/* 803379B0 00334590  3B 40 00 00 */	li r26, 0
/* 803379B4 00334594  3A F7 00 01 */	addi r23, r23, 1
/* 803379B8 00334598  4B FF FF D8 */	b lbl_80337990
lbl_803379BC:
/* 803379BC 0033459C  2C 00 00 2E */	cmpwi r0, 0x2e
/* 803379C0 003345A0  40 82 00 74 */	bne lbl_80337A34
/* 803379C4 003345A4  88 77 00 01 */	lbz r3, 1(r23)
/* 803379C8 003345A8  7C 60 07 74 */	extsb r0, r3
/* 803379CC 003345AC  2C 00 00 2E */	cmpwi r0, 0x2e
/* 803379D0 003345B0  40 82 00 44 */	bne lbl_80337A14
/* 803379D4 003345B4  88 77 00 02 */	lbz r3, 2(r23)
/* 803379D8 003345B8  2C 03 00 2F */	cmpwi r3, 0x2f
/* 803379DC 003345BC  40 82 00 1C */	bne lbl_803379F8
/* 803379E0 003345C0  1C 7A 00 0C */	mulli r3, r26, 0xc
/* 803379E4 003345C4  80 8D BB DC */	lwz r4, FstStart@sda21(r13)
/* 803379E8 003345C8  38 03 00 04 */	addi r0, r3, 4
/* 803379EC 003345CC  7F 44 00 2E */	lwzx r26, r4, r0
/* 803379F0 003345D0  3A F7 00 03 */	addi r23, r23, 3
/* 803379F4 003345D4  4B FF FF 9C */	b lbl_80337990
lbl_803379F8:
/* 803379F8 003345D8  7C 60 07 75 */	extsb. r0, r3
/* 803379FC 003345DC  40 82 00 38 */	bne lbl_80337A34
/* 80337A00 003345E0  1C 1A 00 0C */	mulli r0, r26, 0xc
/* 80337A04 003345E4  80 6D BB DC */	lwz r3, FstStart@sda21(r13)
/* 80337A08 003345E8  7C 63 02 14 */	add r3, r3, r0
/* 80337A0C 003345EC  80 63 00 04 */	lwz r3, 4(r3)
/* 80337A10 003345F0  48 00 02 3C */	b lbl_80337C4C
lbl_80337A14:
/* 80337A14 003345F4  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80337A18 003345F8  40 82 00 0C */	bne lbl_80337A24
/* 80337A1C 003345FC  3A F7 00 02 */	addi r23, r23, 2
/* 80337A20 00334600  4B FF FF 70 */	b lbl_80337990
lbl_80337A24:
/* 80337A24 00334604  7C 60 07 75 */	extsb. r0, r3
/* 80337A28 00334608  40 82 00 0C */	bne lbl_80337A34
/* 80337A2C 0033460C  7F 43 D3 78 */	mr r3, r26
/* 80337A30 00334610  48 00 02 1C */	b lbl_80337C4C
lbl_80337A34:
/* 80337A34 00334614  80 0D BB EC */	lwz r0, __DVDLongFileNameFlag@sda21(r13)
/* 80337A38 00334618  28 00 00 00 */	cmplwi r0, 0
/* 80337A3C 0033461C  40 82 00 AC */	bne lbl_80337AE8
/* 80337A40 00334620  3B 97 00 00 */	addi r28, r23, 0
/* 80337A44 00334624  38 A0 00 00 */	li r5, 0
/* 80337A48 00334628  38 80 00 00 */	li r4, 0
/* 80337A4C 0033462C  48 00 00 48 */	b lbl_80337A94
lbl_80337A50:
/* 80337A50 00334630  7C 60 07 74 */	extsb r0, r3
/* 80337A54 00334634  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80337A58 00334638  40 82 00 2C */	bne lbl_80337A84
/* 80337A5C 0033463C  7C 17 E0 50 */	subf r0, r23, r28
/* 80337A60 00334640  2C 00 00 08 */	cmpwi r0, 8
/* 80337A64 00334644  41 81 00 0C */	bgt lbl_80337A70
/* 80337A68 00334648  2C 05 00 01 */	cmpwi r5, 1
/* 80337A6C 0033464C  40 82 00 0C */	bne lbl_80337A78
lbl_80337A70:
/* 80337A70 00334650  38 80 00 01 */	li r4, 1
/* 80337A74 00334654  48 00 00 38 */	b lbl_80337AAC
lbl_80337A78:
/* 80337A78 00334658  3B 1C 00 01 */	addi r24, r28, 1
/* 80337A7C 0033465C  38 A0 00 01 */	li r5, 1
/* 80337A80 00334660  48 00 00 10 */	b lbl_80337A90
lbl_80337A84:
/* 80337A84 00334664  2C 00 00 20 */	cmpwi r0, 0x20
/* 80337A88 00334668  40 82 00 08 */	bne lbl_80337A90
/* 80337A8C 0033466C  38 80 00 01 */	li r4, 1
lbl_80337A90:
/* 80337A90 00334670  3B 9C 00 01 */	addi r28, r28, 1
lbl_80337A94:
/* 80337A94 00334674  88 7C 00 00 */	lbz r3, 0(r28)
/* 80337A98 00334678  7C 60 07 75 */	extsb. r0, r3
/* 80337A9C 0033467C  41 82 00 10 */	beq lbl_80337AAC
/* 80337AA0 00334680  7C 60 07 74 */	extsb r0, r3
/* 80337AA4 00334684  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80337AA8 00334688  40 82 FF A8 */	bne lbl_80337A50
lbl_80337AAC:
/* 80337AAC 0033468C  2C 05 00 01 */	cmpwi r5, 1
/* 80337AB0 00334690  40 82 00 14 */	bne lbl_80337AC4
/* 80337AB4 00334694  7C 18 E0 50 */	subf r0, r24, r28
/* 80337AB8 00334698  2C 00 00 03 */	cmpwi r0, 3
/* 80337ABC 0033469C  40 81 00 08 */	ble lbl_80337AC4
/* 80337AC0 003346A0  38 80 00 01 */	li r4, 1
lbl_80337AC4:
/* 80337AC4 003346A4  2C 04 00 00 */	cmpwi r4, 0
/* 80337AC8 003346A8  41 82 00 44 */	beq lbl_80337B0C
/* 80337ACC 003346AC  38 BF 00 00 */	addi r5, r31, 0
/* 80337AD0 003346B0  4C C6 31 82 */	crclr 6
/* 80337AD4 003346B4  38 D9 00 00 */	addi r6, r25, 0
/* 80337AD8 003346B8  38 6D A4 E8 */	addi r3, r13, lbl_804D5B88@sda21
/* 80337ADC 003346BC  38 80 01 78 */	li r4, 0x178
/* 80337AE0 003346C0  48 00 DC 49 */	bl OSPanic
/* 80337AE4 003346C4  48 00 00 28 */	b lbl_80337B0C
lbl_80337AE8:
/* 80337AE8 003346C8  7E FC BB 78 */	mr r28, r23
/* 80337AEC 003346CC  48 00 00 08 */	b lbl_80337AF4
lbl_80337AF0:
/* 80337AF0 003346D0  3B 9C 00 01 */	addi r28, r28, 1
lbl_80337AF4:
/* 80337AF4 003346D4  88 7C 00 00 */	lbz r3, 0(r28)
/* 80337AF8 003346D8  7C 60 07 75 */	extsb. r0, r3
/* 80337AFC 003346DC  41 82 00 10 */	beq lbl_80337B0C
/* 80337B00 003346E0  7C 60 07 74 */	extsb r0, r3
/* 80337B04 003346E4  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80337B08 003346E8  40 82 FF E8 */	bne lbl_80337AF0
lbl_80337B0C:
/* 80337B0C 003346EC  88 1C 00 00 */	lbz r0, 0(r28)
/* 80337B10 003346F0  7C 00 07 75 */	extsb. r0, r0
/* 80337B14 003346F4  40 82 00 0C */	bne lbl_80337B20
/* 80337B18 003346F8  3B C0 00 00 */	li r30, 0
/* 80337B1C 003346FC  48 00 00 08 */	b lbl_80337B24
lbl_80337B20:
/* 80337B20 00334700  3B C0 00 01 */	li r30, 1
lbl_80337B24:
/* 80337B24 00334704  1F BA 00 0C */	mulli r29, r26, 0xc
/* 80337B28 00334708  7F 77 E0 50 */	subf r27, r23, r28
/* 80337B2C 0033470C  3B 5A 00 01 */	addi r26, r26, 1
/* 80337B30 00334710  48 00 00 E4 */	b lbl_80337C14
lbl_80337B34:
/* 80337B34 00334714  1F 9A 00 0C */	mulli r28, r26, 0xc
/* 80337B38 00334718  7C 83 E0 2E */	lwzx r4, r3, r28
/* 80337B3C 0033471C  54 80 00 0F */	rlwinm. r0, r4, 0, 0, 7
/* 80337B40 00334720  40 82 00 0C */	bne lbl_80337B4C
/* 80337B44 00334724  38 00 00 00 */	li r0, 0
/* 80337B48 00334728  48 00 00 08 */	b lbl_80337B50
lbl_80337B4C:
/* 80337B4C 0033472C  38 00 00 01 */	li r0, 1
lbl_80337B50:
/* 80337B50 00334730  2C 00 00 00 */	cmpwi r0, 0
/* 80337B54 00334734  40 82 00 0C */	bne lbl_80337B60
/* 80337B58 00334738  2C 1E 00 01 */	cmpwi r30, 1
/* 80337B5C 0033473C  41 82 00 80 */	beq lbl_80337BDC
lbl_80337B60:
/* 80337B60 00334740  80 6D BB E0 */	lwz r3, FstStringStart@sda21(r13)
/* 80337B64 00334744  54 80 02 3E */	clrlwi r0, r4, 8
/* 80337B68 00334748  3A B7 00 00 */	addi r21, r23, 0
/* 80337B6C 0033474C  7E 83 02 14 */	add r20, r3, r0
/* 80337B70 00334750  48 00 00 38 */	b lbl_80337BA8
lbl_80337B74:
/* 80337B74 00334754  88 14 00 00 */	lbz r0, 0(r20)
/* 80337B78 00334758  3A 94 00 01 */	addi r20, r20, 1
/* 80337B7C 0033475C  7C 03 07 74 */	extsb r3, r0
/* 80337B80 00334760  4B FE BA 09 */	bl tolower
/* 80337B84 00334764  88 15 00 00 */	lbz r0, 0(r21)
/* 80337B88 00334768  3A C3 00 00 */	addi r22, r3, 0
/* 80337B8C 0033476C  3A B5 00 01 */	addi r21, r21, 1
/* 80337B90 00334770  7C 03 07 74 */	extsb r3, r0
/* 80337B94 00334774  4B FE B9 F5 */	bl tolower
/* 80337B98 00334778  7C 03 B0 00 */	cmpw r3, r22
/* 80337B9C 0033477C  41 82 00 0C */	beq lbl_80337BA8
/* 80337BA0 00334780  38 00 00 00 */	li r0, 0
/* 80337BA4 00334784  48 00 00 30 */	b lbl_80337BD4
lbl_80337BA8:
/* 80337BA8 00334788  88 14 00 00 */	lbz r0, 0(r20)
/* 80337BAC 0033478C  7C 00 07 75 */	extsb. r0, r0
/* 80337BB0 00334790  40 82 FF C4 */	bne lbl_80337B74
/* 80337BB4 00334794  88 75 00 00 */	lbz r3, 0(r21)
/* 80337BB8 00334798  2C 03 00 2F */	cmpwi r3, 0x2f
/* 80337BBC 0033479C  41 82 00 0C */	beq lbl_80337BC8
/* 80337BC0 003347A0  7C 60 07 75 */	extsb. r0, r3
/* 80337BC4 003347A4  40 82 00 0C */	bne lbl_80337BD0
lbl_80337BC8:
/* 80337BC8 003347A8  38 00 00 01 */	li r0, 1
/* 80337BCC 003347AC  48 00 00 08 */	b lbl_80337BD4
lbl_80337BD0:
/* 80337BD0 003347B0  38 00 00 00 */	li r0, 0
lbl_80337BD4:
/* 80337BD4 003347B4  2C 00 00 01 */	cmpwi r0, 1
/* 80337BD8 003347B8  41 82 00 58 */	beq lbl_80337C30
lbl_80337BDC:
/* 80337BDC 003347BC  80 0D BB DC */	lwz r0, FstStart@sda21(r13)
/* 80337BE0 003347C0  7C 60 E2 14 */	add r3, r0, r28
/* 80337BE4 003347C4  80 03 00 00 */	lwz r0, 0(r3)
/* 80337BE8 003347C8  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 80337BEC 003347CC  40 82 00 0C */	bne lbl_80337BF8
/* 80337BF0 003347D0  38 00 00 00 */	li r0, 0
/* 80337BF4 003347D4  48 00 00 08 */	b lbl_80337BFC
lbl_80337BF8:
/* 80337BF8 003347D8  38 00 00 01 */	li r0, 1
lbl_80337BFC:
/* 80337BFC 003347DC  2C 00 00 00 */	cmpwi r0, 0
/* 80337C00 003347E0  41 82 00 0C */	beq lbl_80337C0C
/* 80337C04 003347E4  80 03 00 08 */	lwz r0, 8(r3)
/* 80337C08 003347E8  48 00 00 08 */	b lbl_80337C10
lbl_80337C0C:
/* 80337C0C 003347EC  38 1A 00 01 */	addi r0, r26, 1
lbl_80337C10:
/* 80337C10 003347F0  7C 1A 03 78 */	mr r26, r0
lbl_80337C14:
/* 80337C14 003347F4  80 6D BB DC */	lwz r3, FstStart@sda21(r13)
/* 80337C18 003347F8  38 03 00 08 */	addi r0, r3, 8
/* 80337C1C 003347FC  7C 1D 00 2E */	lwzx r0, r29, r0
/* 80337C20 00334800  7C 1A 00 40 */	cmplw r26, r0
/* 80337C24 00334804  41 80 FF 10 */	blt lbl_80337B34
/* 80337C28 00334808  38 60 FF FF */	li r3, -1
/* 80337C2C 0033480C  48 00 00 20 */	b lbl_80337C4C
lbl_80337C30:
/* 80337C30 00334810  2C 1E 00 00 */	cmpwi r30, 0
/* 80337C34 00334814  40 82 00 0C */	bne lbl_80337C40
/* 80337C38 00334818  7F 43 D3 78 */	mr r3, r26
/* 80337C3C 0033481C  48 00 00 10 */	b lbl_80337C4C
lbl_80337C40:
/* 80337C40 00334820  7E FB BA 14 */	add r23, r27, r23
/* 80337C44 00334824  3A F7 00 01 */	addi r23, r23, 1
/* 80337C48 00334828  4B FF FD 48 */	b lbl_80337990
lbl_80337C4C:
/* 80337C4C 0033482C  BA 81 00 18 */	lmw r20, 0x18(r1)
/* 80337C50 00334830  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80337C54 00334834  38 21 00 48 */	addi r1, r1, 0x48
/* 80337C58 00334838  7C 08 03 A6 */	mtlr r0
/* 80337C5C 0033483C  4E 80 00 20 */	blr 

.global DVDFastOpen
DVDFastOpen:
/* 80337C60 00334840  2C 03 00 00 */	cmpwi r3, 0
/* 80337C64 00334844  41 80 00 38 */	blt lbl_80337C9C
/* 80337C68 00334848  80 0D BB E4 */	lwz r0, MaxEntryNum@sda21(r13)
/* 80337C6C 0033484C  7C 03 00 40 */	cmplw r3, r0
/* 80337C70 00334850  40 80 00 2C */	bge lbl_80337C9C
/* 80337C74 00334854  1C C3 00 0C */	mulli r6, r3, 0xc
/* 80337C78 00334858  80 6D BB DC */	lwz r3, FstStart@sda21(r13)
/* 80337C7C 0033485C  7C 03 30 2E */	lwzx r0, r3, r6
/* 80337C80 00334860  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 80337C84 00334864  40 82 00 0C */	bne lbl_80337C90
/* 80337C88 00334868  38 00 00 00 */	li r0, 0
/* 80337C8C 0033486C  48 00 00 08 */	b lbl_80337C94
lbl_80337C90:
/* 80337C90 00334870  38 00 00 01 */	li r0, 1
lbl_80337C94:
/* 80337C94 00334874  2C 00 00 00 */	cmpwi r0, 0
/* 80337C98 00334878  41 82 00 0C */	beq lbl_80337CA4
lbl_80337C9C:
/* 80337C9C 0033487C  38 60 00 00 */	li r3, 0
/* 80337CA0 00334880  4E 80 00 20 */	blr 
lbl_80337CA4:
/* 80337CA4 00334884  7C 63 32 14 */	add r3, r3, r6
/* 80337CA8 00334888  80 A3 00 04 */	lwz r5, 4(r3)
/* 80337CAC 0033488C  38 00 00 00 */	li r0, 0
/* 80337CB0 00334890  38 60 00 01 */	li r3, 1
/* 80337CB4 00334894  90 A4 00 30 */	stw r5, 0x30(r4)
/* 80337CB8 00334898  80 AD BB DC */	lwz r5, FstStart@sda21(r13)
/* 80337CBC 0033489C  7C A5 32 14 */	add r5, r5, r6
/* 80337CC0 003348A0  80 A5 00 08 */	lwz r5, 8(r5)
/* 80337CC4 003348A4  90 A4 00 34 */	stw r5, 0x34(r4)
/* 80337CC8 003348A8  90 04 00 38 */	stw r0, 0x38(r4)
/* 80337CCC 003348AC  90 04 00 0C */	stw r0, 0xc(r4)
/* 80337CD0 003348B0  4E 80 00 20 */	blr 

.global DVDClose
DVDClose:
/* 80337CD4 003348B4  7C 08 02 A6 */	mflr r0
/* 80337CD8 003348B8  90 01 00 04 */	stw r0, 4(r1)
/* 80337CDC 003348BC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80337CE0 003348C0  48 00 21 99 */	bl DVDCancel
/* 80337CE4 003348C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80337CE8 003348C8  38 60 00 01 */	li r3, 1
/* 80337CEC 003348CC  38 21 00 08 */	addi r1, r1, 8
/* 80337CF0 003348D0  7C 08 03 A6 */	mtlr r0
/* 80337CF4 003348D4  4E 80 00 20 */	blr 

.global DVDReadAsyncPrio
DVDReadAsyncPrio:
/* 80337CF8 003348D8  7C 08 02 A6 */	mflr r0
/* 80337CFC 003348DC  90 01 00 04 */	stw r0, 4(r1)
/* 80337D00 003348E0  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80337D04 003348E4  BF 41 00 20 */	stmw r26, 0x20(r1)
/* 80337D08 003348E8  7C DD 33 79 */	or. r29, r6, r6
/* 80337D0C 003348EC  3B 43 00 00 */	addi r26, r3, 0
/* 80337D10 003348F0  3B 64 00 00 */	addi r27, r4, 0
/* 80337D14 003348F4  3B 85 00 00 */	addi r28, r5, 0
/* 80337D18 003348F8  3B C7 00 00 */	addi r30, r7, 0
/* 80337D1C 003348FC  3B E8 00 00 */	addi r31, r8, 0
/* 80337D20 00334900  41 80 00 10 */	blt lbl_80337D30
/* 80337D24 00334904  80 1A 00 34 */	lwz r0, 0x34(r26)
/* 80337D28 00334908  7C 1D 00 40 */	cmplw r29, r0
/* 80337D2C 0033490C  41 80 00 1C */	blt lbl_80337D48
lbl_80337D30:
/* 80337D30 00334910  3C 60 80 40 */	lis r3, lbl_80400E48@ha
/* 80337D34 00334914  4C C6 31 82 */	crclr 6
/* 80337D38 00334918  38 A3 0E 48 */	addi r5, r3, lbl_80400E48@l
/* 80337D3C 0033491C  38 6D A4 E8 */	addi r3, r13, lbl_804D5B88@sda21
/* 80337D40 00334920  38 80 02 E3 */	li r4, 0x2e3
/* 80337D44 00334924  48 00 D9 E5 */	bl OSPanic
lbl_80337D48:
/* 80337D48 00334928  7C 9D E2 15 */	add. r4, r29, r28
/* 80337D4C 0033492C  41 80 00 14 */	blt lbl_80337D60
/* 80337D50 00334930  80 7A 00 34 */	lwz r3, 0x34(r26)
/* 80337D54 00334934  38 03 00 20 */	addi r0, r3, 0x20
/* 80337D58 00334938  7C 04 00 40 */	cmplw r4, r0
/* 80337D5C 0033493C  41 80 00 1C */	blt lbl_80337D78
lbl_80337D60:
/* 80337D60 00334940  3C 60 80 40 */	lis r3, lbl_80400E48@ha
/* 80337D64 00334944  4C C6 31 82 */	crclr 6
/* 80337D68 00334948  38 A3 0E 48 */	addi r5, r3, lbl_80400E48@l
/* 80337D6C 0033494C  38 6D A4 E8 */	addi r3, r13, lbl_804D5B88@sda21
/* 80337D70 00334950  38 80 02 E9 */	li r4, 0x2e9
/* 80337D74 00334954  48 00 D9 B5 */	bl OSPanic
lbl_80337D78:
/* 80337D78 00334958  93 DA 00 38 */	stw r30, 0x38(r26)
/* 80337D7C 0033495C  3C 60 80 33 */	lis r3, cbForReadAsync@ha
/* 80337D80 00334960  38 E3 7D B8 */	addi r7, r3, cbForReadAsync@l
/* 80337D84 00334964  80 1A 00 30 */	lwz r0, 0x30(r26)
/* 80337D88 00334968  38 7A 00 00 */	addi r3, r26, 0
/* 80337D8C 0033496C  38 9B 00 00 */	addi r4, r27, 0
/* 80337D90 00334970  38 BC 00 00 */	addi r5, r28, 0
/* 80337D94 00334974  39 1F 00 00 */	addi r8, r31, 0
/* 80337D98 00334978  7C C0 EA 14 */	add r6, r0, r29
/* 80337D9C 0033497C  48 00 1A ED */	bl DVDReadAbsAsyncPrio
/* 80337DA0 00334980  BB 41 00 20 */	lmw r26, 0x20(r1)
/* 80337DA4 00334984  38 60 00 01 */	li r3, 1
/* 80337DA8 00334988  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80337DAC 0033498C  38 21 00 38 */	addi r1, r1, 0x38
/* 80337DB0 00334990  7C 08 03 A6 */	mtlr r0
/* 80337DB4 00334994  4E 80 00 20 */	blr 

.global cbForReadAsync
cbForReadAsync:
/* 80337DB8 00334998  7C 08 02 A6 */	mflr r0
/* 80337DBC 0033499C  90 01 00 04 */	stw r0, 4(r1)
/* 80337DC0 003349A0  94 21 FF F8 */	stwu r1, -8(r1)
/* 80337DC4 003349A4  81 84 00 38 */	lwz r12, 0x38(r4)
/* 80337DC8 003349A8  28 0C 00 00 */	cmplwi r12, 0
/* 80337DCC 003349AC  41 82 00 0C */	beq lbl_80337DD8
/* 80337DD0 003349B0  7D 88 03 A6 */	mtlr r12
/* 80337DD4 003349B4  4E 80 00 21 */	blrl 
lbl_80337DD8:
/* 80337DD8 003349B8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80337DDC 003349BC  38 21 00 08 */	addi r1, r1, 8
/* 80337DE0 003349C0  7C 08 03 A6 */	mtlr r0
/* 80337DE4 003349C4  4E 80 00 20 */	blr 


.section .data
    .balign 8
.global lbl_80400D80
lbl_80400D80:
    .asciz "DVDConvertEntrynumToPath(possibly DVDOpen or DVDChangeDir or DVDOpenDir): specified directory or file (%s) doesn't match standard 8.3 format. This is a temporary restriction and will be removed soon\n"
    .balign 4
.global lbl_80400E48
lbl_80400E48:
    .asciz "DVDReadAsync(): specified area is out of the file  "
    .balign 4


.section .sdata
    .balign 8
.global lbl_804D5B88
lbl_804D5B88:
    .asciz "dvdfs.c"
    .balign 4


.section .sbss
    .balign 8
.global lbl_804D7278
lbl_804D7278:
	.skip 0x4
.global FstStart
FstStart:
	.skip 0x4
.global FstStringStart
FstStringStart:
	.skip 0x4
.global MaxEntryNum
MaxEntryNum:
	.skip 0x4
.global currentDirectory
currentDirectory:
	.skip 0x4
.global __DVDLongFileNameFlag
__DVDLongFileNameFlag:
	.skip 0x4
