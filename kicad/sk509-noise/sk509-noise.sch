EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L synkie_symbols:Trans_NPN_Generic Q2
U 1 1 642FEC7F
P 4500 3950
F 0 "Q2" H 4638 3996 50  0000 L CNN
F 1 "Trans_NPN" H 4638 3905 50  0000 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 4500 3950 50  0001 C CNN
F 3 "" H 4500 3950 50  0001 C CNN
	1    4500 3950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R2
U 1 1 64306ACE
P 4550 2800
F 0 "R2" V 4343 2800 50  0000 C CNN
F 1 "4k7" V 4434 2800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 2800 50  0001 C CNN
F 3 "~" H 4550 2800 50  0001 C CNN
	1    4550 2800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R1
U 1 1 6430EDDB
P 3950 2800
F 0 "R1" V 3743 2800 50  0000 C CNN
F 1 "470k" V 3834 2800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3880 2800 50  0001 C CNN
F 3 "~" H 3950 2800 50  0001 C CNN
	1    3950 2800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Trans_NPN_Generic Q3
U 1 1 6430F068
P 5050 3400
F 0 "Q3" H 5188 3446 50  0000 L CNN
F 1 "Trans_NPN" H 5188 3355 50  0000 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 5050 3400 50  0001 C CNN
F 3 "" H 5050 3400 50  0001 C CNN
	1    5050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2500 3950 2550
Wire Wire Line
	4550 2650 4550 2550
Wire Wire Line
	4550 2550 3950 2550
Connection ~ 3950 2550
Wire Wire Line
	3950 2550 3950 2650
Wire Wire Line
	4550 2950 4550 3400
Connection ~ 4550 3400
Wire Wire Line
	4550 3400 4550 3700
Wire Wire Line
	4900 3400 4550 3400
$Comp
L synkie_symbols:R R7
U 1 1 6431EB5B
P 5100 3950
F 0 "R7" V 4893 3950 50  0000 C CNN
F 1 "inf" V 4984 3950 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 3950 50  0001 C CNN
F 3 "~" H 5100 3950 50  0001 C CNN
	1    5100 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5100 3600 5100 3700
$Comp
L synkie_symbols:C_Small C8
U 1 1 6432020A
P 5350 3700
F 0 "C8" V 5121 3700 50  0000 C CNN
F 1 "100n" V 5212 3700 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5350 3700 50  0001 C CNN
F 3 "~" H 5350 3700 50  0001 C CNN
	1    5350 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3700 5100 3700
Connection ~ 5100 3700
Wire Wire Line
	5100 3700 5100 3800
$Comp
L synkie_symbols:LMH6643 U1
U 1 1 643214DD
P 6450 3800
F 0 "U1" H 6450 3433 50  0000 C CNN
F 1 "LMH6643" H 6450 3524 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 6450 3800 50  0001 C CNN
F 3 "~" H 6450 3800 50  0001 C CNN
	1    6450 3800
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:R R10
U 1 1 643236E2
P 5800 3700
F 0 "R10" V 5593 3700 50  0000 C CNN
F 1 "100" V 5684 3700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 3700 50  0001 C CNN
F 3 "~" H 5800 3700 50  0001 C CNN
	1    5800 3700
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R13
U 1 1 64323AD7
P 6400 3300
F 0 "R13" V 6193 3300 50  0000 C CNN
F 1 "10k" V 6284 3300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 3300 50  0001 C CNN
F 3 "~" H 6400 3300 50  0001 C CNN
	1    6400 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 3700 5550 3700
Wire Wire Line
	5950 3700 6050 3700
Wire Wire Line
	6250 3300 6050 3300
Wire Wire Line
	6050 3300 6050 3700
Connection ~ 6050 3700
Wire Wire Line
	6050 3700 6150 3700
Wire Wire Line
	6750 3800 6900 3800
Wire Wire Line
	6900 3800 6900 3300
Wire Wire Line
	6900 3300 6550 3300
