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
L synkie_symbols:CP_Small C1
U 1 1 5DCABC45
P 10150 1150
F 0 "C1" V 10100 1050 50  0000 C CNN
F 1 "10u" V 10100 1250 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 10150 1150 50  0001 C CNN
F 3 "~" H 10150 1150 50  0001 C CNN
	1    10150 1150
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB2
U 1 1 5DCAD10D
P 10600 1350
F 0 "FB2" V 10750 1350 50  0000 C CNN
F 1 "330u" V 10850 1350 50  0000 C CNN
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
F 1 "330u" V 10417 1150 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10530 1150 50  0001 C CNN
F 3 "~" H 10600 1150 50  0001 C CNN
	1    10600 1150
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C2
U 1 1 5DCB0A0D
P 10150 1350
F 0 "C2" V 10100 1500 50  0000 C CNN
F 1 "10u" V 10100 1250 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 10150 1350 50  0001 C CNN
F 3 "~" H 10150 1350 50  0001 C CNN
	1    10150 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 1150 9800 1250
Connection ~ 9800 1250
Wire Wire Line
	9800 1250 9800 1350
$Comp
L synkie_symbols:GND #PWR07
U 1 1 5DCB53A6
P 9700 1250
F 0 "#PWR07" H 9700 1000 50  0001 C CNN
F 1 "GND" H 9705 1077 50  0000 C CNN
F 2 "" H 9700 1250 50  0001 C CNN
F 3 "" H 9700 1250 50  0001 C CNN
	1    9700 1250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR09
U 1 1 5DCB6075
P 10450 1650
F 0 "#PWR09" H 10450 1750 50  0001 C CNN
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
	9800 1250 9700 1250
Connection ~ 9700 1250
Wire Wire Line
	10450 1650 10550 1650
Wire Wire Line
	10450 1650 10450 1500
Connection ~ 10450 1650
Connection ~ 10450 800 
Wire Wire Line
	10450 800  10450 850 
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
L synkie_symbols:+5V #PWR08
U 1 1 5DCB58DB
P 10450 800
F 0 "#PWR08" H 10450 650 50  0001 C CNN
F 1 "+5V" H 10450 950 50  0000 C CNN
F 2 "" H 10450 800 50  0001 C CNN
F 3 "" H 10450 800 50  0001 C CNN
	1    10450 800 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:PWR_FLAG #FLG01
U 1 1 5DCB666B
P 9700 1250
F 0 "#FLG01" H 9700 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 9600 1450 50  0000 C CNN
F 2 "" H 9700 1250 50  0001 C CNN
F 3 "~" H 9700 1250 50  0001 C CNN
	1    9700 1250
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
L synkie_symbols:Trans_NPN_Generic Q1
U 1 1 642FEC7F
P 4500 3950
F 0 "Q1" H 4638 3996 50  0000 L CNN
F 1 "Trans_NPN" H 4638 3905 50  0000 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 4500 3950 50  0001 C CNN
F 3 "" H 4500 3950 50  0001 C CNN
	1    4500 3950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R4
U 1 1 64306ACE
P 4550 2800
F 0 "R4" V 4343 2800 50  0000 C CNN
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
L synkie_symbols:Trans_NPN_Generic Q2
U 1 1 6430F068
P 5050 3400
F 0 "Q2" H 5188 3446 50  0000 L CNN
F 1 "Trans_NPN" H 5188 3355 50  0000 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 5050 3400 50  0001 C CNN
F 3 "" H 5050 3400 50  0001 C CNN
	1    5050 3400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR01
U 1 1 643111B1
P 3950 2500
F 0 "#PWR01" H 3950 2350 50  0001 C CNN
F 1 "+5V" H 3965 2673 50  0000 C CNN
F 2 "" H 3950 2500 50  0001 C CNN
F 3 "" H 3950 2500 50  0001 C CNN
	1    3950 2500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR02
U 1 1 643130AD
P 4550 4700
F 0 "#PWR02" H 4550 4800 50  0001 C CNN
F 1 "-5V" H 4565 4873 50  0000 C CNN
F 2 "" H 4550 4700 50  0001 C CNN
F 3 "" H 4550 4700 50  0001 C CNN
	1    4550 4700
	-1   0    0    1   
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
	4550 3400 4550 3750
