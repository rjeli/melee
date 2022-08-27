.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global splGetHelmite
splGetHelmite:
/* 80378A34 00375614  ED 62 00 B2 */	fmuls f11, f2, f2
/* 80378A38 00375618  C0 02 EC 44 */	lfs f0, lbl_804DE624@sda21(r2)
/* 80378A3C 0037561C  ED 41 00 72 */	fmuls f10, f1, f1
/* 80378A40 00375620  C1 02 EC 40 */	lfs f8, lbl_804DE620@sda21(r2)
/* 80378A44 00375624  C0 E2 EC 48 */	lfs f7, lbl_804DE628@sda21(r2)
/* 80378A48 00375628  ED 2B 00 B2 */	fmuls f9, f11, f2
/* 80378A4C 0037562C  EC 00 02 F2 */	fmuls f0, f0, f11
/* 80378A50 00375630  ED 6B 00 72 */	fmuls f11, f11, f1
/* 80378A54 00375634  ED 2A 02 72 */	fmuls f9, f10, f9
/* 80378A58 00375638  ED 40 02 B2 */	fmuls f10, f0, f10
/* 80378A5C 0037563C  EC 08 02 72 */	fmuls f0, f8, f9
/* 80378A60 00375640  ED 29 58 28 */	fsubs f9, f9, f11
/* 80378A64 00375644  EC 20 00 72 */	fmuls f1, f0, f1
/* 80378A68 00375648  ED 09 58 28 */	fsubs f8, f9, f11
/* 80378A6C 0037564C  FC 00 08 50 */	fneg f0, f1
/* 80378A70 00375650  EC 21 50 28 */	fsubs f1, f1, f10
/* 80378A74 00375654  EC 42 40 2A */	fadds f2, f2, f8
/* 80378A78 00375658  EC 00 50 2A */	fadds f0, f0, f10
/* 80378A7C 0037565C  EC 27 08 2A */	fadds f1, f7, f1
/* 80378A80 00375660  EC 04 00 32 */	fmuls f0, f4, f0
/* 80378A84 00375664  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 80378A88 00375668  EC 05 00 BA */	fmadds f0, f5, f2, f0
/* 80378A8C 0037566C  EC 26 02 7A */	fmadds f1, f6, f9, f0
/* 80378A90 00375670  4E 80 00 20 */	blr 

