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
L synkie_symbols:CP_Small C10
U 1 1 5DCABC45
P 10350 1150
F 0 "C10" V 10125 1150 50  0000 C CNN
F 1 "10u" V 10216 1150 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 10350 1150 50  0001 C CNN
F 3 "~" H 10350 1150 50  0001 C CNN
	1    10350 1150
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB2
U 1 1 5DCAD10D
P 10600 1350
F 0 "FB2" V 10750 1350 50  0000 C CNN
F 1 "Ferrite" V 10850 1350 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10530 1350 50  0001 C CNN
F 3 "~" H 10600 1350 50  0001 C CNN
	1    10600 1350
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB1
U 1 1 5DCAC6DA
P 10600 1150
F 0 "FB1" V 10326 1150 50  0000 C CNN
F 1 "Ferrite" V 10417 1150 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10530 1150 50  0001 C CNN
F 3 "~" H 10600 1150 50  0001 C CNN
	1    10600 1150
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C11
U 1 1 5DCB0A0D
P 10350 1350
F 0 "C11" V 10200 1350 50  0000 C CNN
F 1 "10u" V 10100 1350 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 10350 1350 50  0001 C CNN
F 3 "~" H 10350 1350 50  0001 C CNN
	1    10350 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10250 1150 10250 1250
Wire Wire Line
	10750 1250 10250 1250
Connection ~ 10250 1250
Wire Wire Line
	10250 1250 10250 1350
$Comp
L synkie_symbols:GND #PWR011
U 1 1 5DCB53A6
P 10150 1250
F 0 "#PWR011" H 10150 1000 50  0001 C CNN
F 1 "GND" H 10155 1077 50  0000 C CNN
F 2 "" H 10150 1250 50  0001 C CNN
F 3 "" H 10150 1250 50  0001 C CNN
	1    10150 1250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR013
U 1 1 5DCB6075
P 10450 1650
F 0 "#PWR013" H 10450 1750 50  0001 C CNN
F 1 "-5V" H 10450 1800 50  0000 C CNN
F 2 "" H 10450 1650 50  0001 C CNN
F 3 "" H 10450 1650 50  0001 C CNN
	1    10450 1650
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:PWR_FLAG #FLG03
U 1 1 5DCB6C6B
P 10550 1650
F 0 "#FLG03" H 10550 1725 50  0001 C CNN
F 1 "PWR_FLAG" H 10350 1800 50  0000 C CNN
F 2 "" H 10550 1650 50  0001 C CNN
F 3 "~" H 10550 1650 50  0001 C CNN
	1    10550 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 1250 10150 1250
Connection ~ 10150 1250
Wire Wire Line
	10450 1650 10550 1650
Wire Wire Line
	10450 1650 10450 1350
Connection ~ 10450 1650
Connection ~ 10450 1350
Connection ~ 10450 1150
Connection ~ 10450 800 
Wire Wire Line
	10450 800  10450 1150
Wire Wire Line
	10450 800  10550 800 
$Comp
L synkie_symbols:PWR_FLAG #FLG02
U 1 1 5DCB6B02
P 10550 800
F 0 "#FLG02" H 10550 875 50  0001 C CNN
F 1 "PWR_FLAG" H 10750 950 50  0000 C CNN
F 2 "" H 10550 800 50  0001 C CNN
F 3 "~" H 10550 800 50  0001 C CNN
	1    10550 800 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR012
U 1 1 5DCB58DB
P 10450 800
F 0 "#PWR012" H 10450 650 50  0001 C CNN
F 1 "+5V" H 10450 950 50  0000 C CNN
F 2 "" H 10450 800 50  0001 C CNN
F 3 "" H 10450 800 50  0001 C CNN
	1    10450 800 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:PWR_FLAG #FLG01
U 1 1 5DCB666B
P 10150 1250
F 0 "#FLG01" H 10150 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 10050 1450 50  0000 C CNN
F 2 "" H 10150 1250 50  0001 C CNN
F 3 "~" H 10150 1250 50  0001 C CNN
	1    10150 1250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x03 J1