Wire Wire Line
	4900 3400 4550 3400
Wire Wire Line
	4550 2550 5100 2550
Wire Wire Line
	5100 2550 5100 3200
Connection ~ 4550 2550
$Comp
L synkie_symbols:R R5
U 1 1 6431EB5B
P 5100 3950
F 0 "R5" V 4893 3950 50  0000 C CNN
F 1 "1001" V 4984 3950 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 3950 50  0001 C CNN
F 3 "~" H 5100 3950 50  0001 C CNN
	1    5100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3600 5100 3700
$Comp
L synkie_symbols:C_Small C3
U 1 1 6432020A
P 5350 3700
F 0 "C3" V 5121 3700 50  0000 C CNN
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
L synkie_symbols:R R6
U 1 1 643236E2
P 5800 3700
F 0 "R6" V 5593 3700 50  0000 C CNN
F 1 "100" V 5684 3700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 3700 50  0001 C CNN
F 3 "~" H 5800 3700 50  0001 C CNN
	1    5800 3700
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R8
U 1 1 64323AD7
P 6400 3300
F 0 "R8" V 6193 3300 50  0000 C CNN
F 1 "10k" V 6284 3300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 3300 50  0001 C CNN
F 3 "~" H 6400 3300 50  0001 C CNN
	1    6400 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 3700 5650 3700
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
L synkie_symbols:R R10
U 1 1 6432EA54
P 7200 3800
F 0 "R10" V 6993 3800 50  0000 C CNN
F 1 "?" V 7084 3800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7130 3800 50  0001 C CNN
F 3 "~" H 7200 3800 50  0001 C CNN
	1    7200 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 3800 6900 3800
Connection ~ 6900 3800
$Comp
L synkie_symbols:Conn_01x01 J6
U 1 1 6433197F
P 7650 3800
F 0 "J6" H 7568 4017 50  0000 C CNN
F 1 "Conn_01x01" H 7568 3926 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7650 3800 50  0001 C CNN
F 3 "~" H 7650 3800 50  0001 C CNN
	1    7650 3800
	1    0    0    1   
$EndComp
Wire Wire Line
	7350 3800 7450 3800
$Comp
L synkie_symbols:Conn_01x01 J4
U 1 1 6434B914
P 6050 3050
F 0 "J4" H 5968 3267 50  0000 C CNN
F 1 "Conn_01x01" H 5968 3176 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 6050 3050 50  0001 C CNN
F 3 "~" H 6050 3050 50  0001 C CNN
	1    6050 3050
	0    1    -1   0   
$EndComp
Wire Wire Line
	6050 3250 6050 3300
Connection ~ 6050 3300
Wire Wire Line
	5950 3900 6150 3900
$Comp
L synkie_symbols:GND #PWR03
U 1 1 64353286
P 5950 3950
F 0 "#PWR03" H 5950 3700 50  0001 C CNN
F 1 "GND" H 5955 3777 50  0000 C CNN
F 2 "" H 5950 3950 50  0001 C CNN
F 3 "" H 5950 3950 50  0001 C CNN
	1    5950 3950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LMH6643 U1
U 2 1 64354E49
P 6450 4700
F 0 "U1" H 6450 5067 50  0000 C CNN
F 1 "LMH6643" H 6450 4976 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 6450 4700 50  0001 C CNN
F 3 "~" H 6450 4700 50  0001 C CNN
	2    6450 4700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R9
U 1 1 643557C8
P 6400 5050
F 0 "R9" V 6193 5050 50  0000 C CNN
F 1 "0" V 6284 5050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 5050 50  0001 C CNN
F 3 "~" H 6400 5050 50  0001 C CNN
	1    6400 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 5050 6100 5050
Wire Wire Line
	6100 5050 6100 4800
Wire Wire Line
	6100 4800 6150 4800
Wire Wire Line
	6550 5050 6800 5050
Wire Wire Line
	6800 5050 6800 4700
Wire Wire Line
	6800 4700 6750 4700
$Comp
L synkie_symbols:Conn_01x01 J5
U 1 1 6435764D
P 7050 4700
F 0 "J5" H 6968 4917 50  0000 C CNN
F 1 "Conn_01x01" H 6968 4826 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7050 4700 50  0001 C CNN
F 3 "~" H 7050 4700 50  0001 C CNN
	1    7050 4700
	1    0    0    1   