$Comp
L synkie_symbols:R R18
U 1 1 6432EA54
P 7200 3800
F 0 "R18" V 6993 3800 50  0000 C CNN
F 1 "75" V 7084 3800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7130 3800 50  0001 C CNN
F 3 "~" H 7200 3800 50  0001 C CNN
	1    7200 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 3800 6900 3800
Connection ~ 6900 3800
$Comp
L synkie_symbols:Conn_01x01 J3
U 1 1 6433197F
P 7650 3800
F 0 "J3" H 7568 4017 50  0000 C CNN
F 1 "Conn_01x01" H 7568 3926 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7650 3800 50  0001 C CNN
F 3 "~" H 7650 3800 50  0001 C CNN
	1    7650 3800
	1    0    0    1   
$EndComp
Wire Wire Line
	7350 3800 7450 3800
$Comp
L synkie_symbols:Conn_01x01 J2
U 1 1 6434B914
P 6050 3050
F 0 "J2" H 5968 3267 50  0000 C CNN
F 1 "Conn_01x01" H 5968 3176 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 6050 3050 50  0001 C CNN
F 3 "~" H 6050 3050 50  0001 C CNN
	1    6050 3050
	0    1    -1   0   
$EndComp
Wire Wire Line
	6050 3250 6050 3300
Connection ~ 6050 3300
$Comp
L synkie_symbols:GND #PWR04
U 1 1 64353286
P 6050 4400
F 0 "#PWR04" H 6050 4150 50  0001 C CNN
F 1 "GND" H 6055 4227 50  0000 C CNN
F 2 "" H 6050 4400 50  0001 C CNN
F 3 "" H 6050 4400 50  0001 C CNN
	1    6050 4400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LMH6643 U1
U 2 1 64354E49
P 7700 5150
F 0 "U1" H 7700 5517 50  0000 C CNN
F 1 "LMH6643" H 7700 5426 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 7700 5150 50  0001 C CNN
F 3 "~" H 7700 5150 50  0001 C CNN
	2    7700 5150
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:R R20
U 1 1 643557C8
P 7650 4550
F 0 "R20" V 7443 4550 50  0000 C CNN
F 1 "0" V 7534 4550 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7580 4550 50  0001 C CNN
F 3 "~" H 7650 4550 50  0001 C CNN
	1    7650 4550
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J4
U 1 1 6435764D
P 8700 5150
F 0 "J4" H 8618 5367 50  0000 C CNN
F 1 "Conn_01x01" H 8618 5276 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8700 5150 50  0001 C CNN
F 3 "~" H 8700 5150 50  0001 C CNN
	1    8700 5150
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:LMH6643 U1
U 3 1 6435C2CE
P 7400 1850
F 0 "U1" H 7358 1896 50  0000 L CNN
F 1 "LMH6643" H 7358 1805 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 7400 1850 50  0001 C CNN
F 3 "~" H 7400 1850 50  0001 C CNN
	3    7400 1850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C15
U 1 1 6436019F
P 7100 1650
F 0 "C15" H 7008 1604 50  0000 R CNN
F 1 "C_Small" H 7008 1695 50  0000 R CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7100 1650 50  0001 C CNN
F 3 "~" H 7100 1650 50  0001 C CNN
	1    7100 1650
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C16
U 1 1 6436077D
P 7100 2050
F 0 "C16" H 7008 2004 50  0000 R CNN
F 1 "C_Small" H 7008 2095 50  0000 R CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7100 2050 50  0001 C CNN
F 3 "~" H 7100 2050 50  0001 C CNN
	1    7100 2050
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR06
U 1 1 64360C21
P 6900 1900
F 0 "#PWR06" H 6900 1650 50  0001 C CNN
F 1 "GND" H 6905 1727 50  0000 C CNN
F 2 "" H 6900 1900 50  0001 C CNN
F 3 "" H 6900 1900 50  0001 C CNN
	1    6900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2150 7300 2200
Wire Wire Line
	7100 1550 7100 1500
Wire Wire Line
	7100 1500 7300 1500
Connection ~ 7300 1500
Wire Wire Line
	7300 1500 7300 1550