U 1 1 5DCAB59D
P 10950 1250
F 0 "J1" H 10868 925 50  0000 C CNN
F 1 "Power" H 10868 1016 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 10950 1250 50  0001 C CNN
F 3 "~" H 10950 1250 50  0001 C CNN
	1    10950 1250
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 1 1 5F89EA00
P 1400 3150
F 0 "U1" H 1400 3517 50  0000 C CNN
F 1 "LMH6643" H 1400 3426 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 1400 3150 50  0001 C CNN
F 3 "~" H 1400 3150 50  0001 C CNN
	1    1400 3150
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 3 1 5F89F09F
P 1450 1900
F 0 "U1" H 1450 1533 50  0000 C CNN
F 1 "LMH6643" H 1450 1624 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 1450 1900 50  0001 C CNN
F 3 "~" H 1450 1900 50  0001 C CNN
	3    1450 1900
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 2 1 5F89FB4A
P 2650 3900
F 0 "U1" H 2608 3946 50  0000 L CNN
F 1 "LMH6643" H 2608 3855 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2650 3900 50  0001 C CNN
F 3 "~" H 2650 3900 50  0001 C CNN
	2    2650 3900
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:-5V #PWR03
U 1 1 5F8A3C07
P 1550 2300
F 0 "#PWR03" H 1550 2400 50  0001 C CNN
F 1 "-5V" H 1550 2450 50  0000 C CNN
F 2 "" H 1550 2300 50  0001 C CNN
F 3 "" H 1550 2300 50  0001 C CNN
	1    1550 2300
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR02
U 1 1 5F8A417F
P 1550 1500
F 0 "#PWR02" H 1550 1350 50  0001 C CNN
F 1 "+5V" H 1550 1650 50  0000 C CNN
F 2 "" H 1550 1500 50  0001 C CNN
F 3 "" H 1550 1500 50  0001 C CNN
	1    1550 1500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR01
U 1 1 5F8A45CA
P 1250 2300
F 0 "#PWR01" H 1250 2050 50  0001 C CNN
F 1 "GND" H 1255 2127 50  0000 C CNN
F 2 "" H 1250 2300 50  0001 C CNN
F 3 "" H 1250 2300 50  0001 C CNN
	1    1250 2300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C4
U 1 1 5F8A5774
P 1400 1550
F 0 "C4" V 1171 1550 50  0000 C CNN
F 1 "100n" V 1262 1550 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1400 1550 50  0001 C CNN
F 3 "~" H 1400 1550 50  0001 C CNN
	1    1400 1550
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C5
U 1 1 5F8A5DF5
P 1400 2250
F 0 "C5" V 1171 2250 50  0000 C CNN
F 1 "100n" V 1262 2250 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1400 2250 50  0001 C CNN
F 3 "~" H 1400 2250 50  0001 C CNN
	1    1400 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 1500 1550 1550
Wire Wire Line
	1300 2250 1250 2250
Wire Wire Line
	1250 2250 1250 2300
Wire Wire Line
	1300 1550 1250 1550
Wire Wire Line
	1250 1550 1250 2250
Connection ~ 1250 2250
Wire Wire Line
	1500 1550 1550 1550
Wire Wire Line
	1500 2250 1550 2250
Wire Wire Line
	1550 2250 1550 2300
$Comp
L synkie_symbols:Opamp_Dual_Generic U2
U 1 1 5F8B7C6E
P 4900 3600
F 0 "U2" H 4900 3967 50  0000 C CNN
F 1 "LMH6643" H 4900 3876 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4900 3600 50  0001 C CNN
F 3 "~" H 4900 3600 50  0001 C CNN
	1    4900 3600
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U3
U 1 1 5F8B7C78
P 7050 1750
F 0 "U3" H 7008 1796 50  0000 L CNN
F 1 "LMH6643" H 7008 1705 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 7050 1750 50  0001 C CNN
F 3 "~" H 7050 1750 50  0001 C CNN
	1    7050 1750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR07
