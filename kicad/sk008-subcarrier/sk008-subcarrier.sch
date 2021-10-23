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
L synkie_symbols:UMCC J2
U 1 1 61727D51
P 1550 1250
F 0 "J2" H 1792 1537 60  0000 C CNN
F 1 "Burst in" H 1792 1431 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 1950 1090 60  0001 C CNN
F 3 "" H 1550 1250 60  0000 C CNN
	1    1550 1250
	-1   0    0    -1  
$EndComp
Text Label 1550 1250 0    50   ~ 0
burstin
$Comp
L power:GND #PWR0101
U 1 1 6172938D
P 1550 1450
F 0 "#PWR0101" H 1550 1200 50  0001 C CNN
F 1 "GND" H 1555 1277 50  0000 C CNN
F 2 "" H 1550 1450 50  0001 C CNN
F 3 "" H 1550 1450 50  0001 C CNN
	1    1550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1350 1550 1450
Connection ~ 1550 1450
$Comp
L synkie_symbols:LMH6643 U1
U 1 1 61729BAF
P 1250 4800
F 0 "U1" H 1250 5167 50  0000 C CNN
F 1 "LMH6643" H 1250 5076 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 1250 4800 50  0001 C CNN
F 3 "~" H 1250 4800 50  0001 C CNN
	1    1250 4800
	1    0    0    -1  
$EndComp
Text Label 950  4700 2    50   ~ 0
burstin
$Comp
L synkie_symbols:R R2
U 1 1 6172B1DC
P 1650 4950
F 0 "R2" H 1720 4996 50  0000 L CNN
F 1 "2k" H 1720 4905 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1580 4950 50  0001 C CNN
F 3 "~" H 1650 4950 50  0001 C CNN
	1    1650 4950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R4
U 1 1 6172B911
P 1650 5250
F 0 "R4" H 1720 5296 50  0000 L CNN
F 1 "560" H 1720 5205 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1580 5250 50  0001 C CNN
F 3 "~" H 1650 5250 50  0001 C CNN
	1    1650 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4800 1550 4800
Wire Wire Line
	1650 5100 950  5100
Wire Wire Line
	950  5100 950  4900
Connection ~ 1650 5100
$Comp
L power:GND #PWR0102
U 1 1 6172C0E2
P 1650 5400
F 0 "#PWR0102" H 1650 5150 50  0001 C CNN
F 1 "GND" H 1655 5227 50  0000 C CNN
F 2 "" H 1650 5400 50  0001 C CNN
F 3 "" H 1650 5400 50  0001 C CNN
	1    1650 5400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LMH6643 U1
U 2 1 6172C6F9
P 5800 4900
F 0 "U1" H 5800 5267 50  0000 C CNN
F 1 "LMH6643" H 5800 5176 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5800 4900 50  0001 C CNN
F 3 "~" H 5800 4900 50  0001 C CNN
	2    5800 4900
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:LMH6643 U1
U 3 1 6172CF9C
P 1450 3000
F 0 "U1" H 1408 3046 50  0000 L CNN
F 1 "LMH6643" H 1408 2955 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 1450 3000 50  0001 C CNN
F 3 "~" H 1450 3000 50  0001 C CNN
	3    1450 3000
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4053 U2
U 1 1 6172F1F3
P 2900 4800
F 0 "U2" H 2900 5881 50  0000 C CNN
F 1 "4053" H 3000 4600 50  0000 C CNN
F 2 "synkie_footprints:SOIC-16_3.9x9.9mm_P1.27mm" H 2900 4800 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 2900 4800 50  0001 C CNN
	1    2900 4800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x04 J1
U 1 1 6173120D
P 3800 1100
F 0 "J1" H 3880 1092 50  0000 L CNN
F 1 "Conn_01x04" H 3880 1001 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 3800 1100 50  0001 C CNN
F 3 "~" H 3800 1100 50  0001 C CNN
	1    3800 1100
	1    0    0    -1  
$EndComp
Text Label 3600 1000 2    50   ~ 0
hsync
Text Label 3600 1100 2    50   ~ 0
vsync
Text Label 3600 1200 2    50   ~ 0
porch
Text Label 2400 5400 2    50   ~ 0
porch
$Comp
L Device:Crystal_GND2 Y1
U 1 1 61736A10
P 4250 4800
F 0 "Y1" H 4250 5068 50  0000 C CNN
F 1 "Crystal_GND2" H 4250 4977 50  0000 C CNN
F 2 "synkie_footprints:Crystal_SMD_HC49-SD_HandSoldering_3pin" H 4250 4800 50  0001 C CNN
F 3 "~" H 4250 4800 50  0001 C CNN
	1    4250 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6173787D