Wire Wire Line
	7100 2150 7100 2200
Wire Wire Line
	7100 2200 7300 2200
Connection ~ 7300 2200
Wire Wire Line
	7100 1750 7100 1850
Wire Wire Line
	6900 1900 6900 1850
Wire Wire Line
	6900 1850 7100 1850
Connection ~ 7100 1850
Wire Wire Line
	7100 1850 7100 1950
$Comp
L synkie_symbols:R R3
U 1 1 6436EE95
P 4550 4400
F 0 "R3" V 4343 4400 50  0000 C CNN
F 1 "1k" V 4434 4400 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 4400 50  0001 C CNN
F 3 "~" H 4550 4400 50  0001 C CNN
	1    4550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4600 4700 4600
Wire Wire Line
	5100 4100 5100 4600
Wire Wire Line
	4550 4250 4550 4200
Wire Wire Line
	4550 4550 4550 4600
$Comp
L synkie_symbols:C_Small C7
U 1 1 64378E6D
P 4700 4400
F 0 "C7" H 4608 4354 50  0000 R CNN
F 1 "10u" H 4608 4445 50  0000 R CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4700 4400 50  0001 C CNN
F 3 "~" H 4700 4400 50  0001 C CNN
	1    4700 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 4200 4700 4200
Wire Wire Line
	4700 4200 4700 4300
Connection ~ 4550 4200
Wire Wire Line
	4550 4200 4550 4150
Wire Wire Line
	4700 4500 4700 4600
Connection ~ 4700 4600
Wire Wire Line
	4700 4600 4550 4600
$Comp
L synkie_symbols:Trans_NPN_Generic Q1
U 1 1 64385319
P 4000 3950
F 0 "Q1" H 4138 3996 50  0000 L CNN
F 1 "Trans_NPN" H 4138 3905 50  0000 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 4000 3950 50  0001 C CNN
F 3 "" H 4000 3950 50  0001 C CNN
	1    4000 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 2950 3950 3750
Wire Wire Line
	4150 3950 4350 3950
NoConn ~ 3950 4150
Wire Wire Line
	4550 4700 4550 4600
Connection ~ 4550 4600
Text Notes 7900 3550 0    50   ~ 0
to do:\n- try lmh66443 instead of LM833\n- try different values for R1 and R2\n- try lower low cutoff (higher C8)\n  but needs better power supply filtering\n- R3: needed? Value?\n- chain both op amps?
Text Notes 7900 4150 0    50   ~ 0
to try:\n- reduce R3 / increase R2 to increase Q2 gain\n- increase R7 to reduce power supply load\n- then check if we can do supply filtering separately for transistor part
Wire Wire Line
	2350 3400 2350 3550
Connection ~ 2350 3400
Wire Wire Line
	2550 3400 2350 3400
Wire Wire Line
	2350 3250 2350 3400
Wire Wire Line
	2550 3250 2350 3250
Wire Wire Line
	2550 4050 2350 4050
Wire Wire Line
	2350 3900 2350 3750
Connection ~ 2350 3900
Wire Wire Line
	2550 3900 2350 3900
Wire Wire Line
	3000 3900 3000 3750
Connection ~ 3000 3900
Wire Wire Line
	2750 3900 3000 3900
Connection ~ 3000 3750
Wire Wire Line
	3000 4050 3000 3900
Wire Wire Line
	2750 4050 3000 4050
Wire Wire Line
	3000 3400 3000 3250
Connection ~ 3000 3400
Wire Wire Line
	2750 3400 3000 3400
Connection ~ 3000 3550
Wire Wire Line
	3000 3250 2750 3250
Wire Wire Line
	3000 3550 3000 3400