U 1 1 5F8B7C82
P 6200 5300
F 0 "#PWR07" H 6200 5400 50  0001 C CNN
F 1 "-5V" H 6200 5450 50  0000 C CNN
F 2 "" H 6200 5300 50  0001 C CNN
F 3 "" H 6200 5300 50  0001 C CNN
	1    6200 5300
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR06
U 1 1 5F8B7C8C
P 6200 4500
F 0 "#PWR06" H 6200 4350 50  0001 C CNN
F 1 "+5V" H 6200 4650 50  0000 C CNN
F 2 "" H 6200 4500 50  0001 C CNN
F 3 "" H 6200 4500 50  0001 C CNN
	1    6200 4500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR05
U 1 1 5F8B7C96
P 5900 5300
F 0 "#PWR05" H 5900 5050 50  0001 C CNN
F 1 "GND" H 5905 5127 50  0000 C CNN
F 2 "" H 5900 5300 50  0001 C CNN
F 3 "" H 5900 5300 50  0001 C CNN
	1    5900 5300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C6
U 1 1 5F8B7CA0
P 6050 4550
F 0 "C6" V 5821 4550 50  0000 C CNN
F 1 "100n" V 5912 4550 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6050 4550 50  0001 C CNN
F 3 "~" H 6050 4550 50  0001 C CNN
	1    6050 4550
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C7
U 1 1 5F8B7CAA
P 6050 5250
F 0 "C7" V 5821 5250 50  0000 C CNN
F 1 "100n" V 5912 5250 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6050 5250 50  0001 C CNN
F 3 "~" H 6050 5250 50  0001 C CNN
	1    6050 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 5200 6200 5250
Wire Wire Line
	6200 4500 6200 4550
Wire Wire Line
	5950 5250 5900 5250
Wire Wire Line
	5900 5250 5900 5300
Wire Wire Line
	5950 4550 5900 4550
Wire Wire Line
	5900 4550 5900 5250
Connection ~ 5900 5250
Wire Wire Line
	6150 4550 6200 4550
Connection ~ 6200 4550
Wire Wire Line
	6200 4550 6200 4600
Wire Wire Line
	6150 5250 6200 5250
Connection ~ 6200 5250
Wire Wire Line
	6200 5250 6200 5300
$Comp
L synkie_symbols:R R7
U 1 1 5F8BD20D
P 2000 2950
F 0 "R7" H 2070 2996 50  0000 L CNN
F 1 "100" H 2070 2905 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1930 2950 50  0001 C CNN
F 3 "~" H 2000 2950 50  0001 C CNN
	1    2000 2950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R8
U 1 1 5F8BDC24
P 2000 3350
F 0 "R8" H 2070 3396 50  0000 L CNN
F 1 "1k" H 2070 3305 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1930 3350 50  0001 C CNN
F 3 "~" H 2000 3350 50  0001 C CNN
	1    2000 3350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R9
U 1 1 5F8BE4EA
P 2000 3750
F 0 "R9" H 2070 3796 50  0000 L CNN
F 1 "1k" H 2070 3705 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1930 3750 50  0001 C CNN
F 3 "~" H 2000 3750 50  0001 C CNN
	1    2000 3750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R4