P 4250 5000
F 0 "#PWR0105" H 4250 4750 50  0001 C CNN
F 1 "GND" H 4255 4827 50  0000 C CNN
F 2 "" H 4250 5000 50  0001 C CNN
F 3 "" H 4250 5000 50  0001 C CNN
	1    4250 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6173816A
P 3800 4950
F 0 "C1" H 3915 4996 50  0000 L CNN
F 1 "22p" H 3915 4905 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3838 4800 50  0001 C CNN
F 3 "~" H 3800 4950 50  0001 C CNN
	1    3800 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4800 3800 4800
$Comp
L power:GND #PWR0106
U 1 1 61738E63
P 3800 5100
F 0 "#PWR0106" H 3800 4850 50  0001 C CNN
F 1 "GND" H 3805 4927 50  0000 C CNN
F 2 "" H 3800 5100 50  0001 C CNN
F 3 "" H 3800 5100 50  0001 C CNN
	1    3800 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61739792
P 4600 4950
F 0 "C2" H 4450 4850 50  0000 L CNN
F 1 "22p" H 4600 4800 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4638 4800 50  0001 C CNN
F 3 "~" H 4600 4950 50  0001 C CNN
	1    4600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4800 4600 4800
$Comp
L power:GND #PWR0107
U 1 1 61739EE2
P 4600 5100
F 0 "#PWR0107" H 4600 4850 50  0001 C CNN
F 1 "GND" H 4605 4927 50  0000 C CNN
F 2 "" H 4600 5100 50  0001 C CNN
F 3 "" H 4600 5100 50  0001 C CNN
	1    4600 5100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0109
U 1 1 6173D6C3
P 2900 3900
F 0 "#PWR0109" H 2900 3750 50  0001 C CNN
F 1 "+5V" H 2915 4073 50  0000 C CNN
F 2 "" H 2900 3900 50  0001 C CNN
F 3 "" H 2900 3900 50  0001 C CNN
	1    2900 3900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0110
U 1 1 6173E18C
P 1350 2700
F 0 "#PWR0110" H 1350 2550 50  0001 C CNN
F 1 "+5V" H 1365 2873 50  0000 C CNN
F 2 "" H 1350 2700 50  0001 C CNN
F 3 "" H 1350 2700 50  0001 C CNN
	1    1350 2700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0112
U 1 1 6173F67B
P 3000 5700
F 0 "#PWR0112" H 3000 5800 50  0001 C CNN
F 1 "-5V" H 3015 5873 50  0000 C CNN
F 2 "" H 3000 5700 50  0001 C CNN
F 3 "" H 3000 5700 50  0001 C CNN
	1    3000 5700
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:-5V #PWR0113
U 1 1 6173FE63
P 1350 3300
F 0 "#PWR0113" H 1350 3400 50  0001 C CNN
F 1 "-5V" H 1365 3473 50  0000 C CNN
F 2 "" H 1350 3300 50  0001 C CNN
F 3 "" H 1350 3300 50  0001 C CNN
	1    1350 3300
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:-5V #PWR0114
U 1 1 61740459
P 800 3350
F 0 "#PWR0114" H 800 3450 50  0001 C CNN
F 1 "-5V" H 815 3523 50  0000 C CNN
F 2 "" H 800 3350 50  0001 C CNN
F 3 "" H 800 3350 50  0001 C CNN
	1    800  3350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0115
U 1 1 6174075C
P 800 2750
F 0 "#PWR0115" H 800 2600 50  0001 C CNN
F 1 "+5V" H 815 2923 50  0000 C CNN
F 2 "" H 800 2750 50  0001 C CNN
F 3 "" H 800 2750 50  0001 C CNN
	1    800  2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 61740B7C
P 800 2900
F 0 "C3" H 915 2946 50  0000 L CNN
F 1 "100n" H 915 2855 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 838 2750 50  0001 C CNN
F 3 "~" H 800 2900 50  0001 C CNN
	1    800  2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 61740FC8
P 800 3200
F 0 "C5" H 915 3246 50  0000 L CNN
F 1 "100n" H 915 3155 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 838 3050 50  0001 C CNN
F 3 "~" H 800 3200 50  0001 C CNN
	1    800  3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 6174189B
P 800 3050
F 0 "#PWR0116" H 800 2800 50  0001 C CNN
F 1 "GND" V 805 2922 50  0000 R CNN
F 2 "" H 800 3050 50  0001 C CNN
F 3 "" H 800 3050 50  0001 C CNN
	1    800  3050
	0    1    1    0   