$Comp
L synkie_symbols:CP_Small C6
U 1 1 6434FD04
P 2650 4050
F 0 "C6" V 2600 4200 50  0000 C CNN
F 1 "220u" V 2600 3900 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2650 4050 50  0001 C CNN
F 3 "~" H 2650 4050 50  0001 C CNN
	1    2650 4050
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:CP_Small C5
U 1 1 6434F9E5
P 2650 3900
F 0 "C5" V 2600 4050 50  0000 C CNN
F 1 "220u" V 2600 3750 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2650 3900 50  0001 C CNN
F 3 "~" H 2650 3900 50  0001 C CNN
	1    2650 3900
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:CP_Small C1
U 1 1 6434F5AF
P 2650 3250
F 0 "C1" V 2600 3150 50  0000 C CNN
F 1 "220u" V 2600 3400 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2650 3250 50  0001 C CNN
F 3 "~" H 2650 3250 50  0001 C CNN
	1    2650 3250
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C2
U 1 1 6434F323
P 2650 3400
F 0 "C2" V 2600 3300 50  0000 C CNN
F 1 "220u" V 2600 3550 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2650 3400 50  0001 C CNN
F 3 "~" H 2650 3400 50  0001 C CNN
	1    2650 3400
	0    -1   1    0   
$EndComp
Connection ~ 2350 3750
Wire Wire Line
	2550 3750 2350 3750
Connection ~ 2350 3550
Wire Wire Line
	2550 3550 2350 3550
Wire Wire Line
	3000 3750 2750 3750
Wire Wire Line
	3000 3550 2750 3550
$Comp
L synkie_symbols:Conn_01x03 J1
U 1 1 5DCAB59D
P 1300 1850
F 0 "J1" H 1218 1525 50  0000 C CNN
F 1 "Power" H 1218 1616 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 1300 1850 50  0001 C CNN
F 3 "~" H 1300 1850 50  0001 C CNN
	1    1300 1850
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:PWR_FLAG #FLG03
U 1 1 5DCB666B
P 3100 3650
F 0 "#FLG03" H 3100 3725 50  0001 C CNN
F 1 "PWR_FLAG" H 3000 3850 50  0000 C CNN
F 2 "" H 3100 3650 50  0001 C CNN
F 3 "~" H 3100 3650 50  0001 C CNN
	1    3100 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 4050 2350 3900
Connection ~ 3100 3650
Wire Wire Line
	3000 3650 3100 3650
$Comp
L synkie_symbols:GND #PWR01
U 1 1 5DCB53A6
P 3100 3650
F 0 "#PWR01" H 3100 3400 50  0001 C CNN
F 1 "GND" H 3105 3477 50  0000 C CNN
F 2 "" H 3100 3650 50  0001 C CNN
F 3 "" H 3100 3650 50  0001 C CNN
	1    3100 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3000 3650 3000 3750
Connection ~ 3000 3650
Wire Wire Line
	3000 3550 3000 3650
$Comp
L synkie_symbols:CP_Small C4
U 1 1 5DCB0A0D
P 2650 3750
F 0 "C4" V 2600 3900 50  0000 C CNN
F 1 "10u" V 2600 3650 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2650 3750 50  0001 C CNN
F 3 "~" H 2650 3750 50  0001 C CNN
	1    2650 3750
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB1
U 1 1 5DCAC6DA
P 2200 3550
F 0 "FB1" V 1926 3550 50  0000 C CNN
F 1 "330u" V 2017 3550 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2130 3550 50  0001 C CNN
F 3 "~" H 2200 3550 50  0001 C CNN
	1    2200 3550
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB2
U 1 1 5DCAD10D
P 2200 3750
F 0 "FB2" V 2350 3750 50  0000 C CNN
F 1 "330u" V 2450 3750 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2130 3750 50  0001 C CNN
F 3 "~" H 2200 3750 50  0001 C CNN
	1    2200 3750
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C3
U 1 1 5DCABC45
P 2650 3550
F 0 "C3" V 2600 3450 50  0000 C CNN
F 1 "10u" V 2600 3650 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2650 3550 50  0001 C CNN
F 3 "~" H 2650 3550 50  0001 C CNN
	1    2650 3550
	0    -1   1    0   
$EndComp
Wire Wire Line
	2350 4050 2350 4700
Wire Wire Line
	2350 4700 4550 4700