U 1 1 5F8BEE15
P 5850 3100
F 0 "R4" V 5643 3100 50  0000 C CNN
F 1 "22k" V 5734 3100 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5780 3100 50  0001 C CNN
F 3 "~" H 5850 3100 50  0001 C CNN
	1    5850 3100
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R5
U 1 1 5F8BF1F5
P 5850 4000
F 0 "R5" V 5643 4000 50  0000 C CNN
F 1 "22k" V 5734 4000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5780 4000 50  0001 C CNN
F 3 "~" H 5850 4000 50  0001 C CNN
	1    5850 4000
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R1
U 1 1 5F8BF4AC
P 4950 3100
F 0 "R1" V 4743 3100 50  0000 C CNN
F 1 "220" V 4834 3100 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 3100 50  0001 C CNN
F 3 "~" H 4950 3100 50  0001 C CNN
	1    4950 3100
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R2
U 1 1 5F8BF986
P 4950 4000
F 0 "R2" V 4743 4000 50  0000 C CNN
F 1 "220" V 4834 4000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 4000 50  0001 C CNN
F 3 "~" H 4950 4000 50  0001 C CNN
	1    4950 4000
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R3
U 1 1 5F8BFC84
P 5250 4250
F 0 "R3" H 5320 4296 50  0000 L CNN
F 1 "2k2" H 5320 4205 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5180 4250 50  0001 C CNN
F 3 "~" H 5250 4250 50  0001 C CNN
	1    5250 4250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R6
U 1 1 5F8C00FC
P 5550 4250
F 0 "R6" H 5620 4296 50  0000 L CNN
F 1 "3k3" H 5620 4205 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5480 4250 50  0001 C CNN
F 3 "~" H 5550 4250 50  0001 C CNN
	1    5550 4250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C3
U 1 1 5F8C58B3
P 2000 4100
F 0 "C3" H 1908 4054 50  0000 R CNN
F 1 "100n" H 1908 4145 50  0000 R CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2000 4100 50  0001 C CNN
F 3 "~" H 2000 4100 50  0001 C CNN
	1    2000 4100
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C2
U 1 1 5F8C6469
P 3300 3550
F 0 "C2" H 3208 3504 50  0000 R CNN
F 1 "100n" H 3208 3595 50  0000 R CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3300 3550 50  0001 C CNN
F 3 "~" H 3300 3550 50  0001 C CNN
	1    3300 3550
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C1
U 1 1 5F8C6864
P 4150 3550
F 0 "C1" H 4058 3504 50  0000 R CNN
F 1 "10n" H 4058 3595 50  0000 R CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4150 3550 50  0001 C CNN
F 3 "~" H 4150 3550 50  0001 C CNN
	1    4150 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 4200 2000 4250
Wire Wire Line
	2000 3900 2000 3950
Wire Wire Line
	2000 3500 2000 3550
Wire Wire Line
	2000 3100 2000 3150
Wire Wire Line
	1700 3050 1800 3050
Wire Wire Line
	1800 3050 1800 2750
Wire Wire Line
	1800 2750 2000 2750
Wire Wire Line
	2000 2750 2000 2800
Wire Wire Line
	1700 3250 1800 3250
Wire Wire Line
	1800 3250 1800 3550
Wire Wire Line
	1800 3550 2000 3550
Connection ~ 2000 3550
Wire Wire Line
	2000 3550 2000 3600
Wire Wire Line
	1100 3150 1000 3150
Wire Wire Line
	1000 3150 1000 3950
Wire Wire Line
	1000 3950 2000 3950
Connection ~ 2000 3950
Wire Wire Line
	2000 3950 2000 4000
Wire Wire Line
	2000 3550 2250 3550
Wire Wire Line
	2250 3550 2250 3800
Wire Wire Line
	2000 4250 2250 4250
Wire Wire Line
	2250 4250 2250 4000
Connection ~ 2000 4250
Wire Wire Line
	2000 4250 2000 4300
Wire Wire Line
	3050 3150 2000 3150
Connection ~ 2000 3150
Wire Wire Line
	2000 3150 2000 3200
Wire Wire Line
	2000 2750 3300 2750
Connection ~ 2000 2750
Wire Wire Line
	3300 3450 3300 2750
Connection ~ 3300 2750
Wire Wire Line
	3300 3650 3300 4650
Wire Wire Line
	2000 4650 2000 4600