$EndComp
Connection ~ 800  3050
$Comp
L synkie_symbols:R R7
U 1 1 6174AE59
P 6450 4900
F 0 "R7" V 6243 4900 50  0000 C CNN
F 1 "75" V 6334 4900 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6380 4900 50  0001 C CNN
F 3 "~" H 6450 4900 50  0001 C CNN
	1    6450 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 4900 6150 4900
$Comp
L synkie_symbols:UMCC J8
U 1 1 6174CAE5
P 7200 4900
F 0 "J8" H 7728 4853 60  0000 L CNN
F 1 "subcarrier-out" H 7728 4747 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 7600 4740 60  0001 C CNN
F 3 "" H 7200 4900 60  0000 C CNN
	1    7200 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6174E72A
P 7200 5250
F 0 "#PWR0120" H 7200 5000 50  0001 C CNN
F 1 "GND" H 7205 5077 50  0000 C CNN
F 2 "" H 7200 5250 50  0001 C CNN
F 3 "" H 7200 5250 50  0001 C CNN
	1    7200 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5000 7200 5100
Connection ~ 7200 5100
Wire Wire Line
	7200 5100 7200 5250
$Comp
L synkie_symbols:-5V #PWR0121
U 1 1 617500A2
P 6500 1350
F 0 "#PWR0121" H 6500 1450 50  0001 C CNN
F 1 "-5V" H 6515 1523 50  0000 C CNN
F 2 "" H 6500 1350 50  0001 C CNN
F 3 "" H 6500 1350 50  0001 C CNN
	1    6500 1350
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Conn_01x03 J9
U 1 1 61750ABE
P 5750 1250
F 0 "J9" H 5668 1567 50  0000 C CNN
F 1 "Conn_01x03" H 5668 1476 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 5750 1250 50  0001 C CNN
F 3 "~" H 5750 1250 50  0001 C CNN
	1    5750 1250
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0122
U 1 1 6175183F
P 6550 1150
F 0 "#PWR0122" H 6550 1000 50  0001 C CNN
F 1 "+5V" H 6565 1323 50  0000 C CNN
F 2 "" H 6550 1150 50  0001 C CNN
F 3 "" H 6550 1150 50  0001 C CNN
	1    6550 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 61753D66
P 2400 5300
F 0 "#PWR0124" H 2400 5050 50  0001 C CNN
F 1 "GND" V 2405 5172 50  0000 R CNN
F 2 "" H 2400 5300 50  0001 C CNN
F 3 "" H 2400 5300 50  0001 C CNN
	1    2400 5300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 6175417F
P 2400 5200
F 0 "#PWR0125" H 2400 4950 50  0001 C CNN
F 1 "GND" V 2405 5072 50  0000 R CNN
F 2 "" H 2400 5200 50  0001 C CNN
F 3 "" H 2400 5200 50  0001 C CNN
	1    2400 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6172B061
P 2900 5700
F 0 "#PWR0103" H 2900 5450 50  0001 C CNN
F 1 "GND" H 2905 5527 50  0000 C CNN
F 2 "" H 2900 5700 50  0001 C CNN
F 3 "" H 2900 5700 50  0001 C CNN
	1    2900 5700
	1    0    0    -1  
$EndComp
Text Label 3600 1300 2    50   ~ 0
odd_even
$Comp
L synkie_symbols:-5V #PWR0131
U 1 1 6174AEFE
P 8400 1400
F 0 "#PWR0131" H 8400 1500 50  0001 C CNN
F 1 "-5V" H 8415 1573 50  0000 C CNN
F 2 "" H 8400 1400 50  0001 C CNN
F 3 "" H 8400 1400 50  0001 C CNN
	1    8400 1400
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0132
U 1 1 6174AF04
P 8400 800
F 0 "#PWR0132" H 8400 650 50  0001 C CNN
F 1 "+5V" H 8415 973 50  0000 C CNN
F 2 "" H 8400 800 50  0001 C CNN
F 3 "" H 8400 800 50  0001 C CNN
	1    8400 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6174AF0A
P 8400 950
F 0 "C4" H 8515 996 50  0000 L CNN
F 1 "100n" H 8515 905 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8438 800 50  0001 C CNN
F 3 "~" H 8400 950 50  0001 C CNN
	1    8400 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6174AF10
P 8400 1250
F 0 "C6" H 8515 1296 50  0000 L CNN
F 1 "100n" H 8515 1205 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8438 1100 50  0001 C CNN
F 3 "~" H 8400 1250 50  0001 C CNN
	1    8400 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 6174AF16