Connection ~ 2350 4050
Wire Wire Line
	2350 3250 2350 2500
Wire Wire Line
	2350 2500 3950 2500
Connection ~ 2350 3250
Wire Wire Line
	5950 1600 5950 1750
Connection ~ 5950 1600
Wire Wire Line
	6150 1600 5950 1600
Wire Wire Line
	5950 1450 5950 1600
Wire Wire Line
	6150 1450 5950 1450
Wire Wire Line
	6150 2250 5950 2250
Wire Wire Line
	5950 2100 5950 1950
Connection ~ 5950 2100
Wire Wire Line
	6150 2100 5950 2100
Wire Wire Line
	6600 2100 6600 1950
Connection ~ 6600 2100
Wire Wire Line
	6350 2100 6600 2100
Connection ~ 6600 1950
Wire Wire Line
	6600 2250 6600 2100
Wire Wire Line
	6350 2250 6600 2250
Wire Wire Line
	6600 1600 6600 1450
Connection ~ 6600 1600
Wire Wire Line
	6350 1600 6600 1600
Connection ~ 6600 1750
Wire Wire Line
	6600 1450 6350 1450
Wire Wire Line
	6600 1750 6600 1600
$Comp
L synkie_symbols:CP_Small C14
U 1 1 66D7D661
P 6250 2250
F 0 "C14" V 6200 2400 50  0000 C CNN
F 1 "220u" V 6200 2100 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 6250 2250 50  0001 C CNN
F 3 "~" H 6250 2250 50  0001 C CNN
	1    6250 2250
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:CP_Small C13
U 1 1 66D7D66B
P 6250 2100
F 0 "C13" V 6200 2250 50  0000 C CNN
F 1 "220u" V 6200 1950 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 6250 2100 50  0001 C CNN
F 3 "~" H 6250 2100 50  0001 C CNN
	1    6250 2100
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:CP_Small C9
U 1 1 66D7D675
P 6250 1450
F 0 "C9" V 6200 1350 50  0000 C CNN
F 1 "220u" V 6200 1600 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 6250 1450 50  0001 C CNN
F 3 "~" H 6250 1450 50  0001 C CNN
	1    6250 1450
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C10
U 1 1 66D7D67F
P 6250 1600
F 0 "C10" V 6200 1500 50  0000 C CNN
F 1 "220u" V 6200 1750 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 6250 1600 50  0001 C CNN
F 3 "~" H 6250 1600 50  0001 C CNN
	1    6250 1600
	0    -1   1    0   
$EndComp
Connection ~ 5950 1950
Wire Wire Line
	6150 1950 5950 1950
Connection ~ 5950 1750
Wire Wire Line
	6150 1750 5950 1750
Wire Wire Line
	6600 1950 6350 1950
Wire Wire Line
	6600 1750 6350 1750
$Comp
L synkie_symbols:PWR_FLAG #FLG04
U 1 1 66D7D690
P 6700 1850
F 0 "#FLG04" H 6700 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 6600 2050 50  0000 C CNN
F 2 "" H 6700 1850 50  0001 C CNN
F 3 "~" H 6700 1850 50  0001 C CNN
	1    6700 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 2250 5950 2100
Connection ~ 6700 1850
Wire Wire Line
	6600 1850 6700 1850
$Comp
L synkie_symbols:GND #PWR05
U 1 1 66D7D69D
P 6700 1850
F 0 "#PWR05" H 6700 1600 50  0001 C CNN
F 1 "GND" H 6705 1677 50  0000 C CNN
F 2 "" H 6700 1850 50  0001 C CNN
F 3 "" H 6700 1850 50  0001 C CNN
	1    6700 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 1850 6600 1950
Connection ~ 6600 1850
Wire Wire Line
	6600 1750 6600 1850