$Comp
L synkie_symbols:GND #PWR04
U 1 1 5F900AC7
P 3600 4700
F 0 "#PWR04" H 3600 4450 50  0001 C CNN
F 1 "GND" H 3605 4527 50  0000 C CNN
F 2 "" H 3600 4700 50  0001 C CNN
F 3 "" H 3600 4700 50  0001 C CNN
	1    3600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4700 3600 4650
Connection ~ 3600 4650
Wire Wire Line
	3600 4650 3300 4650
Wire Wire Line
	5550 3700 5600 3700
Wire Wire Line
	5700 4000 5550 4000
Wire Wire Line
	5550 4000 5550 3700
Wire Wire Line
	6300 4000 6300 3600
Wire Wire Line
	6300 3600 6200 3600
Wire Wire Line
	6000 3100 6300 3100
Wire Wire Line
	6300 3100 6300 3600
Connection ~ 6300 3600
Wire Wire Line
	5600 3500 5550 3500
Wire Wire Line
	5550 3500 5550 3100
Wire Wire Line
	5550 3100 5700 3100
Wire Wire Line
	5550 4000 5550 4100
Connection ~ 5550 4000
Wire Wire Line
	5550 4400 5550 4500
Wire Wire Line
	5250 4500 5250 4400
Wire Wire Line
	5200 3700 5250 3700
Wire Wire Line
	5250 3700 5250 4000
Wire Wire Line
	5100 4000 5250 4000
Connection ~ 5250 4000
Wire Wire Line
	5250 4000 5250 4100
Wire Wire Line
	5200 3500 5250 3500
Wire Wire Line
	5250 3500 5250 3100
Wire Wire Line
	5250 3100 5100 3100
Wire Wire Line
	4800 3100 4550 3100
Wire Wire Line
	4550 3100 4550 3600
Wire Wire Line
	4550 3600 4600 3600
Wire Wire Line
	4800 4000 4550 4000
Wire Wire Line
	4550 4000 4550 3600
Connection ~ 4550 3600
Wire Wire Line
	5250 4500 5400 4500
Wire Wire Line
	5400 4650 5400 4500
Connection ~ 5400 4500
Wire Wire Line
	5400 4500 5550 4500
Wire Wire Line
	5250 3100 5400 3100
Connection ~ 5250 3100
Connection ~ 5550 3100
Wire Wire Line
	5400 3100 5400 2750
Connection ~ 5400 3100
Wire Wire Line
	5400 3100 5550 3100
$Comp
L synkie_symbols:Opamp_Dual_Generic U2
U 2 1 5F99F092
P 5900 3600
F 0 "U2" H 5900 3967 50  0000 C CNN
F 1 "LMH6643" H 5900 3876 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5900 3600 50  0001 C CNN
F 3 "~" H 5900 3600 50  0001 C CNN
	2    5900 3600
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U2
U 3 1 5F9A1943
P 6300 4900
F 0 "U2" H 6300 5267 50  0000 C CNN
F 1 "LMH6643" H 6300 5176 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 6300 4900 50  0001 C CNN
F 3 "~" H 6300 4900 50  0001 C CNN
	3    6300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2000 7400 2000
Wire Wire Line
	7400 2000 7400 1750
Wire Wire Line
	6750 2650 6700 2650
Wire Wire Line
	6700 2650 6700 2800
Wire Wire Line
	6700 2800 7400 2800
Wire Wire Line
	7400 2800 7400 2550
Wire Wire Line
	7400 2550 7350 2550
Wire Wire Line
	3300 1650 3300 2750
$Comp
L synkie_symbols:R R13
U 1 1 5F9D0412
P 7700 1750
F 0 "R13" V 7493 1750 50  0000 C CNN
F 1 "75" V 7584 1750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7630 1750 50  0001 C CNN
F 3 "~" H 7700 1750 50  0001 C CNN
	1    7700 1750
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R14
U 1 1 5F9D0A86
P 7700 2550
F 0 "R14" V 7493 2550 50  0000 C CNN
F 1 "75" V 7584 2550 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7630 2550 50  0001 C CNN
F 3 "~" H 7700 2550 50  0001 C CNN
	1    7700 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2550 7550 2550