.global splGetSplinePoint
splGetSplinePoint:
/* 80378A94 00375674  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 80378A98 00375678  C1 02 EC 58 */	lfs f8, lbl_804DE638@sda21(r2)
/* 80378A9C 0037567C  FC 01 40 40 */	fcmpo cr0, f1, f8
/* 80378AA0 00375680  41 80 04 90 */	blt lbl_80378F30
/* 80378AA4 00375684  C0 02 EC 48 */	lfs f0, lbl_804DE628@sda21(r2)
/* 80378AA8 00375688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80378AAC 0037568C  40 81 00 08 */	ble lbl_80378AB4
/* 80378AB0 00375690  48 00 04 80 */	b lbl_80378F30
lbl_80378AB4:
/* 80378AB4 00375694  40 80 03 24 */	bge lbl_80378DD8
/* 80378AB8 00375698  A8 A4 00 02 */	lha r5, 2(r4)
/* 80378ABC 0037569C  3C C0 43 30 */	lis r6, 0x4330
/* 80378AC0 003756A0  88 04 00 00 */	lbz r0, 0(r4)
/* 80378AC4 003756A4  38 A5 FF FF */	addi r5, r5, -1
/* 80378AC8 003756A8  C8 62 EC 60 */	lfd f3, lbl_804DE640@sda21(r2)
/* 80378ACC 003756AC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80378AD0 003756B0  90 A1 00 54 */	stw r5, 0x54(r1)
/* 80378AD4 003756B4  2C 00 00 02 */	cmpwi r0, 2
/* 80378AD8 003756B8  90 C1 00 50 */	stw r6, 0x50(r1)
/* 80378ADC 003756BC  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 80378AE0 003756C0  EC 42 18 28 */	fsubs f2, f2, f3
/* 80378AE4 003756C4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80378AE8 003756C8  FC 20 10 1E */	fctiwz f1, f2
/* 80378AEC 003756CC  D8 21 00 40 */	stfd f1, 0x40(r1)
/* 80378AF0 003756D0  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 80378AF4 003756D4  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 80378AF8 003756D8  7C A5 07 34 */	extsh r5, r5
/* 80378AFC 003756DC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80378B00 003756E0  80 E1 00 4C */	lwz r7, 0x4c(r1)
/* 80378B04 003756E4  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 80378B08 003756E8  90 C1 00 38 */	stw r6, 0x38(r1)
/* 80378B0C 003756EC  C8 21 00 38 */	lfd f1, 0x38(r1)
/* 80378B10 003756F0  EC 21 18 28 */	fsubs f1, f1, f3
/* 80378B14 003756F4  EC 42 08 28 */	fsubs f2, f2, f1
/* 80378B18 003756F8  41 82 01 1C */	beq lbl_80378C34
/* 80378B1C 003756FC  40 80 00 14 */	bge lbl_80378B30
/* 80378B20 00375700  2C 00 00 00 */	cmpwi r0, 0
/* 80378B24 00375704  41 82 00 18 */	beq lbl_80378B3C
/* 80378B28 00375708  40 80 00 64 */	bge lbl_80378B8C
/* 80378B2C 0037570C  48 00 04 04 */	b lbl_80378F30
lbl_80378B30:
/* 80378B30 00375710  2C 00 00 04 */	cmpwi r0, 4
/* 80378B34 00375714  40 80 03 FC */	bge lbl_80378F30
/* 80378B38 00375718  48 00 01 CC */	b lbl_80378D04
lbl_80378B3C:
/* 80378B3C 0037571C  7C E0 07 34 */	extsh r0, r7
/* 80378B40 00375720  80 84 00 08 */	lwz r4, 8(r4)
/* 80378B44 00375724  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80378B48 00375728  7C 84 02 14 */	add r4, r4, r0
/* 80378B4C 0037572C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80378B50 00375730  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80378B54 00375734  EC 00 08 28 */	fsubs f0, f0, f1
/* 80378B58 00375738  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 80378B5C 0037573C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80378B60 00375740  C0 24 00 04 */	lfs f1, 4(r4)
/* 80378B64 00375744  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80378B68 00375748  EC 00 08 28 */	fsubs f0, f0, f1
/* 80378B6C 0037574C  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 80378B70 00375750  D0 03 00 04 */	stfs f0, 4(r3)
/* 80378B74 00375754  C0 24 00 08 */	lfs f1, 8(r4)
/* 80378B78 00375758  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80378B7C 0037575C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80378B80 00375760  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 80378B84 00375764  D0 03 00 08 */	stfs f0, 8(r3)
/* 80378B88 00375768  48 00 03 A8 */	b lbl_80378F30
lbl_80378B8C:
/* 80378B8C 0037576C  EC A0 10 28 */	fsubs f5, f0, f2
/* 80378B90 00375770  C0 22 EC 44 */	lfs f1, lbl_804DE624@sda21(r2)
/* 80378B94 00375774  ED 02 00 B2 */	fmuls f8, f2, f2
/* 80378B98 00375778  7C E0 07 34 */	extsh r0, r7
/* 80378B9C 0037577C  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80378BA0 00375780  EC 85 01 72 */	fmuls f4, f5, f5
/* 80378BA4 00375784  80 84 00 08 */	lwz r4, 8(r4)
/* 80378BA8 00375788  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80378BAC 0037578C  7C 84 02 14 */	add r4, r4, r0
/* 80378BB0 00375790  EC 61 02 32 */	fmuls f3, f1, f8
/* 80378BB4 00375794  EC C0 01 32 */	fmuls f6, f0, f4
/* 80378BB8 00375798  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80378BBC 0037579C  EC E4 01 72 */	fmuls f7, f4, f5
/* 80378BC0 003757A0  C0 24 00 00 */	lfs f1, 0(r4)
/* 80378BC4 003757A4  EC A3 01 72 */	fmuls f5, f3, f5
/* 80378BC8 003757A8  EC 00 01 B2 */	fmuls f0, f0, f6
/* 80378BCC 003757AC  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 80378BD0 003757B0  EC 88 00 B2 */	fmuls f4, f8, f2
/* 80378BD4 003757B4  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 80378BD8 003757B8  EC 01 01 FA */	fmadds f0, f1, f7, f0
/* 80378BDC 003757BC  EC 03 01 7A */	fmadds f0, f3, f5, f0
/* 80378BE0 003757C0  EC 02 01 3A */	fmadds f0, f2, f4, f0
/* 80378BE4 003757C4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80378BE8 003757C8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80378BEC 003757CC  C0 24 00 04 */	lfs f1, 4(r4)
/* 80378BF0 003757D0  EC 00 01 B2 */	fmuls f0, f0, f6
/* 80378BF4 003757D4  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80378BF8 003757D8  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 80378BFC 003757DC  EC 01 01 FA */	fmadds f0, f1, f7, f0
/* 80378C00 003757E0  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 80378C04 003757E4  EC 03 01 3A */	fmadds f0, f3, f4, f0
/* 80378C08 003757E8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80378C0C 003757EC  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80378C10 003757F0  C0 24 00 08 */	lfs f1, 8(r4)
/* 80378C14 003757F4  EC 00 01 B2 */	fmuls f0, f0, f6
/* 80378C18 003757F8  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 80378C1C 003757FC  C0 64 00 2C */	lfs f3, 0x2c(r4)
/* 80378C20 00375800  EC 01 01 FA */	fmadds f0, f1, f7, f0
/* 80378C24 00375804  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 80378C28 00375808  EC 03 01 3A */	fmadds f0, f3, f4, f0
/* 80378C2C 0037580C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80378C30 00375810  48 00 03 00 */	b lbl_80378F30
lbl_80378C34:
/* 80378C34 00375814  ED 82 00 B2 */	fmuls f12, f2, f2
/* 80378C38 00375818  C0 22 EC 54 */	lfs f1, lbl_804DE634@sda21(r2)
/* 80378C3C 0037581C  7C E0 07 34 */	extsh r0, r7
/* 80378C40 00375820  C0 E2 EC 44 */	lfs f7, lbl_804DE624@sda21(r2)
/* 80378C44 00375824  ED 40 10 28 */	fsubs f10, f0, f2
/* 80378C48 00375828  ED 6C 00 B2 */	fmuls f11, f12, f2
/* 80378C4C 0037582C  C1 22 EC 4C */	lfs f9, lbl_804DE62C@sda21(r2)
/* 80378C50 00375830  EC 21 03 32 */	fmuls f1, f1, f12
/* 80378C54 00375834  C0 82 EC 50 */	lfs f4, lbl_804DE630@sda21(r2)
/* 80378C58 00375838  EC A9 02 B2 */	fmuls f5, f9, f10
/* 80378C5C 0037583C  EC 67 0A F8 */	fmsubs f3, f7, f11, f1
/* 80378C60 00375840  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80378C64 00375844  FC 20 58 50 */	fneg f1, f11
/* 80378C68 00375848  80 84 00 08 */	lwz r4, 8(r4)
/* 80378C6C 0037584C  ED 0A 01 72 */	fmuls f8, f10, f5
/* 80378C70 00375850  7C 84 02 14 */	add r4, r4, r0
/* 80378C74 00375854  EC C4 18 2A */	fadds f6, f4, f3
/* 80378C78 00375858  EC A1 60 2A */	fadds f5, f1, f12
/* 80378C7C 0037585C  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 80378C80 00375860  EC 2A 02 32 */	fmuls f1, f10, f8
/* 80378C84 00375864  C0 84 00 00 */	lfs f4, 0(r4)
/* 80378C88 00375868  ED 49 01 B2 */	fmuls f10, f9, f6
/* 80378C8C 0037586C  EC C2 28 2A */	fadds f6, f2, f5
/* 80378C90 00375870  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80378C94 00375874  ED 09 02 F2 */	fmuls f8, f9, f11
/* 80378C98 00375878  C0 A4 00 24 */	lfs f5, 0x24(r4)
/* 80378C9C 0037587C  EC C7 01 BA */	fmadds f6, f7, f6, f0
/* 80378CA0 00375880  EC 03 02 B2 */	fmuls f0, f3, f10
/* 80378CA4 00375884  EC C9 01 B2 */	fmuls f6, f9, f6
/* 80378CA8 00375888  EC 04 00 7A */	fmadds f0, f4, f1, f0
/* 80378CAC 0037588C  EC 02 01 BA */	fmadds f0, f2, f6, f0
/* 80378CB0 00375890  EC 05 02 3A */	fmadds f0, f5, f8, f0
/* 80378CB4 00375894  D0 03 00 00 */	stfs f0, 0(r3)
/* 80378CB8 00375898  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80378CBC 0037589C  C0 44 00 04 */	lfs f2, 4(r4)
/* 80378CC0 003758A0  EC 00 02 B2 */	fmuls f0, f0, f10
/* 80378CC4 003758A4  C0 64 00 1C */	lfs f3, 0x1c(r4)
/* 80378CC8 003758A8  C0 84 00 28 */	lfs f4, 0x28(r4)
/* 80378CCC 003758AC  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80378CD0 003758B0  EC 03 01 BA */	fmadds f0, f3, f6, f0
/* 80378CD4 003758B4  EC 04 02 3A */	fmadds f0, f4, f8, f0
/* 80378CD8 003758B8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80378CDC 003758BC  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80378CE0 003758C0  C0 44 00 08 */	lfs f2, 8(r4)
/* 80378CE4 003758C4  EC 00 02 B2 */	fmuls f0, f0, f10
/* 80378CE8 003758C8  C0 64 00 20 */	lfs f3, 0x20(r4)
/* 80378CEC 003758CC  C0 84 00 2C */	lfs f4, 0x2c(r4)
/* 80378CF0 003758D0  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80378CF4 003758D4  EC 03 01 BA */	fmadds f0, f3, f6, f0
/* 80378CF8 003758D8  EC 04 02 3A */	fmadds f0, f4, f8, f0
/* 80378CFC 003758DC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80378D00 003758E0  48 00 02 30 */	b lbl_80378F30
lbl_80378D04:
/* 80378D04 003758E4  ED 22 00 B2 */	fmuls f9, f2, f2
/* 80378D08 003758E8  7C E0 07 34 */	extsh r0, r7
/* 80378D0C 003758EC  C1 44 00 04 */	lfs f10, 4(r4)
/* 80378D10 003758F0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80378D14 003758F4  C0 62 EC 44 */	lfs f3, lbl_804DE624@sda21(r2)
/* 80378D18 003758F8  C0 E2 EC 40 */	lfs f7, lbl_804DE620@sda21(r2)
/* 80378D1C 003758FC  ED 09 00 B2 */	fmuls f8, f9, f2
/* 80378D20 00375900  EC 2A 18 28 */	fsubs f1, f10, f3
/* 80378D24 00375904  80 84 00 08 */	lwz r4, 8(r4)
/* 80378D28 00375908  EC 87 50 28 */	fsubs f4, f7, f10
/* 80378D2C 0037590C  FC A0 40 50 */	fneg f5, f8
/* 80378D30 00375910  EC 21 02 72 */	fmuls f1, f1, f9
/* 80378D34 00375914  EC 67 1A BC */	fnmsubs f3, f7, f10, f3
/* 80378D38 00375918  7C 84 02 14 */	add r4, r4, r0
/* 80378D3C 0037591C  EC C7 2A 7A */	fmadds f6, f7, f9, f5
/* 80378D40 00375920  EC A4 0A 3A */	fmadds f5, f4, f8, f1
/* 80378D44 00375924  EC 8A 38 28 */	fsubs f4, f10, f7
/* 80378D48 00375928  EC C6 10 28 */	fsubs f6, f6, f2
/* 80378D4C 0037592C  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80378D50 00375930  EC E0 28 2A */	fadds f7, f0, f5
/* 80378D54 00375934  EC 63 02 72 */	fmuls f3, f3, f9
/* 80378D58 00375938  EC CA 01 B2 */	fmuls f6, f10, f6
/* 80378D5C 0037593C  EC 01 01 F2 */	fmuls f0, f1, f7
/* 80378D60 00375940  C0 24 00 00 */	lfs f1, 0(r4)
/* 80378D64 00375944  EC 84 1A 3A */	fmadds f4, f4, f8, f3
/* 80378D68 00375948  EC 68 48 28 */	fsubs f3, f8, f9
/* 80378D6C 0037594C  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 80378D70 00375950  EC AA 20 BA */	fmadds f5, f10, f2, f4
/* 80378D74 00375954  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80378D78 00375958  EC 8A 00 F2 */	fmuls f4, f10, f3
/* 80378D7C 0037595C  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 80378D80 00375960  EC 01 01 7A */	fmadds f0, f1, f5, f0
/* 80378D84 00375964  EC 02 01 3A */	fmadds f0, f2, f4, f0
/* 80378D88 00375968  D0 03 00 00 */	stfs f0, 0(r3)
/* 80378D8C 0037596C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80378D90 00375970  C0 24 00 04 */	lfs f1, 4(r4)
/* 80378D94 00375974  EC 00 01 F2 */	fmuls f0, f0, f7
/* 80378D98 00375978  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80378D9C 0037597C  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 80378DA0 00375980  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 80378DA4 00375984  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 80378DA8 00375988  EC 03 01 3A */	fmadds f0, f3, f4, f0
/* 80378DAC 0037598C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80378DB0 00375990  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80378DB4 00375994  C0 24 00 08 */	lfs f1, 8(r4)
/* 80378DB8 00375998  EC 00 01 F2 */	fmuls f0, f0, f7
/* 80378DBC 0037599C  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 80378DC0 003759A0  C0 64 00 2C */	lfs f3, 0x2c(r4)
/* 80378DC4 003759A4  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 80378DC8 003759A8  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 80378DCC 003759AC  EC 03 01 3A */	fmadds f0, f3, f4, f0
/* 80378DD0 003759B0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80378DD4 003759B4  48 00 01 5C */	b lbl_80378F30
lbl_80378DD8:
/* 80378DD8 003759B8  88 04 00 00 */	lbz r0, 0(r4)
/* 80378DDC 003759BC  A8 A4 00 02 */	lha r5, 2(r4)
/* 80378DE0 003759C0  2C 00 00 02 */	cmpwi r0, 2
/* 80378DE4 003759C4  38 A5 FF FF */	addi r5, r5, -1
/* 80378DE8 003759C8  41 82 00 7C */	beq lbl_80378E64
/* 80378DEC 003759CC  40 80 00 14 */	bge lbl_80378E00
/* 80378DF0 003759D0  2C 00 00 00 */	cmpwi r0, 0
/* 80378DF4 003759D4  41 82 00 18 */	beq lbl_80378E0C
/* 80378DF8 003759D8  40 80 00 40 */	bge lbl_80378E38
/* 80378DFC 003759DC  48 00 01 34 */	b lbl_80378F30
lbl_80378E00:
/* 80378E00 003759E0  2C 00 00 04 */	cmpwi r0, 4
/* 80378E04 003759E4  40 80 01 2C */	bge lbl_80378F30
/* 80378E08 003759E8  48 00 00 FC */	b lbl_80378F04
lbl_80378E0C:
/* 80378E0C 003759EC  7C A0 07 34 */	extsh r0, r5
/* 80378E10 003759F0  80 84 00 08 */	lwz r4, 8(r4)
/* 80378E14 003759F4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80378E18 003759F8  7C A4 02 14 */	add r5, r4, r0
/* 80378E1C 003759FC  80 85 00 00 */	lwz r4, 0(r5)
/* 80378E20 00375A00  80 05 00 04 */	lwz r0, 4(r5)
/* 80378E24 00375A04  90 83 00 00 */	stw r4, 0(r3)
/* 80378E28 00375A08  90 03 00 04 */	stw r0, 4(r3)
/* 80378E2C 00375A0C  80 05 00 08 */	lwz r0, 8(r5)
/* 80378E30 00375A10  90 03 00 08 */	stw r0, 8(r3)
/* 80378E34 00375A14  48 00 00 FC */	b lbl_80378F30
lbl_80378E38:
/* 80378E38 00375A18  7C A0 07 34 */	extsh r0, r5
/* 80378E3C 00375A1C  80 84 00 08 */	lwz r4, 8(r4)
/* 80378E40 00375A20  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80378E44 00375A24  7C A4 02 14 */	add r5, r4, r0
/* 80378E48 00375A28  80 85 00 00 */	lwz r4, 0(r5)
/* 80378E4C 00375A2C  80 05 00 04 */	lwz r0, 4(r5)
/* 80378E50 00375A30  90 83 00 00 */	stw r4, 0(r3)
/* 80378E54 00375A34  90 03 00 04 */	stw r0, 4(r3)
/* 80378E58 00375A38  80 05 00 08 */	lwz r0, 8(r5)
/* 80378E5C 00375A3C  90 03 00 08 */	stw r0, 8(r3)
/* 80378E60 00375A40  48 00 00 D0 */	b lbl_80378F30
lbl_80378E64:
/* 80378E64 00375A44  FC 20 00 50 */	fneg f1, f0
/* 80378E68 00375A48  7C A0 07 34 */	extsh r0, r5
/* 80378E6C 00375A4C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80378E70 00375A50  80 04 00 08 */	lwz r0, 8(r4)
/* 80378E74 00375A54  C0 E2 EC 4C */	lfs f7, lbl_804DE62C@sda21(r2)
/* 80378E78 00375A58  EC 41 00 2A */	fadds f2, f1, f0
/* 80378E7C 00375A5C  38 85 FF F4 */	addi r4, r5, -12
/* 80378E80 00375A60  7C 80 22 14 */	add r4, r0, r4
/* 80378E84 00375A64  C0 C2 EC 44 */	lfs f6, lbl_804DE624@sda21(r2)
/* 80378E88 00375A68  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80378E8C 00375A6C  EC A0 10 2A */	fadds f5, f0, f2
/* 80378E90 00375A70  C0 44 00 00 */	lfs f2, 0(r4)
/* 80378E94 00375A74  EC 21 01 F2 */	fmuls f1, f1, f7
/* 80378E98 00375A78  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 80378E9C 00375A7C  C0 84 00 24 */	lfs f4, 0x24(r4)
/* 80378EA0 00375A80  EC A6 01 7A */	fmadds f5, f6, f5, f0
/* 80378EA4 00375A84  EC 02 0A 3A */	fmadds f0, f2, f8, f1
/* 80378EA8 00375A88  EC A7 01 72 */	fmuls f5, f7, f5
/* 80378EAC 00375A8C  EC 03 01 7A */	fmadds f0, f3, f5, f0
/* 80378EB0 00375A90  EC 04 01 FA */	fmadds f0, f4, f7, f0
/* 80378EB4 00375A94  D0 03 00 00 */	stfs f0, 0(r3)
/* 80378EB8 00375A98  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80378EBC 00375A9C  C0 24 00 04 */	lfs f1, 4(r4)
/* 80378EC0 00375AA0  EC 00 01 F2 */	fmuls f0, f0, f7
/* 80378EC4 00375AA4  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80378EC8 00375AA8  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 80378ECC 00375AAC  EC 01 02 3A */	fmadds f0, f1, f8, f0
/* 80378ED0 00375AB0  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 80378ED4 00375AB4  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 80378ED8 00375AB8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80378EDC 00375ABC  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80378EE0 00375AC0  C0 24 00 08 */	lfs f1, 8(r4)
/* 80378EE4 00375AC4  EC 00 01 F2 */	fmuls f0, f0, f7
/* 80378EE8 00375AC8  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 80378EEC 00375ACC  C0 64 00 2C */	lfs f3, 0x2c(r4)
/* 80378EF0 00375AD0  EC 01 02 3A */	fmadds f0, f1, f8, f0
/* 80378EF4 00375AD4  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 80378EF8 00375AD8  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 80378EFC 00375ADC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80378F00 00375AE0  48 00 00 30 */	b lbl_80378F30
lbl_80378F04:
/* 80378F04 00375AE4  7C A0 07 34 */	extsh r0, r5
/* 80378F08 00375AE8  80 A4 00 08 */	lwz r5, 8(r4)
/* 80378F0C 00375AEC  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80378F10 00375AF0  38 04 00 0C */	addi r0, r4, 0xc
/* 80378F14 00375AF4  7C A5 02 14 */	add r5, r5, r0
/* 80378F18 00375AF8  80 85 00 00 */	lwz r4, 0(r5)
/* 80378F1C 00375AFC  80 05 00 04 */	lwz r0, 4(r5)
/* 80378F20 00375B00  90 83 00 00 */	stw r4, 0(r3)
/* 80378F24 00375B04  90 03 00 04 */	stw r0, 4(r3)
/* 80378F28 00375B08  80 05 00 08 */	lwz r0, 8(r5)
/* 80378F2C 00375B0C  90 03 00 08 */	stw r0, 8(r3)
lbl_80378F30:
/* 80378F30 00375B10  38 21 00 58 */	addi r1, r1, 0x58
/* 80378F34 00375B14  4E 80 00 20 */	blr 