$Comp
L synkie_symbols:CP_Small C12
U 1 1 66D7D6AA
P 6250 1950
F 0 "C12" V 6200 2100 50  0000 C CNN
F 1 "10u" V 6200 1850 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 6250 1950 50  0001 C CNN
F 3 "~" H 6250 1950 50  0001 C CNN
	1    6250 1950
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB3
U 1 1 66D7D6B4
P 5800 1750
F 0 "FB3" V 5526 1750 50  0000 C CNN
F 1 "330u" V 5617 1750 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5730 1750 50  0001 C CNN
F 3 "~" H 5800 1750 50  0001 C CNN
	1    5800 1750
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB4
U 1 1 66D7D6BE
P 5800 1950
F 0 "FB4" V 5950 1950 50  0000 C CNN
F 1 "330u" V 6050 1950 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5730 1950 50  0001 C CNN
F 3 "~" H 5800 1950 50  0001 C CNN
	1    5800 1950
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C11
U 1 1 66D7D6C8
P 6250 1750
F 0 "C11" V 6200 1650 50  0000 C CNN
F 1 "10u" V 6200 1850 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 6250 1750 50  0001 C CNN
F 3 "~" H 6250 1750 50  0001 C CNN
	1    6250 1750
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:R R6
U 1 1 66DDD015
P 5100 2300
F 0 "R6" V 4893 2300 50  0000 C CNN
F 1 "0" V 4984 2300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 2300 50  0001 C CNN
F 3 "~" H 5100 2300 50  0001 C CNN
	1    5100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1450 5100 1450
Wire Wire Line
	5100 1450 5100 2150
Connection ~ 5950 1450
Wire Wire Line
	5100 2450 5100 2550
$Comp
L synkie_symbols:R R4
U 1 1 66E0F284
P 4850 2550
F 0 "R4" V 4643 2550 50  0000 C CNN
F 1 "inf" V 4734 2550 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 2550 50  0001 C CNN
F 3 "~" H 4850 2550 50  0001 C CNN
	1    4850 2550
	0    1    -1   0   
$EndComp
Wire Wire Line
	4550 2550 4700 2550
Connection ~ 4550 2550
Wire Wire Line
	5000 2550 5100 2550
Connection ~ 5100 2550
Wire Wire Line
	5100 2550 5100 3200
Wire Wire Line
	1500 1750 1650 1750
Wire Wire Line
	1500 1850 1850 1850
Wire Wire Line
	1500 1950 1650 1950
Wire Wire Line
	2050 3550 1900 3550
Wire Wire Line
	1900 3550 1900 1750
Connection ~ 1900 1750
Wire Wire Line
	1900 1750 5650 1750
Wire Wire Line
	1850 3650 1850 1850
Wire Wire Line
	1850 3650 3000 3650
Connection ~ 1850 1850
Wire Wire Line
	1850 1850 6600 1850
Wire Wire Line
	2050 3750 1800 3750
Wire Wire Line
	1800 3750 1800 1950
Connection ~ 1800 1950
Wire Wire Line
	1800 1950 5650 1950
$Comp
L synkie_symbols:PWR_FLAG #FLG01
U 1 1 66E47866
P 1650 1750
F 0 "#FLG01" H 1650 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 1923 50  0000 C CNN
F 2 "" H 1650 1750 50  0001 C CNN
F 3 "~" H 1650 1750 50  0001 C CNN
	1    1650 1750
	1    0    0    -1  
$EndComp
Connection ~ 1650 1750
Wire Wire Line
	1650 1750 1900 1750
$Comp
L synkie_symbols:PWR_FLAG #FLG02
U 1 1 66E48E29
P 1650 1950
F 0 "#FLG02" H 1650 2025 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 2123 50  0000 C CNN
F 2 "" H 1650 1950 50  0001 C CNN
F 3 "~" H 1650 1950 50  0001 C CNN
	1    1650 1950
	-1   0    0    1   
$EndComp
Connection ~ 1650 1950
Wire Wire Line
	1650 1950 1800 1950
Wire Wire Line
	7300 2400 5950 2400
Wire Wire Line
	5950 2400 5950 2250
Wire Wire Line
	7300 2200 7300 2400
Connection ~ 5950 2250
Wire Wire Line
	7300 1300 5950 1300