$EndComp
Wire Wire Line
	6800 4700 6850 4700
Connection ~ 6800 4700
$Comp
L synkie_symbols:Conn_01x01 J3
U 1 1 64358A72
P 5850 4800
F 0 "J3" H 5768 5017 50  0000 C CNN
F 1 "Conn_01x01" H 5768 4926 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 5850 4800 50  0001 C CNN
F 3 "~" H 5850 4800 50  0001 C CNN
	1    5850 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 4800 6100 4800
Connection ~ 6100 4800
$Comp
L synkie_symbols:Conn_01x01 J2
U 1 1 6435A0AE
P 5850 4600
F 0 "J2" H 5768 4817 50  0000 C CNN
F 1 "Conn_01x01" H 5768 4726 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 5850 4600 50  0001 C CNN
F 3 "~" H 5850 4600 50  0001 C CNN
	1    5850 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 4600 6100 4600
$Comp
L synkie_symbols:LMH6643 U1
U 3 1 6435C2CE
P 6500 2200
F 0 "U1" H 6458 2246 50  0000 L CNN
F 1 "LMH6643" H 6458 2155 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 6500 2200 50  0001 C CNN
F 3 "~" H 6500 2200 50  0001 C CNN
	3    6500 2200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR05
U 1 1 6435F321
P 6400 1800
F 0 "#PWR05" H 6400 1650 50  0001 C CNN
F 1 "+5V" H 6415 1973 50  0000 C CNN
F 2 "" H 6400 1800 50  0001 C CNN
F 3 "" H 6400 1800 50  0001 C CNN
	1    6400 1800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR06
U 1 1 6435F93C
P 6400 2600
F 0 "#PWR06" H 6400 2700 50  0001 C CNN
F 1 "-5V" H 6415 2773 50  0000 C CNN
F 2 "" H 6400 2600 50  0001 C CNN
F 3 "" H 6400 2600 50  0001 C CNN
	1    6400 2600
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C4
U 1 1 6436019F
P 6200 2000
F 0 "C4" H 6108 1954 50  0000 R CNN
F 1 "C_Small" H 6108 2045 50  0000 R CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6200 2000 50  0001 C CNN
F 3 "~" H 6200 2000 50  0001 C CNN
	1    6200 2000
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C5
U 1 1 6436077D
P 6200 2400
F 0 "C5" H 6108 2354 50  0000 R CNN
F 1 "C_Small" H 6108 2445 50  0000 R CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6200 2400 50  0001 C CNN
F 3 "~" H 6200 2400 50  0001 C CNN
	1    6200 2400
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR04
U 1 1 64360C21
P 6000 2250
F 0 "#PWR04" H 6000 2000 50  0001 C CNN
F 1 "GND" H 6005 2077 50  0000 C CNN
F 2 "" H 6000 2250 50  0001 C CNN
F 3 "" H 6000 2250 50  0001 C CNN
	1    6000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2500 6400 2550
Wire Wire Line
	6400 1800 6400 1850
Wire Wire Line
	6200 1900 6200 1850
Wire Wire Line
	6200 1850 6400 1850
Connection ~ 6400 1850
Wire Wire Line
	6400 1850 6400 1900
Wire Wire Line
	6200 2500 6200 2550
Wire Wire Line
	6200 2550 6400 2550
Connection ~ 6400 2550
Wire Wire Line
	6400 2550 6400 2600
Wire Wire Line
	6200 2100 6200 2200
Wire Wire Line
	6000 2250 6000 2200
Wire Wire Line
	6000 2200 6200 2200
Connection ~ 6200 2200
Wire Wire Line
	6200 2200 6200 2300
Wire Wire Line
	9800 1250 10750 1250
Wire Wire Line
	9800 1150 10050 1150
Wire Wire Line
	9800 1350 10050 1350
Wire Wire Line
	10250 1150 10450 1150
Connection ~ 10450 1150
Wire Wire Line
	10250 1350 10450 1350