.global splArcLengthGetParameter
splArcLengthGetParameter:
/* 80378F38 00375B18  7C 08 02 A6 */	mflr r0
/* 80378F3C 00375B1C  90 01 00 04 */	stw r0, 4(r1)
/* 80378F40 00375B20  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80378F44 00375B24  DB E1 00 D8 */	stfd f31, 0xd8(r1)
/* 80378F48 00375B28  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80378F4C 00375B2C  DB A1 00 C8 */	stfd f29, 0xc8(r1)
/* 80378F50 00375B30  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 80378F54 00375B34  DB 61 00 B8 */	stfd f27, 0xb8(r1)
/* 80378F58 00375B38  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 80378F5C 00375B3C  DB 21 00 A8 */	stfd f25, 0xa8(r1)
/* 80378F60 00375B40  DB 01 00 A0 */	stfd f24, 0xa0(r1)
/* 80378F64 00375B44  DA E1 00 98 */	stfd f23, 0x98(r1)
/* 80378F68 00375B48  DA C1 00 90 */	stfd f22, 0x90(r1)
/* 80378F6C 00375B4C  DA A1 00 88 */	stfd f21, 0x88(r1)
/* 80378F70 00375B50  DA 81 00 80 */	stfd f20, 0x80(r1)
/* 80378F74 00375B54  DA 61 00 78 */	stfd f19, 0x78(r1)
/* 80378F78 00375B58  DA 41 00 70 */	stfd f18, 0x70(r1)
/* 80378F7C 00375B5C  DA 21 00 68 */	stfd f17, 0x68(r1)
/* 80378F80 00375B60  DA 01 00 60 */	stfd f16, 0x60(r1)
/* 80378F84 00375B64  D9 E1 00 58 */	stfd f15, 0x58(r1)
/* 80378F88 00375B68  BF 61 00 44 */	stmw r27, 0x44(r1)
/* 80378F8C 00375B6C  7C 7B 1B 78 */	mr r27, r3
/* 80378F90 00375B70  3B 80 00 00 */	li r28, 0
/* 80378F94 00375B74  C3 E2 EC 58 */	lfs f31, lbl_804DE638@sda21(r2)
/* 80378F98 00375B78  C3 C2 EC 48 */	lfs f30, lbl_804DE628@sda21(r2)
/* 80378F9C 00375B7C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80378FA0 00375B80  4C 40 13 82 */	cror 2, 0, 2
/* 80378FA4 00375B84  40 82 00 0C */	bne lbl_80378FB0
/* 80378FA8 00375B88  FC 20 F8 90 */	fmr f1, f31
/* 80378FAC 00375B8C  48 00 02 C4 */	b lbl_80379270
lbl_80378FB0:
/* 80378FB0 00375B90  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80378FB4 00375B94  4C 41 13 82 */	cror 2, 1, 2
/* 80378FB8 00375B98  40 82 00 0C */	bne lbl_80378FC4
/* 80378FBC 00375B9C  FC 20 F0 90 */	fmr f1, f30
/* 80378FC0 00375BA0  48 00 02 B0 */	b lbl_80379270
lbl_80378FC4:
/* 80378FC4 00375BA4  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 80378FC8 00375BA8  7C 83 23 78 */	mr r3, r4
/* 80378FCC 00375BAC  48 00 00 0C */	b lbl_80378FD8
lbl_80378FD0:
/* 80378FD0 00375BB0  38 63 00 04 */	addi r3, r3, 4
/* 80378FD4 00375BB4  3B 9C 00 01 */	addi r28, r28, 1
lbl_80378FD8:
/* 80378FD8 00375BB8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80378FDC 00375BBC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80378FE0 00375BC0  41 80 FF F0 */	blt lbl_80378FD0
/* 80378FE4 00375BC4  88 1B 00 00 */	lbz r0, 0(r27)
/* 80378FE8 00375BC8  2C 00 00 00 */	cmpwi r0, 0
/* 80378FEC 00375BCC  41 82 00 14 */	beq lbl_80379000
/* 80378FF0 00375BD0  41 80 02 3C */	blt lbl_8037922C
/* 80378FF4 00375BD4  2C 00 00 04 */	cmpwi r0, 4
/* 80378FF8 00375BD8  40 80 02 34 */	bge lbl_8037922C
/* 80378FFC 00375BDC  48 00 00 24 */	b lbl_80379020
lbl_80379000:
/* 80379000 00375BE0  57 80 10 3A */	slwi r0, r28, 2
/* 80379004 00375BE4  7C 64 02 14 */	add r3, r4, r0
/* 80379008 00375BE8  7C 44 04 2E */	lfsx f2, r4, r0
/* 8037900C 00375BEC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80379010 00375BF0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80379014 00375BF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80379018 00375BF8  EF A1 00 24 */	fdivs f29, f1, f0
/* 8037901C 00375BFC  48 00 02 10 */	b lbl_8037922C
lbl_80379020:
/* 80379020 00375C00  57 80 10 3A */	slwi r0, r28, 2
/* 80379024 00375C04  C3 22 EC 58 */	lfs f25, lbl_804DE638@sda21(r2)
/* 80379028 00375C08  7C 04 04 2E */	lfsx f0, r4, r0
/* 8037902C 00375C0C  1F BC 00 14 */	mulli r29, r28, 0x14
/* 80379030 00375C10  C0 5B 00 0C */	lfs f2, 0xc(r27)
/* 80379034 00375C14  FE A0 C8 90 */	fmr f21, f25
/* 80379038 00375C18  EC 01 00 28 */	fsubs f0, f1, f0
/* 8037903C 00375C1C  FE 80 C8 90 */	fmr f20, f25
/* 80379040 00375C20  C3 62 EC 68 */	lfs f27, lbl_804DE648@sda21(r2)
/* 80379044 00375C24  EE C2 00 32 */	fmuls f22, f2, f0
/* 80379048 00375C28  C3 42 EC 50 */	lfs f26, lbl_804DE630@sda21(r2)
/* 8037904C 00375C2C  C3 82 EC 40 */	lfs f28, lbl_804DE620@sda21(r2)
/* 80379050 00375C30  C2 42 EC 74 */	lfs f18, lbl_804DE654@sda21(r2)
/* 80379054 00375C34  C2 22 EC 70 */	lfs f17, lbl_804DE650@sda21(r2)
/* 80379058 00375C38  C2 02 EC 6C */	lfs f16, lbl_804DE64C@sda21(r2)
/* 8037905C 00375C3C  C1 E2 EC 44 */	lfs f15, lbl_804DE624@sda21(r2)
/* 80379060 00375C40  48 00 01 B0 */	b lbl_80379210
lbl_80379064:
/* 80379064 00375C44  EC 1F F0 2A */	fadds f0, f31, f30
/* 80379068 00375C48  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8037906C 00375C4C  C3 02 EC 58 */	lfs f24, lbl_804DE638@sda21(r2)
/* 80379070 00375C50  3B E0 00 02 */	li r31, 2
/* 80379074 00375C54  7F C0 EA 14 */	add r30, r0, r29
/* 80379078 00375C58  EC 20 04 72 */	fmuls f1, f0, f17
/* 8037907C 00375C5C  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80379080 00375C60  FF A0 08 90 */	fmr f29, f1
/* 80379084 00375C64  EE E0 04 32 */	fmuls f23, f0, f16
/* 80379088 00375C68  EE 7F B8 2A */	fadds f19, f31, f23
lbl_8037908C:
/* 8037908C 00375C6C  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 80379090 00375C70  40 82 00 58 */	bne lbl_803790E8
/* 80379094 00375C74  EC F3 04 F2 */	fmuls f7, f19, f19
/* 80379098 00375C78  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8037909C 00375C7C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 803790A0 00375C80  C0 7E 00 08 */	lfs f3, 8(r30)
/* 803790A4 00375C84  EC C7 04 F2 */	fmuls f6, f7, f19
/* 803790A8 00375C88  C0 9E 00 0C */	lfs f4, 0xc(r30)
/* 803790AC 00375C8C  C0 BE 00 10 */	lfs f5, 0x10(r30)
/* 803790B0 00375C90  EC 26 04 F2 */	fmuls f1, f6, f19
/* 803790B4 00375C94  EC 00 01 B2 */	fmuls f0, f0, f6
/* 803790B8 00375C98  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 803790BC 00375C9C  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 803790C0 00375CA0  EC 04 04 FA */	fmadds f0, f4, f19, f0
/* 803790C4 00375CA4  EC 25 00 2A */	fadds f1, f5, f0
/* 803790C8 00375CA8  FC 01 C8 40 */	fcmpo cr0, f1, f25
/* 803790CC 00375CAC  40 80 00 10 */	bge lbl_803790DC
/* 803790D0 00375CB0  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 803790D4 00375CB4  40 81 00 08 */	ble lbl_803790DC
/* 803790D8 00375CB8  FC 20 C8 90 */	fmr f1, f25
lbl_803790DC:
/* 803790DC 00375CBC  4B C9 44 E1 */	bl sqrtf__Ff
/* 803790E0 00375CC0  EF 1A C0 7A */	fmadds f24, f26, f1, f24
/* 803790E4 00375CC4  48 00 00 54 */	b lbl_80379138
lbl_803790E8:
/* 803790E8 00375CC8  EC F3 04 F2 */	fmuls f7, f19, f19
/* 803790EC 00375CCC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 803790F0 00375CD0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 803790F4 00375CD4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 803790F8 00375CD8  EC C7 04 F2 */	fmuls f6, f7, f19
/* 803790FC 00375CDC  C0 9E 00 0C */	lfs f4, 0xc(r30)
/* 80379100 00375CE0  C0 BE 00 10 */	lfs f5, 0x10(r30)
/* 80379104 00375CE4  EC 26 04 F2 */	fmuls f1, f6, f19
/* 80379108 00375CE8  EC 00 01 B2 */	fmuls f0, f0, f6
/* 8037910C 00375CEC  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80379110 00375CF0  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 80379114 00375CF4  EC 04 04 FA */	fmadds f0, f4, f19, f0
/* 80379118 00375CF8  EC 25 00 2A */	fadds f1, f5, f0
/* 8037911C 00375CFC  FC 01 C8 40 */	fcmpo cr0, f1, f25
/* 80379120 00375D00  40 80 00 10 */	bge lbl_80379130
/* 80379124 00375D04  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 80379128 00375D08  40 81 00 08 */	ble lbl_80379130
/* 8037912C 00375D0C  FC 20 C8 90 */	fmr f1, f25
lbl_80379130:
/* 80379130 00375D10  4B C9 44 8D */	bl sqrtf__Ff
/* 80379134 00375D14  EF 1C C0 7A */	fmadds f24, f28, f1, f24
lbl_80379138:
/* 80379138 00375D18  3B FF 00 01 */	addi r31, r31, 1
/* 8037913C 00375D1C  EE 73 B8 2A */	fadds f19, f19, f23
/* 80379140 00375D20  2C 1F 00 08 */	cmpwi r31, 8
/* 80379144 00375D24  40 81 FF 48 */	ble lbl_8037908C
/* 80379148 00375D28  EC FF 07 F2 */	fmuls f7, f31, f31
/* 8037914C 00375D2C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80379150 00375D30  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80379154 00375D34  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80379158 00375D38  EC C7 07 F2 */	fmuls f6, f7, f31
/* 8037915C 00375D3C  C0 9E 00 0C */	lfs f4, 0xc(r30)
/* 80379160 00375D40  C0 BE 00 10 */	lfs f5, 0x10(r30)
/* 80379164 00375D44  EC 26 07 F2 */	fmuls f1, f6, f31
/* 80379168 00375D48  EC 00 01 B2 */	fmuls f0, f0, f6
/* 8037916C 00375D4C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80379170 00375D50  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 80379174 00375D54  EC 04 07 FA */	fmadds f0, f4, f31, f0
/* 80379178 00375D58  EC 25 00 2A */	fadds f1, f5, f0
/* 8037917C 00375D5C  FC 01 A8 40 */	fcmpo cr0, f1, f21
/* 80379180 00375D60  40 80 00 10 */	bge lbl_80379190
/* 80379184 00375D64  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 80379188 00375D68  40 81 00 08 */	ble lbl_80379190
/* 8037918C 00375D6C  FC 20 A8 90 */	fmr f1, f21
lbl_80379190:
/* 80379190 00375D70  4B C9 44 2D */	bl sqrtf__Ff
/* 80379194 00375D74  EC FD 07 72 */	fmuls f7, f29, f29
/* 80379198 00375D78  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8037919C 00375D7C  FE 60 08 90 */	fmr f19, f1
/* 803791A0 00375D80  C0 5E 00 00 */	lfs f2, 0(r30)
/* 803791A4 00375D84  C0 7E 00 08 */	lfs f3, 8(r30)
/* 803791A8 00375D88  EC C7 07 72 */	fmuls f6, f7, f29
/* 803791AC 00375D8C  C0 9E 00 0C */	lfs f4, 0xc(r30)
/* 803791B0 00375D90  C0 BE 00 10 */	lfs f5, 0x10(r30)
/* 803791B4 00375D94  EC 26 07 72 */	fmuls f1, f6, f29
/* 803791B8 00375D98  EC 00 01 B2 */	fmuls f0, f0, f6
/* 803791BC 00375D9C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 803791C0 00375DA0  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 803791C4 00375DA4  EC 04 07 7A */	fmadds f0, f4, f29, f0
/* 803791C8 00375DA8  EC 25 00 2A */	fadds f1, f5, f0
/* 803791CC 00375DAC  FC 01 A0 40 */	fcmpo cr0, f1, f20
/* 803791D0 00375DB0  40 80 00 10 */	bge lbl_803791E0
/* 803791D4 00375DB4  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 803791D8 00375DB8  40 81 00 08 */	ble lbl_803791E0
/* 803791DC 00375DBC  FC 20 A0 90 */	fmr f1, f20
lbl_803791E0:
/* 803791E0 00375DC0  4B C9 43 DD */	bl sqrtf__Ff
/* 803791E4 00375DC4  EC 18 98 2A */	fadds f0, f24, f19
/* 803791E8 00375DC8  EC 00 08 2A */	fadds f0, f0, f1
/* 803791EC 00375DCC  EC 17 00 32 */	fmuls f0, f23, f0
/* 803791F0 00375DD0  EC 20 78 24 */	fdivs f1, f0, f15
/* 803791F4 00375DD4  EC 12 08 2A */	fadds f0, f18, f1
/* 803791F8 00375DD8  FC 16 00 40 */	fcmpo cr0, f22, f0
/* 803791FC 00375DDC  40 80 00 0C */	bge lbl_80379208
/* 80379200 00375DE0  FF C0 E8 90 */	fmr f30, f29
/* 80379204 00375DE4  48 00 00 0C */	b lbl_80379210
lbl_80379208:
/* 80379208 00375DE8  FF E0 E8 90 */	fmr f31, f29
/* 8037920C 00375DEC  EE D6 08 28 */	fsubs f22, f22, f1
lbl_80379210:
/* 80379210 00375DF0  EC 1F F0 28 */	fsubs f0, f31, f30
/* 80379214 00375DF4  FC 00 C8 40 */	fcmpo cr0, f0, f25
/* 80379218 00375DF8  40 80 00 08 */	bge lbl_80379220
/* 8037921C 00375DFC  FC 00 00 50 */	fneg f0, f0
lbl_80379220:
/* 80379220 00375E00  FC 00 90 40 */	fcmpo cr0, f0, f18
/* 80379224 00375E04  4C 41 13 82 */	cror 2, 1, 2
/* 80379228 00375E08  41 82 FE 3C */	beq lbl_80379064
lbl_8037922C:
/* 8037922C 00375E0C  A8 1B 00 02 */	lha r0, 2(r27)
/* 80379230 00375E10  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 80379234 00375E14  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80379238 00375E18  3C 60 43 30 */	lis r3, 0x43300000@ha
/* 8037923C 00375E1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80379240 00375E20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80379244 00375E24  C8 62 EC 60 */	lfd f3, lbl_804DE640@sda21(r2)
/* 80379248 00375E28  90 61 00 38 */	stw r3, 0x38(r1)
/* 8037924C 00375E2C  C0 02 EC 48 */	lfs f0, lbl_804DE628@sda21(r2)
/* 80379250 00375E30  90 61 00 30 */	stw r3, 0x30(r1)
/* 80379254 00375E34  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 80379258 00375E38  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 8037925C 00375E3C  EC 42 18 28 */	fsubs f2, f2, f3
/* 80379260 00375E40  EC 21 18 28 */	fsubs f1, f1, f3
/* 80379264 00375E44  EC 5D 10 2A */	fadds f2, f29, f2
/* 80379268 00375E48  EC 01 00 28 */	fsubs f0, f1, f0
/* 8037926C 00375E4C  EC 22 00 24 */	fdivs f1, f2, f0
lbl_80379270:
/* 80379270 00375E50  BB 61 00 44 */	lmw r27, 0x44(r1)
/* 80379274 00375E54  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80379278 00375E58  CB E1 00 D8 */	lfd f31, 0xd8(r1)
/* 8037927C 00375E5C  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80379280 00375E60  CB A1 00 C8 */	lfd f29, 0xc8(r1)
/* 80379284 00375E64  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 80379288 00375E68  CB 61 00 B8 */	lfd f27, 0xb8(r1)
/* 8037928C 00375E6C  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 80379290 00375E70  CB 21 00 A8 */	lfd f25, 0xa8(r1)
/* 80379294 00375E74  CB 01 00 A0 */	lfd f24, 0xa0(r1)
/* 80379298 00375E78  CA E1 00 98 */	lfd f23, 0x98(r1)
/* 8037929C 00375E7C  CA C1 00 90 */	lfd f22, 0x90(r1)
/* 803792A0 00375E80  CA A1 00 88 */	lfd f21, 0x88(r1)
/* 803792A4 00375E84  CA 81 00 80 */	lfd f20, 0x80(r1)
/* 803792A8 00375E88  CA 61 00 78 */	lfd f19, 0x78(r1)
/* 803792AC 00375E8C  CA 41 00 70 */	lfd f18, 0x70(r1)
/* 803792B0 00375E90  CA 21 00 68 */	lfd f17, 0x68(r1)
/* 803792B4 00375E94  CA 01 00 60 */	lfd f16, 0x60(r1)
/* 803792B8 00375E98  C9 E1 00 58 */	lfd f15, 0x58(r1)
/* 803792BC 00375E9C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 803792C0 00375EA0  7C 08 03 A6 */	mtlr r0
/* 803792C4 00375EA4  4E 80 00 20 */	blr 