Wire Wire Line
	5950 1300 5950 1450
Wire Wire Line
	7300 1300 7300 1500
$Comp
L synkie_symbols:R R5
U 1 1 66CEB40A
P 4850 3700
F 0 "R5" V 4643 3700 50  0000 C CNN
F 1 "inf" V 4734 3700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 3700 50  0001 C CNN
F 3 "~" H 4850 3700 50  0001 C CNN
	1    4850 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 3700 5100 3700
Wire Wire Line
	4700 3700 4550 3700
Connection ~ 4550 3700
Wire Wire Line
	4550 3700 4550 3750
$Comp
L synkie_symbols:R R12
U 1 1 66D00CE9
P 6050 4150
F 0 "R12" V 5843 4150 50  0000 C CNN
F 1 "0" V 5934 4150 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5980 4150 50  0001 C CNN
F 3 "~" H 6050 4150 50  0001 C CNN
	1    6050 4150
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R11
U 1 1 66D0D5AF
P 5800 3900
F 0 "R11" V 5593 3900 50  0000 C CNN
F 1 "inf" V 5684 3900 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 3900 50  0001 C CNN
F 3 "~" H 5800 3900 50  0001 C CNN
	1    5800 3900
	0    1    -1   0   
$EndComp
Wire Wire Line
	5650 3900 5550 3900
Wire Wire Line
	5550 3900 5550 3700
Connection ~ 5550 3700
Wire Wire Line
	5550 3700 5650 3700
Wire Wire Line
	5950 3900 6050 3900
Wire Wire Line
	6050 4000 6050 3900
Connection ~ 6050 3900
Wire Wire Line
	6050 3900 6150 3900
Wire Wire Line
	6050 4300 6050 4400
$Comp
L synkie_symbols:R R9
U 1 1 66D63EFD
P 5800 3300
F 0 "R9" V 5593 3300 50  0000 C CNN
F 1 "inf" V 5684 3300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 3300 50  0001 C CNN
F 3 "~" H 5800 3300 50  0001 C CNN
	1    5800 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 3300 5950 3300
$Comp
L synkie_symbols:GND #PWR03
U 1 1 66D70F25
P 5600 3350
F 0 "#PWR03" H 5600 3100 50  0001 C CNN
F 1 "GND" H 5605 3177 50  0000 C CNN
F 2 "" H 5600 3350 50  0001 C CNN
F 3 "" H 5600 3350 50  0001 C CNN
	1    5600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3300 5600 3300
Wire Wire Line
	5600 3300 5600 3350
$Comp
L synkie_symbols:R R8
U 1 1 66D7872A
P 5550 4150
F 0 "R8" V 5343 4150 50  0000 C CNN
F 1 "inf" V 5434 4150 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5480 4150 50  0001 C CNN
F 3 "~" H 5550 4150 50  0001 C CNN
	1    5550 4150
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR02
U 1 1 66D78DED
P 5550 4400
F 0 "#PWR02" H 5550 4150 50  0001 C CNN
F 1 "GND" H 5555 4227 50  0000 C CNN
F 2 "" H 5550 4400 50  0001 C CNN
F 3 "" H 5550 4400 50  0001 C CNN
	1    5550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4000 5550 3900
Connection ~ 5550 3900
Wire Wire Line
	5550 4300 5550 4400
Wire Wire Line
	7300 5050 7350 5050
$Comp
L synkie_symbols:R R16
U 1 1 66DE59FF
P 7150 5050
F 0 "R16" V 6943 5050 50  0000 C CNN
F 1 "inf" V 7034 5050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 5050 50  0001 C CNN
F 3 "~" H 7150 5050 50  0001 C CNN
	1    7150 5050
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R17
U 1 1 66DE61A8
P 7150 5250
F 0 "R17" V 6943 5250 50  0000 C CNN
F 1 "inf" V 7034 5250 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 5250 50  0001 C CNN
F 3 "~" H 7150 5250 50  0001 C CNN
	1    7150 5250
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:R R21
U 1 1 66DECCAD
P 8300 5150
F 0 "R21" V 8093 5150 50  0000 C CNN
F 1 "75" V 8184 5150 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 5150 50  0001 C CNN
F 3 "~" H 8300 5150 50  0001 C CNN
	1    8300 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 5150 8500 5150