P 8400 1100
F 0 "#PWR0133" H 8400 850 50  0001 C CNN
F 1 "GND" V 8405 972 50  0000 R CNN
F 2 "" H 8400 1100 50  0001 C CNN
F 3 "" H 8400 1100 50  0001 C CNN
	1    8400 1100
	0    1    1    0   
$EndComp
Connection ~ 8400 1100
$Comp
L synkie_symbols:R R3
U 1 1 61753526
P 5700 4500
F 0 "R3" H 5770 4546 50  0000 L CNN
F 1 "100k" V 5600 4450 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5630 4500 50  0001 C CNN
F 3 "~" H 5700 4500 50  0001 C CNN
	1    5700 4500
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R6
U 1 1 6175352C
P 5200 4800
F 0 "R6" H 5270 4846 50  0000 L CNN
F 1 "10k" H 5270 4755 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5130 4800 50  0001 C CNN
F 3 "~" H 5200 4800 50  0001 C CNN
	1    5200 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 61753534
P 5450 5000
F 0 "#PWR0134" H 5450 4750 50  0001 C CNN
F 1 "GND" H 5455 4827 50  0000 C CNN
F 2 "" H 5450 5000 50  0001 C CNN
F 3 "" H 5450 5000 50  0001 C CNN
	1    5450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5000 5500 5000
$Comp
L power:GND #PWR0135
U 1 1 617574A6
P 2400 4200
F 0 "#PWR0135" H 2400 3950 50  0001 C CNN
F 1 "GND" V 2405 4072 50  0000 R CNN
F 2 "" H 2400 4200 50  0001 C CNN
F 3 "" H 2400 4200 50  0001 C CNN
	1    2400 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 61757936
P 2400 4500
F 0 "#PWR0136" H 2400 4250 50  0001 C CNN
F 1 "GND" V 2405 4372 50  0000 R CNN
F 2 "" H 2400 4500 50  0001 C CNN
F 3 "" H 2400 4500 50  0001 C CNN
	1    2400 4500
	0    1    1    0   
$EndComp
Connection ~ 6150 4900
Wire Wire Line
	6150 4900 6100 4900
Wire Wire Line
	6150 4900 6150 4500
Wire Wire Line
	6150 4500 5850 4500
Wire Wire Line
	5500 4800 5350 4800
Wire Wire Line
	5350 4800 5350 4500
Wire Wire Line
	5350 4500 5550 4500
Connection ~ 5350 4800
$Comp
L synkie_symbols:UMCC J3
U 1 1 6175696C
P 2650 1250
F 0 "J3" H 2892 1537 60  0000 C CNN
F 1 "Burst through" H 2892 1431 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 3050 1090 60  0001 C CNN
F 3 "" H 2650 1250 60  0000 C CNN
	1    2650 1250
	-1   0    0    -1  
$EndComp
Text Label 2650 1250 0    50   ~ 0
burstin
$Comp
L power:GND #PWR0104
U 1 1 61756973
P 2650 1450
F 0 "#PWR0104" H 2650 1200 50  0001 C CNN
F 1 "GND" H 2655 1277 50  0000 C CNN
F 2 "" H 2650 1450 50  0001 C CNN
F 3 "" H 2650 1450 50  0001 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1350 2650 1450
Connection ~ 2650 1450
$Comp
L power:GND #PWR0118
U 1 1 617574F6
P 2400 5100
F 0 "#PWR0118" H 2400 4850 50  0001 C CNN
F 1 "GND" V 2405 4972 50  0000 R CNN
F 2 "" H 2400 5100 50  0001 C CNN
F 3 "" H 2400 5100 50  0001 C CNN
	1    2400 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 4800 1650 4800
Connection ~ 1650 4800
Wire Wire Line
	3800 4800 3400 4800
Connection ~ 3800 4800
Wire Wire Line
	6600 4900 6800 4900
$Comp
L synkie_symbols:Conn_01x02 J4
U 1 1 61795FBA
P 7500 4150
F 0 "J4" H 7580 4142 50  0000 L CNN
F 1 "subcarrier-out" H 7580 4051 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 7500 4150 50  0001 C CNN
F 3 "~" H 7500 4150 50  0001 C CNN
	1    7500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4150 6800 4150
Wire Wire Line
	6800 4150 6800 4900
Connection ~ 6800 4900
Wire Wire Line
	6800 4900 7200 4900