Connection ~ 7400 2550
Wire Wire Line
	7400 1750 7550 1750
$Comp
L synkie_symbols:Conn_01x01 J3
U 1 1 5F9D87B5
P 8150 1750
F 0 "J3" H 8230 1792 50  0000 L CNN
F 1 "Conn_01x01" H 8230 1701 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8150 1750 50  0001 C CNN
F 3 "~" H 8150 1750 50  0001 C CNN
	1    8150 1750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J4
U 1 1 5F9D8CF9
P 8150 2550
F 0 "J4" H 8230 2592 50  0000 L CNN
F 1 "Conn_01x01" H 8230 2501 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8150 2550 50  0001 C CNN
F 3 "~" H 8150 2550 50  0001 C CNN
	1    8150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1750 7950 1750
Wire Wire Line
	7850 2550 7950 2550
$Comp
L synkie_symbols:GND #PWR08
U 1 1 5F9EA3E4
P 7450 3850
F 0 "#PWR08" H 7450 3600 50  0001 C CNN
F 1 "GND" H 7455 3677 50  0000 C CNN
F 2 "" H 7450 3850 50  0001 C CNN
F 3 "" H 7450 3850 50  0001 C CNN
	1    7450 3850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C8
U 1 1 5F9EA3EE
P 7600 3100
F 0 "C8" V 7371 3100 50  0000 C CNN
F 1 "100n" V 7462 3100 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7600 3100 50  0001 C CNN
F 3 "~" H 7600 3100 50  0001 C CNN
	1    7600 3100
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C9
U 1 1 5F9EA3F8
P 7600 3800
F 0 "C9" V 7371 3800 50  0000 C CNN
F 1 "100n" V 7462 3800 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7600 3800 50  0001 C CNN
F 3 "~" H 7600 3800 50  0001 C CNN
	1    7600 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 3800 7450 3800
Wire Wire Line
	7450 3800 7450 3850
Wire Wire Line
	7500 3100 7450 3100
Wire Wire Line
	7450 3100 7450 3800
Connection ~ 7450 3800
$Comp
L synkie_symbols:+5V #PWR09
U 1 1 5F9F12AC
P 7700 3050
F 0 "#PWR09" H 7700 2900 50  0001 C CNN
F 1 "+5V" H 7700 3200 50  0000 C CNN
F 2 "" H 7700 3050 50  0001 C CNN
F 3 "" H 7700 3050 50  0001 C CNN
	1    7700 3050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR010
U 1 1 5F9F179C
P 7700 3850
F 0 "#PWR010" H 7700 3950 50  0001 C CNN
F 1 "-5V" H 7700 4000 50  0000 C CNN
F 2 "" H 7700 3850 50  0001 C CNN
F 3 "" H 7700 3850 50  0001 C CNN
	1    7700 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 3050 7700 3100
Wire Wire Line
	7700 3150 7700 3100
Connection ~ 7700 3100
Wire Wire Line
	7700 3750 7700 3800
Wire Wire Line
	7700 3850 7700 3800
Connection ~ 7700 3800
$Comp
L synkie_symbols:R_POT RV10
U 1 1 5FA1E0A4
P 2000 4450
F 0 "RV10" H 1930 4496 50  0000 R CNN
F 1 "2k5" H 1930 4405 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09L_Single_Horizontal" H 2000 4450 50  0001 C CNN
F 3 "~" H 2000 4450 50  0001 C CNN
	1    2000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4450 2250 4450
Wire Wire Line
	2250 4450 2250 4650
Wire Wire Line
	2250 4650 2000 4650
$Comp
L synkie_symbols:R_POT RV11
U 1 1 5FA230C0
P 3500 2750
F 0 "RV11" V 3293 2750 50  0000 C CNN
F 1 "2k5" V 3384 2750 50  0000 C CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09L_Single_Horizontal" H 3500 2750 50  0001 C CNN
F 3 "~" H 3500 2750 50  0001 C CNN
	1    3500 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 4650 4150 4650