Connection ~ 10450 1350
$Comp
L synkie_symbols:CP_Small C8
U 1 1 6434F323
P 10150 1000
F 0 "C8" V 10100 900 50  0000 C CNN
F 1 "220u" V 10100 1150 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 10150 1000 50  0001 C CNN
F 3 "~" H 10150 1000 50  0001 C CNN
	1    10150 1000
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C7
U 1 1 6434F5AF
P 10150 850
F 0 "C7" V 10100 750 50  0000 C CNN
F 1 "220u" V 10100 1000 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 10150 850 50  0001 C CNN
F 3 "~" H 10150 850 50  0001 C CNN
	1    10150 850 
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C9
U 1 1 6434F9E5
P 10150 1500
F 0 "C9" V 10100 1650 50  0000 C CNN
F 1 "220u" V 10100 1350 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 10150 1500 50  0001 C CNN
F 3 "~" H 10150 1500 50  0001 C CNN
	1    10150 1500
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:CP_Small C10
U 1 1 6434FD04
P 10150 1650
F 0 "C10" V 10100 1800 50  0000 C CNN
F 1 "220u" V 10100 1500 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 10150 1650 50  0001 C CNN
F 3 "~" H 10150 1650 50  0001 C CNN
	1    10150 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 1150 9800 1000
Wire Wire Line
	9800 850  10050 850 
Connection ~ 9800 1150
Wire Wire Line
	10050 1000 9800 1000
Connection ~ 9800 1000
Wire Wire Line
	9800 1000 9800 850 
Wire Wire Line
	10050 1650 9800 1650
Wire Wire Line
	9800 1650 9800 1500
Connection ~ 9800 1350
Wire Wire Line
	10050 1500 9800 1500
Connection ~ 9800 1500
Wire Wire Line
	9800 1500 9800 1350
Wire Wire Line
	10250 1500 10450 1500
Connection ~ 10450 1500
Wire Wire Line
	10450 1500 10450 1350
Wire Wire Line
	10250 1650 10450 1650
Wire Wire Line
	10250 850  10450 850 
Connection ~ 10450 850 
Wire Wire Line
	10450 850  10450 1000
Wire Wire Line
	10250 1000 10450 1000
Connection ~ 10450 1000
Wire Wire Line
	10450 1000 10450 1150
$Comp
L synkie_symbols:R R2
U 1 1 6436EE95
P 4550 4400
F 0 "R2" V 4343 4400 50  0000 C CNN
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
L synkie_symbols:C_Small C6
U 1 1 64378E6D
P 4700 4400
F 0 "C6" H 4608 4354 50  0000 R CNN
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
L synkie_symbols:Trans_NPN_Generic Q3
U 1 1 64385319
P 4000 3950
F 0 "Q3" H 4138 3996 50  0000 L CNN
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
	5950 3950 5950 3900
Wire Wire Line
	4550 4700 4550 4600
Connection ~ 4550 4600
$Comp
L synkie_symbols:R R3
U 1 1 643BB9A7
P 5800 4350
F 0 "R3" V 5593 4350 50  0000 C CNN
F 1 "0" V 5684 4350 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 4350 50  0001 C CNN
F 3 "~" H 5800 4350 50  0001 C CNN
	1    5800 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 4600 6100 4350
Wire Wire Line
	6100 4350 5950 4350
Connection ~ 6100 4600
Wire Wire Line
	6100 4600 6150 4600
$Comp
L synkie_symbols:GND #PWR010
U 1 1 643BE4BA
P 5600 4400
F 0 "#PWR010" H 5600 4150 50  0001 C CNN
F 1 "GND" H 5605 4227 50  0000 C CNN
F 2 "" H 5600 4400 50  0001 C CNN
F 3 "" H 5600 4400 50  0001 C CNN
	1    5600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4350 5600 4350
Wire Wire Line
	5600 4350 5600 4400
Text Notes 7900 2900 0    50   ~ 0
schema updated to match prototype, board needs re-routing
Text Notes 7900 3550 0    50   ~ 0
to do:\n- try lmh66443 instead of LM833\n- try different values for R1 and R4\n- try lower low cutoff (higher C3)\n  but needs better power supply filtering\n- R2: needed? Value?\n- chain both op amps?
Text Notes 3850 5400 0    50   ~ 0
to try:\n- reduce R2 / increase R4 to increase Q1 gain\n- increase R5 to reduce power supply load\n- then check if we can do supply filtering separately for transistor part
$EndSCHEMATC