.global splArcLengthPoint
splArcLengthPoint:
/* 803792C8 00375EA8  7C 08 02 A6 */	mflr r0
/* 803792CC 00375EAC  90 01 00 04 */	stw r0, 4(r1)
/* 803792D0 00375EB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803792D4 00375EB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803792D8 00375EB8  3B E4 00 00 */	addi r31, r4, 0
/* 803792DC 00375EBC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803792E0 00375EC0  3B C3 00 00 */	addi r30, r3, 0x43300000@l
/* 803792E4 00375EC4  38 7F 00 00 */	addi r3, r31, 0
/* 803792E8 00375EC8  4B FF FC 51 */	bl splArcLengthGetParameter
/* 803792EC 00375ECC  38 7E 00 00 */	addi r3, r30, 0
/* 803792F0 00375ED0  38 9F 00 00 */	addi r4, r31, 0
/* 803792F4 00375ED4  4B FF F7 A1 */	bl splGetSplinePoint
/* 803792F8 00375ED8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803792FC 00375EDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80379300 00375EE0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80379304 00375EE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80379308 00375EE8  7C 08 03 A6 */	mtlr r0
/* 8037930C 00375EEC  4E 80 00 20 */	blr 


.section .sdata2
    .balign 8
.global lbl_804DE620
lbl_804DE620:
	.4byte 0x40000000
.global lbl_804DE624
lbl_804DE624:
	.4byte 0x40400000
.global lbl_804DE628
lbl_804DE628:
	.4byte 0x3F800000
.global lbl_804DE62C
lbl_804DE62C:
	.4byte 0x3E2AAAAB
.global lbl_804DE630
lbl_804DE630:
	.4byte 0x40800000
.global lbl_804DE634
lbl_804DE634:
	.4byte 0x40C00000
.global lbl_804DE638
lbl_804DE638:
	.4byte 0x00000000
	.4byte 0x00000000
.global lbl_804DE640
lbl_804DE640:
	.4byte 0x43300000
	.4byte 0x80000000
.global lbl_804DE648
lbl_804DE648:
	.4byte 0xBA83126F
.global lbl_804DE64C
lbl_804DE64C:
	.4byte 0x3E000000
.global lbl_804DE650
lbl_804DE650:
	.4byte 0x3F000000
.global lbl_804DE654
lbl_804DE654:
	.4byte 0x3727C5AC