$Comp
L synkie_symbols:R R11
U 1 1 5FA6915F
P 3950 2750
F 0 "R11" V 3743 2750 50  0000 C CNN
F 1 "0" V 3834 2750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3880 2750 50  0001 C CNN
F 3 "~" H 3950 2750 50  0001 C CNN
	1    3950 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 3450 4150 2750
Connection ~ 4150 2750
Wire Wire Line
	4150 2750 5400 2750
Wire Wire Line
	4150 3650 4150 4650
Connection ~ 4150 4650
Wire Wire Line
	4150 4650 5400 4650
Wire Wire Line
	2600 4650 3300 4650
Connection ~ 3300 4650
Wire Wire Line
	2300 4650 2250 4650
Connection ~ 2250 4650
$Comp
L synkie_symbols:R R10
U 1 1 5FA81D15
P 2450 4650
F 0 "R10" V 2243 4650 50  0000 C CNN
F 1 "0" V 2334 4650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 4650 50  0001 C CNN
F 3 "~" H 2450 4650 50  0001 C CNN
	1    2450 4650
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R12
U 1 1 5FA97409
P 7650 5850
F 0 "R12" V 7443 5850 50  0000 C CNN
F 1 "75" V 7534 5850 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7580 5850 50  0001 C CNN
F 3 "~" H 7650 5850 50  0001 C CNN
	1    7650 5850
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J2
U 1 1 5FA97413
P 8100 5850
F 0 "J2" H 8180 5892 50  0000 L CNN
F 1 "Conn_01x01" H 8180 5801 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8100 5850 50  0001 C CNN
F 3 "~" H 8100 5850 50  0001 C CNN
	1    8100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5850 7900 5850
Wire Wire Line
	7500 5850 3050 5850
Wire Wire Line
	3050 3150 3050 3900
Wire Wire Line
	2350 3800 2250 3800
Wire Wire Line
	2350 4000 2250 4000
Wire Wire Line
	2950 3900 3050 3900
Connection ~ 3050 3900
Wire Wire Line
	3050 3900 3050 5850
Wire Wire Line
	1550 1550 1550 1600
Connection ~ 1550 1550
Wire Wire Line
	1550 2200 1550 2250
Connection ~ 1550 2250
$Comp
L synkie_symbols:Opamp_Dual_Generic U3
U 2 1 5F9A2421
P 7050 2550
F 0 "U3" H 7008 2596 50  0000 L CNN
F 1 "LMH6643" H 7008 2505 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 7050 2550 50  0001 C CNN
F 3 "~" H 7050 2550 50  0001 C CNN
	2    7050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2000 6700 1850
Wire Wire Line
	6700 1850 6750 1850
Wire Wire Line
	6750 1650 3300 1650
Wire Wire Line
	6750 2450 4150 2450
Wire Wire Line
	4150 2450 4150 2750
$Comp
L synkie_symbols:Opamp_Dual_Generic U3
U 3 1 5F93E29D
P 7800 3450
F 0 "U3" H 7758 3496 50  0000 L CNN
F 1 "LMH6643" H 7758 3405 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 7800 3450 50  0001 C CNN
F 3 "~" H 7800 3450 50  0001 C CNN
	3    7800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1750 7400 1750
Connection ~ 7400 1750
Wire Wire Line
	6000 4000 6300 4000
Wire Wire Line
	3650 2750 3700 2750
Wire Wire Line
	3350 2750 3300 2750
Wire Wire Line
	4100 2750 4150 2750
Wire Wire Line
	3500 2600 3500 2550
Wire Wire Line
	3500 2550 3700 2550
Wire Wire Line
	3700 2550 3700 2750
Connection ~ 3700 2750
Wire Wire Line
	3700 2750 3800 2750
$EndSCHEMATC