$Comp
L power:GND #PWR0126
U 1 1 61797608
P 7300 4250
F 0 "#PWR0126" H 7300 4000 50  0001 C CNN
F 1 "GND" H 7305 4077 50  0000 C CNN
F 2 "" H 7300 4250 50  0001 C CNN
F 3 "" H 7300 4250 50  0001 C CNN
	1    7300 4250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB2
U 1 1 6179B675
P 6350 1350
F 0 "FB2" V 6450 1200 50  0000 C CNN
F 1 "Ferrite_Bead" V 6450 1600 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6280 1350 50  0001 C CNN
F 3 "~" H 6350 1350 50  0001 C CNN
	1    6350 1350
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB1
U 1 1 6179E216
P 6400 1150
F 0 "FB1" V 6500 1000 50  0000 C CNN
F 1 "Ferrite_Bead" V 6500 1400 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 1150 50  0001 C CNN
F 3 "~" H 6400 1150 50  0001 C CNN
	1    6400 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 1150 6250 1150
Wire Wire Line
	5950 1350 6200 1350
$Comp
L power:GND #PWR0130
U 1 1 617A0415
P 5950 1250
F 0 "#PWR0130" H 5950 1000 50  0001 C CNN
F 1 "GND" V 5955 1122 50  0001 R CNN
F 2 "" H 5950 1250 50  0001 C CNN
F 3 "" H 5950 1250 50  0001 C CNN
	1    5950 1250
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:-5V #PWR0137
U 1 1 617A3266
P 7650 1400
F 0 "#PWR0137" H 7650 1500 50  0001 C CNN
F 1 "-5V" H 7665 1573 50  0000 C CNN
F 2 "" H 7650 1400 50  0001 C CNN
F 3 "" H 7650 1400 50  0001 C CNN
	1    7650 1400
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0138
U 1 1 617A326C
P 7650 800
F 0 "#PWR0138" H 7650 650 50  0001 C CNN
F 1 "+5V" H 7665 973 50  0000 C CNN
F 2 "" H 7650 800 50  0001 C CNN
F 3 "" H 7650 800 50  0001 C CNN
	1    7650 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 617A327E
P 7650 1100
F 0 "#PWR0139" H 7650 850 50  0001 C CNN
F 1 "GND" V 7655 972 50  0000 R CNN
F 2 "" H 7650 1100 50  0001 C CNN
F 3 "" H 7650 1100 50  0001 C CNN
	1    7650 1100
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C7
U 1 1 617A4161
P 7650 900
F 0 "C7" H 7738 946 50  0000 L CNN
F 1 "10u" H 7738 855 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7650 900 50  0001 C CNN
F 3 "~" H 7650 900 50  0001 C CNN
	1    7650 900 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:CP_Small C10
U 1 1 617A4DA0
P 7650 1300
F 0 "C10" H 7738 1346 50  0000 L CNN
F 1 "10u" H 7738 1255 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7650 1300 50  0001 C CNN
F 3 "~" H 7650 1300 50  0001 C CNN
	1    7650 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1000 7650 1100
Connection ~ 7650 1100
Wire Wire Line
	7650 1100 7650 1200
$Comp
L Device:C C11
U 1 1 617A7F8A
P 4900 4800
F 0 "C11" H 5015 4846 50  0000 L CNN
F 1 "100n" V 4700 4750 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4938 4650 50  0001 C CNN
F 3 "~" H 4900 4800 50  0001 C CNN
	1    4900 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 4800 4750 4800
Connection ~ 4600 4800
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 617D92C2
P 8150 3000
F 0 "H2" H 8250 3049 50  0000 L CNN
F 1 "MountingHole_Pad" H 8250 2958 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 8150 3000 50  0001 C CNN
F 3 "~" H 8150 3000 50  0001 C CNN
	1    8150 3000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 617D94C2
P 9200 2950
F 0 "H1" H 9300 2999 50  0000 L CNN
F 1 "MountingHole_Pad" H 9300 2908 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 9200 2950 50  0001 C CNN
F 3 "~" H 9200 2950 50  0001 C CNN
	1    9200 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 617D9C60
P 8150 3100
F 0 "#PWR0108" H 8150 2850 50  0001 C CNN
F 1 "GND" V 8155 2972 50  0000 R CNN
F 2 "" H 8150 3100 50  0001 C CNN
F 3 "" H 8150 3100 50  0001 C CNN
	1    8150 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 617DA266
P 9200 3050
F 0 "#PWR0111" H 9200 2800 50  0001 C CNN
F 1 "GND" V 9205 2922 50  0000 R CNN
F 2 "" H 9200 3050 50  0001 C CNN
F 3 "" H 9200 3050 50  0001 C CNN
	1    9200 3050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