Wire Wire Line
	8000 5150 8050 5150
Wire Wire Line
	7000 5050 6900 5050
Wire Wire Line
	6900 5050 6900 5250
Wire Wire Line
	6900 5250 7000 5250
Connection ~ 7350 5050
Wire Wire Line
	7350 5050 7400 5050
Connection ~ 8050 5150
Wire Wire Line
	8050 5150 8150 5150
Wire Wire Line
	6900 3800 6900 5050
Connection ~ 6900 5050
$Comp
L synkie_symbols:GND #PWR09
U 1 1 66E4CA4A
P 7350 5750
F 0 "#PWR09" H 7350 5500 50  0001 C CNN
F 1 "GND" H 7355 5577 50  0000 C CNN
F 2 "" H 7350 5750 50  0001 C CNN
F 3 "" H 7350 5750 50  0001 C CNN
	1    7350 5750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R19
U 1 1 66E4CA50
P 7350 5500
F 0 "R19" V 7143 5500 50  0000 C CNN
F 1 "0" V 7234 5500 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7280 5500 50  0001 C CNN
F 3 "~" H 7350 5500 50  0001 C CNN
	1    7350 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 5650 7350 5750
$Comp
L synkie_symbols:R R14
U 1 1 66E4CA57
P 6900 5500
F 0 "R14" V 6693 5500 50  0000 C CNN
F 1 "inf" V 6784 5500 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6830 5500 50  0001 C CNN
F 3 "~" H 6900 5500 50  0001 C CNN
	1    6900 5500
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR07
U 1 1 66E4CA5D
P 6900 5750
F 0 "#PWR07" H 6900 5500 50  0001 C CNN
F 1 "GND" H 6905 5577 50  0000 C CNN
F 2 "" H 6900 5750 50  0001 C CNN
F 3 "" H 6900 5750 50  0001 C CNN
	1    6900 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5650 6900 5750
Wire Wire Line
	7350 5350 7350 5250
Wire Wire Line
	7300 5250 7350 5250
Connection ~ 7350 5250
Wire Wire Line
	7350 5250 7400 5250
Wire Wire Line
	6900 5350 6900 5250
Connection ~ 6900 5250
$Comp
L synkie_symbols:R R15
U 1 1 66E90C77
P 7150 4550
F 0 "R15" V 6943 4550 50  0000 C CNN
F 1 "inf" V 7034 4550 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 4550 50  0001 C CNN
F 3 "~" H 7150 4550 50  0001 C CNN
	1    7150 4550
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR08
U 1 1 66E912E2
P 7000 4600
F 0 "#PWR08" H 7000 4350 50  0001 C CNN
F 1 "GND" H 7005 4427 50  0000 C CNN
F 2 "" H 7000 4600 50  0001 C CNN
F 3 "" H 7000 4600 50  0001 C CNN
	1    7000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4550 7000 4600
Wire Wire Line
	7300 4550 7350 4550
Wire Wire Line
	7800 4550 8050 4550
Wire Wire Line
	8050 4550 8050 5150
Connection ~ 7350 4550
Wire Wire Line
	7350 4550 7500 4550
Wire Wire Line
	7350 4550 7350 5050
$Comp
L synkie_symbols:R R22
U 1 1 66F2DF19
P 5250 2950
F 0 "R22" V 5043 2950 50  0000 C CNN
F 1 "1k" V 5134 2950 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5180 2950 50  0001 C CNN
F 3 "~" H 5250 2950 50  0001 C CNN
	1    5250 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5250 3700 5250 3100
Connection ~ 5250 3700
Wire Wire Line
	5250 2800 5250 2400
Wire Wire Line
	5250 2400 5950 2400
Connection ~ 5950 2400
$EndSCHEMATC
