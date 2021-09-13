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
L power:+5V #PWR0101
U 1 1 61D9637C
P 2900 1450
F 0 "#PWR0101" H 2900 1300 50  0001 C CNN
F 1 "+5V" H 2915 1623 50  0000 C CNN
F 2 "" H 2900 1450 50  0001 C CNN
F 3 "" H 2900 1450 50  0001 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 61D96840
P 2900 1850
F 0 "R3" H 2970 1896 50  0000 L CNN
F 1 "470" H 2970 1805 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 1850 50  0001 C CNN
F 3 "~" H 2900 1850 50  0001 C CNN
	1    2900 1850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Trans_NPN_Generic Q1
U 1 1 61D97451
P 3400 2000
F 0 "Q1" H 3250 2150 50  0000 L CNN
F 1 "Trans_NPN_Generic" H 3538 1955 50  0001 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3400 2000 50  0001 C CNN
F 3 "" H 3400 2000 50  0001 C CNN
	1    3400 2000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Trans_NPN_Generic Q2
U 1 1 61D9A8E0
P 3800 2000
F 0 "Q2" H 3650 2150 50  0000 L CNN
F 1 "Trans_NPN_Generic" H 3938 1955 50  0001 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3800 2000 50  0001 C CNN
F 3 "" H 3800 2000 50  0001 C CNN
	1    3800 2000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61D9B027
P 3600 2200
F 0 "C1" V 3348 2200 50  0000 C CNN
F 1 "47n" V 3439 2200 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3638 2050 50  0001 C CNN
F 3 "~" H 3600 2200 50  0001 C CNN
	1    3600 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 2000 3150 2000
Wire Wire Line
	3150 2000 3150 1700
Wire Wire Line
	3150 1700 4050 1700
Wire Wire Line
	4050 1700 4050 2000
Wire Wire Line
	4050 2000 3950 2000
Wire Wire Line
	3150 2000 2900 2000
Connection ~ 3150 2000
$Comp
L Device:R R7
U 1 1 61DA37E4
P 2900 2600
F 0 "R7" H 2970 2646 50  0000 L CNN
F 1 "470" H 2970 2555 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 2600 50  0001 C CNN
F 3 "~" H 2900 2600 50  0001 C CNN
	1    2900 2600
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Trans_NPN_Generic Q3
U 1 1 61DA37EA
P 3400 2750
F 0 "Q3" H 3250 2900 50  0000 L CNN
F 1 "Trans_NPN_Generic" H 3538 2705 50  0001 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3400 2750 50  0001 C CNN
F 3 "" H 3400 2750 50  0001 C CNN
	1    3400 2750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Trans_NPN_Generic Q4
U 1 1 61DA37F0
P 3800 2750
F 0 "Q4" H 3650 2900 50  0000 L CNN
F 1 "Trans_NPN_Generic" H 3938 2705 50  0001 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3800 2750 50  0001 C CNN
F 3 "" H 3800 2750 50  0001 C CNN
	1    3800 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61DA37F6
P 3600 2950
F 0 "C4" V 3348 2950 50  0000 C CNN
F 1 "47n" V 3439 2950 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3638 2800 50  0001 C CNN
F 3 "~" H 3600 2950 50  0001 C CNN
	1    3600 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 2750 3150 2750
Wire Wire Line
	3150 2750 3150 2450
Wire Wire Line
	3150 2450 4050 2450
Wire Wire Line
	4050 2450 4050 2750
Wire Wire Line
	4050 2750 3950 2750
Wire Wire Line
	3150 2750 2900 2750
Connection ~ 3150 2750
Wire Wire Line
	3450 2200 3450 2350
Connection ~ 3450 2200
Wire Wire Line
	3750 2200 3750 2550
Connection ~ 3750 2200
Wire Wire Line
	3750 1800 3750 1450
Wire Wire Line
	3750 1450 3450 1450
Wire Wire Line
	3450 1800 3450 1450
Connection ~ 3450 1450
Wire Wire Line
	3450 1450 2900 1450
Wire Wire Line
	2900 1700 2900 1450
Connection ~ 2900 1450
Wire Wire Line
	2900 2450 2900 2000
Connection ~ 2900 2000
$Comp
L Device:R R10
U 1 1 61DA7479
P 2900 3350
F 0 "R10" H 2970 3396 50  0000 L CNN
F 1 "470" H 2970 3305 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 3350 50  0001 C CNN
F 3 "~" H 2900 3350 50  0001 C CNN
	1    2900 3350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Trans_NPN_Generic Q5
U 1 1 61DA747F
P 3400 3500
F 0 "Q5" H 3250 3650 50  0000 L CNN
F 1 "Trans_NPN_Generic" H 3538 3455 50  0001 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3400 3500 50  0001 C CNN
F 3 "" H 3400 3500 50  0001 C CNN
	1    3400 3500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Trans_NPN_Generic Q6
U 1 1 61DA7485
P 3800 3500
F 0 "Q6" H 3650 3650 50  0000 L CNN
F 1 "Trans_NPN_Generic" H 3938 3455 50  0001 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3800 3500 50  0001 C CNN
F 3 "" H 3800 3500 50  0001 C CNN
	1    3800 3500
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 61DA748B
P 3600 3700
F 0 "C8" V 3348 3700 50  0000 C CNN
F 1 "47n" V 3439 3700 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3638 3550 50  0001 C CNN
F 3 "~" H 3600 3700 50  0001 C CNN
	1    3600 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 3500 3150 3500
Wire Wire Line
	3150 3500 3150 3200
Wire Wire Line
	3150 3200 4050 3200
Wire Wire Line
	4050 3200 4050 3500
Wire Wire Line
	4050 3500 3950 3500
Wire Wire Line
	3150 3500 2900 3500
Connection ~ 3150 3500
Wire Wire Line
	3450 2950 3450 3300
Wire Wire Line
	3750 2950 3750 3300
Wire Wire Line
	2900 3200 2900 2750
Connection ~ 2900 2750
$Comp
L Device:R R11
U 1 1 61DA95BA
P 2900 4100
F 0 "R11" H 2970 4146 50  0000 L CNN
F 1 "470" H 2970 4055 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 4100 50  0001 C CNN
F 3 "~" H 2900 4100 50  0001 C CNN
	1    2900 4100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Trans_NPN_Generic Q7
U 1 1 61DA95C0
P 3400 4250
F 0 "Q7" H 3250 4400 50  0000 L CNN
F 1 "Trans_NPN_Generic" H 3538 4205 50  0001 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3400 4250 50  0001 C CNN
F 3 "" H 3400 4250 50  0001 C CNN
	1    3400 4250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Trans_NPN_Generic Q8
U 1 1 61DA95C6
P 3800 4250
F 0 "Q8" H 3650 4400 50  0000 L CNN
F 1 "Trans_NPN_Generic" H 3938 4205 50  0001 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3800 4250 50  0001 C CNN
F 3 "" H 3800 4250 50  0001 C CNN
	1    3800 4250
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 61DA95CC
P 3600 4450
F 0 "C9" V 3348 4450 50  0000 C CNN
F 1 "47n" V 3439 4450 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3638 4300 50  0001 C CNN
F 3 "~" H 3600 4450 50  0001 C CNN
	1    3600 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 4250 3150 4250
Wire Wire Line
	3150 4250 3150 3950
Wire Wire Line
	3150 3950 4050 3950
Wire Wire Line
	4050 3950 4050 4250
Wire Wire Line
	4050 4250 3950 4250
Wire Wire Line
	3150 4250 2900 4250
Connection ~ 3150 4250
Wire Wire Line
	3450 3700 3450 4050
Wire Wire Line
	3750 3700 3750 4050
Wire Wire Line
	2900 3950 2900 3500
Connection ~ 2900 3500
Connection ~ 3450 3700
Connection ~ 3750 3700
Connection ~ 3450 2950
Connection ~ 3750 2950
$Comp
L synkie_symbols:Trans_NPN_Generic Q9
U 1 1 61DAC5CE
P 3400 5000
F 0 "Q9" H 3250 5150 50  0000 L CNN
F 1 "Trans_NPN_Generic" H 3538 4955 50  0001 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3400 5000 50  0001 C CNN
F 3 "" H 3400 5000 50  0001 C CNN
	1    3400 5000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Trans_NPN_Generic Q10
U 1 1 61DAC5D4
P 3800 5000
F 0 "Q10" H 3650 5150 50  0000 L CNN
F 1 "Trans_NPN_Generic" H 3938 4955 50  0001 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3800 5000 50  0001 C CNN
F 3 "" H 3800 5000 50  0001 C CNN
	1    3800 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 4450 3450 4800
Wire Wire Line
	3750 4450 3750 4800
Connection ~ 3450 4450
Connection ~ 3750 4450
$Comp
L Device:R R12
U 1 1 61DAC5C8
P 2900 4500
F 0 "R12" H 2970 4546 50  0000 L CNN
F 1 "470" H 2970 4455 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 4500 50  0001 C CNN
F 3 "~" H 2900 4500 50  0001 C CNN
	1    2900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4250 2900 4350
Connection ~ 2900 4250
$Comp
L power:GND #PWR0102
U 1 1 61DAF6B2
P 2900 4650
F 0 "#PWR0102" H 2900 4400 50  0001 C CNN
F 1 "GND" H 2905 4477 50  0000 C CNN
F 2 "" H 2900 4650 50  0001 C CNN
F 3 "" H 2900 4650 50  0001 C CNN
	1    2900 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 61DB6AD8
P 2200 5000
F 0 "R15" V 1993 5000 50  0000 C CNN
F 1 "100k" V 2084 5000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2130 5000 50  0001 C CNN
F 3 "~" H 2200 5000 50  0001 C CNN
	1    2200 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 61DB726C
P 2350 5150
F 0 "R17" H 2280 5104 50  0000 R CNN
F 1 "1k" H 2280 5195 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 5150 50  0001 C CNN
F 3 "~" H 2350 5150 50  0001 C CNN
	1    2350 5150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61DB7E13
P 2350 5300
F 0 "#PWR0103" H 2350 5050 50  0001 C CNN
F 1 "GND" H 2355 5127 50  0000 C CNN
F 2 "" H 2350 5300 50  0001 C CNN
F 3 "" H 2350 5300 50  0001 C CNN
	1    2350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5000 2350 5000
Connection ~ 2350 5000
$Comp
L synkie_symbols:Conn_01x01 J3
U 1 1 61DB9217
P 1850 5000
F 0 "J3" H 1768 4775 50  0000 C CNN
F 1 "INPUT" H 1768 4866 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 1850 5000 50  0001 C CNN
F 3 "~" H 1850 5000 50  0001 C CNN
	1    1850 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 5200 3600 5200
$Comp
L synkie_symbols:Trans_NPN_Generic Q11
U 1 1 61DBA9D1
P 4150 5700
F 0 "Q11" H 4000 5850 50  0000 L CNN
F 1 "Trans_NPN_Generic" H 4288 5655 50  0001 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 4150 5700 50  0001 C CNN
F 3 "" H 4150 5700 50  0001 C CNN
	1    4150 5700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4100 5900 3600 5900
Wire Wire Line
	3600 5900 3600 5200
Connection ~ 3600 5200
Wire Wire Line
	3600 5200 3750 5200
$Comp
L Device:R R18
U 1 1 61DBD3DC
P 4100 5350
F 0 "R18" H 4030 5304 50  0000 R CNN
F 1 "470k" H 4030 5395 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 5350 50  0001 C CNN
F 3 "~" H 4100 5350 50  0001 C CNN
	1    4100 5350
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 61DBD8BF
P 4100 5200
F 0 "#PWR0104" H 4100 5050 50  0001 C CNN
F 1 "+5V" H 4250 5250 50  0000 C CNN
F 2 "" H 4100 5200 50  0001 C CNN
F 3 "" H 4100 5200 50  0001 C CNN
	1    4100 5200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL062 U3
U 1 1 61DBE3F3
P 4150 6450
F 0 "U3" H 4200 6650 50  0000 C CNN
F 1 "TL062" H 4100 6450 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4150 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 4150 6450 50  0001 C CNN
	1    4150 6450
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL062 U3
U 2 1 61DC374B
P 5650 6450
F 0 "U3" H 5800 6600 50  0000 C CNN
F 1 "TL062" H 5600 6450 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5650 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 5650 6450 50  0001 C CNN
	2    5650 6450
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL062 U3
U 3 1 61DC96F3
P 5200 7300
F 0 "U3" H 5158 7346 50  0000 L CNN
F 1 "TL062" H 5158 7255 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5200 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 5200 7300 50  0001 C CNN
	3    5200 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6450 3600 6450
Wire Wire Line
	3600 6450 3600 6100
Connection ~ 3600 5900
$Comp
L Device:C C12
U 1 1 61DD0D27
P 4200 6100
F 0 "C12" V 4300 5950 50  0000 C CNN
F 1 "100p" V 4039 6100 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4238 5950 50  0001 C CNN
F 3 "~" H 4200 6100 50  0001 C CNN
	1    4200 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 6100 3600 6100
Connection ~ 3600 6100
Wire Wire Line
	3600 6100 3600 5900
Wire Wire Line
	4350 6100 4550 6100
Wire Wire Line
	4550 6100 4550 6350
Wire Wire Line
	4550 6350 4450 6350
$Comp
L power:GND #PWR0105
U 1 1 61DD45A1
P 4450 6550
F 0 "#PWR0105" H 4450 6300 50  0001 C CNN
F 1 "GND" H 4455 6377 50  0000 C CNN
F 2 "" H 4450 6550 50  0001 C CNN
F 3 "" H 4450 6550 50  0001 C CNN
	1    4450 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6100 4550 5500
Wire Wire Line
	4550 5500 4100 5500
Connection ~ 4550 6100
Connection ~ 4100 5500
Wire Wire Line
	5350 6450 5200 6450
Wire Wire Line
	5200 6450 5200 5700
Wire Wire Line
	5200 5700 4300 5700
$Comp
L Device:R R19
U 1 1 61DD7CF5
P 5700 5700
F 0 "R19" V 5493 5700 50  0000 C CNN
F 1 "1k" V 5584 5700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5630 5700 50  0001 C CNN
F 3 "~" H 5700 5700 50  0001 C CNN
	1    5700 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 5700 5200 5700
Connection ~ 5200 5700
Wire Wire Line
	5850 5700 6100 5700
Wire Wire Line
	6100 5700 6100 6350
Wire Wire Line
	6100 6350 5950 6350
$Comp
L power:GND #PWR0106
U 1 1 61DDB110
P 5950 6550
F 0 "#PWR0106" H 5950 6300 50  0001 C CNN
F 1 "GND" H 5955 6377 50  0000 C CNN
F 2 "" H 5950 6550 50  0001 C CNN
F 3 "" H 5950 6550 50  0001 C CNN
	1    5950 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 61DDB8CA
P 6250 5700
F 0 "R20" V 6043 5700 50  0000 C CNN
F 1 "53k" V 6134 5700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6180 5700 50  0001 C CNN
F 3 "~" H 6250 5700 50  0001 C CNN
	1    6250 5700
	0    1    1    0   
$EndComp
Connection ~ 6100 5700
$Comp
L synkie_symbols:Conn_01x01 J4
U 1 1 61DDC408
P 6600 5700
F 0 "J4" H 6680 5742 50  0000 L CNN
F 1 "CV-IN" H 6680 5651 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 6600 5700 50  0001 C CNN
F 3 "~" H 6600 5700 50  0001 C CNN
	1    6600 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 61DDDB1A
P 4950 7000
F 0 "C13" V 4698 7000 50  0000 C CNN
F 1 "100n" V 4789 7000 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4988 6850 50  0001 C CNN
F 3 "~" H 4950 7000 50  0001 C CNN
	1    4950 7000
	0    1    1    0   
$EndComp
$Comp
L Device:C C14
U 1 1 61DDE467
P 4950 7600
F 0 "C14" V 4698 7600 50  0000 C CNN
F 1 "100n" V 4789 7600 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4988 7450 50  0001 C CNN
F 3 "~" H 4950 7600 50  0001 C CNN
	1    4950 7600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 61DDEB48
P 4800 7000
F 0 "#PWR0107" H 4800 6750 50  0001 C CNN
F 1 "GND" H 4805 6827 50  0000 C CNN
F 2 "" H 4800 7000 50  0001 C CNN
F 3 "" H 4800 7000 50  0001 C CNN
	1    4800 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61DDF0AC
P 4800 7600
F 0 "#PWR0108" H 4800 7350 50  0001 C CNN
F 1 "GND" H 4805 7427 50  0000 C CNN
F 2 "" H 4800 7600 50  0001 C CNN
F 3 "" H 4800 7600 50  0001 C CNN
	1    4800 7600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 61DDFC20
P 5100 7000
F 0 "#PWR0109" H 5100 6850 50  0001 C CNN
F 1 "+5V" H 5115 7173 50  0000 C CNN
F 2 "" H 5100 7000 50  0001 C CNN
F 3 "" H 5100 7000 50  0001 C CNN
	1    5100 7000
	1    0    0    -1  
$EndComp
Connection ~ 5100 7000
$Comp
L power:-5V #PWR0110
U 1 1 61DE0602
P 5100 7600
F 0 "#PWR0110" H 5100 7700 50  0001 C CNN
F 1 "-5V" H 5115 7773 50  0000 C CNN
F 2 "" H 5100 7600 50  0001 C CNN
F 3 "" H 5100 7600 50  0001 C CNN
	1    5100 7600
	-1   0    0    1   
$EndComp
Connection ~ 5100 7600
$Comp
L Amplifier_Operational:TL062 U1
U 1 1 61DE1344
P 5400 1700
F 0 "U1" H 5450 1900 50  0000 C CNN
F 1 "TL062" H 5350 1700 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5400 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 5400 1700 50  0001 C CNN
	1    5400 1700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL062 U1
U 2 1 61DE7A84
P 5450 2850
F 0 "U1" H 5600 3000 50  0000 C CNN
F 1 "TL062" H 5400 2850 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5450 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 5450 2850 50  0001 C CNN
	2    5450 2850
	1    0    0    1   
$EndComp
Wire Wire Line
	3750 2200 4450 2200
Wire Wire Line
	4450 2200 4450 1600
Wire Wire Line
	4450 1600 5100 1600
Wire Wire Line
	3450 2350 4450 2350
Wire Wire Line
	4450 2350 4450 2950
Wire Wire Line
	4450 2950 5150 2950
Connection ~ 3450 2350
Wire Wire Line
	3450 2350 3450 2550
$Comp
L Device:R R5
U 1 1 61DF6281
P 4950 2250
F 0 "R5" H 5020 2296 50  0000 L CNN
F 1 "1k" H 5020 2205 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 2250 50  0001 C CNN
F 3 "~" H 4950 2250 50  0001 C CNN
	1    4950 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1800 4950 1800
Wire Wire Line
	4950 1800 4950 2050
Wire Wire Line
	5150 2750 4950 2750
Wire Wire Line
	4950 2750 4950 2500
$Comp
L Device:R R4
U 1 1 61DFA29D
P 5400 2050
F 0 "R4" V 5193 2050 50  0000 C CNN
F 1 "10k" V 5284 2050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 2050 50  0001 C CNN
F 3 "~" H 5400 2050 50  0001 C CNN
	1    5400 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2050 4950 2050
Connection ~ 4950 2050
Wire Wire Line
	4950 2050 4950 2100
Wire Wire Line
	5700 1700 5700 2050
Wire Wire Line
	5700 2050 5550 2050
$Comp
L Device:R R6
U 1 1 61DFE6A2
P 5400 2500
F 0 "R6" V 5193 2500 50  0000 C CNN
F 1 "10k" V 5284 2500 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 2500 50  0001 C CNN
F 3 "~" H 5400 2500 50  0001 C CNN
	1    5400 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2500 4950 2500
Connection ~ 4950 2500
Wire Wire Line
	4950 2500 4950 2400
Wire Wire Line
	5500 2500 5550 2500
Wire Wire Line
	5750 2500 5750 2850
Connection ~ 5550 2500
Wire Wire Line
	5550 2500 5750 2500
$Comp
L Device:R R1
U 1 1 61E02AF9
P 6100 1700
F 0 "R1" V 5893 1700 50  0000 C CNN
F 1 "4k7" V 5984 1700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6030 1700 50  0001 C CNN
F 3 "~" H 6100 1700 50  0001 C CNN
	1    6100 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 1700 5950 1700
Connection ~ 5700 1700
$Comp
L Device:R R8
U 1 1 61E050EA
P 6150 2850
F 0 "R8" V 5943 2850 50  0000 C CNN
F 1 "4k7" V 6034 2850 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6080 2850 50  0001 C CNN
F 3 "~" H 6150 2850 50  0001 C CNN
	1    6150 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2850 5750 2850
Connection ~ 5750 2850
$Comp
L Amplifier_Operational:TL062 U1
U 3 1 61E0C413
P 9050 2700
F 0 "U1" H 9008 2746 50  0000 L CNN
F 1 "TL062" H 9008 2655 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 9050 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 9050 2700 50  0001 C CNN
	3    9050 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61E0C419
P 8800 2400
F 0 "C2" V 8548 2400 50  0000 C CNN
F 1 "100n" V 8639 2400 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8838 2250 50  0001 C CNN
F 3 "~" H 8800 2400 50  0001 C CNN
	1    8800 2400
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 61E0C41F
P 8800 3000
F 0 "C5" V 8548 3000 50  0000 C CNN
F 1 "100n" V 8639 3000 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8838 2850 50  0001 C CNN
F 3 "~" H 8800 3000 50  0001 C CNN
	1    8800 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 61E0C425
P 8650 2400
F 0 "#PWR0111" H 8650 2150 50  0001 C CNN
F 1 "GND" H 8655 2227 50  0000 C CNN
F 2 "" H 8650 2400 50  0001 C CNN
F 3 "" H 8650 2400 50  0001 C CNN
	1    8650 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 61E0C42B
P 8650 3000
F 0 "#PWR0112" H 8650 2750 50  0001 C CNN
F 1 "GND" H 8655 2827 50  0000 C CNN
F 2 "" H 8650 3000 50  0001 C CNN
F 3 "" H 8650 3000 50  0001 C CNN
	1    8650 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 61E0C431
P 8950 2400
F 0 "#PWR0113" H 8950 2250 50  0001 C CNN
F 1 "+5V" H 8965 2573 50  0000 C CNN
F 2 "" H 8950 2400 50  0001 C CNN
F 3 "" H 8950 2400 50  0001 C CNN
	1    8950 2400
	1    0    0    -1  
$EndComp
Connection ~ 8950 2400
$Comp
L power:-5V #PWR0114
U 1 1 61E0C438
P 8950 3000
F 0 "#PWR0114" H 8950 3100 50  0001 C CNN
F 1 "-5V" H 8965 3173 50  0000 C CNN
F 2 "" H 8950 3000 50  0001 C CNN
F 3 "" H 8950 3000 50  0001 C CNN
	1    8950 3000
	-1   0    0    1   
$EndComp
Connection ~ 8950 3000
$Comp
L Amplifier_Operational:TL062 U2
U 1 1 61E0E1AC
P 6750 2250
F 0 "U2" H 6800 2450 50  0000 C CNN
F 1 "TL062" H 6700 2250 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 6750 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 6750 2250 50  0001 C CNN
	1    6750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1700 6450 1700
Wire Wire Line
	6450 1700 6450 2150
Wire Wire Line
	6450 2850 6450 2350
$Comp
L Amplifier_Operational:TL062 U2
U 3 1 61E1A8F1
P 10050 2700
F 0 "U2" H 10008 2746 50  0000 L CNN
F 1 "TL062" H 10008 2655 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 10050 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 10050 2700 50  0001 C CNN
	3    10050 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 61E1A8F7
P 9800 2400
F 0 "C3" V 9548 2400 50  0000 C CNN
F 1 "100n" V 9639 2400 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9838 2250 50  0001 C CNN
F 3 "~" H 9800 2400 50  0001 C CNN
	1    9800 2400
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 61E1A8FD
P 9800 3000
F 0 "C6" V 9548 3000 50  0000 C CNN
F 1 "100n" V 9639 3000 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9838 2850 50  0001 C CNN
F 3 "~" H 9800 3000 50  0001 C CNN
	1    9800 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 61E1A903
P 9650 2400
F 0 "#PWR0115" H 9650 2150 50  0001 C CNN
F 1 "GND" H 9655 2227 50  0000 C CNN
F 2 "" H 9650 2400 50  0001 C CNN
F 3 "" H 9650 2400 50  0001 C CNN
	1    9650 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 61E1A909
P 9650 3000
F 0 "#PWR0116" H 9650 2750 50  0001 C CNN
F 1 "GND" H 9655 2827 50  0000 C CNN
F 2 "" H 9650 3000 50  0001 C CNN
F 3 "" H 9650 3000 50  0001 C CNN
	1    9650 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 61E1A90F
P 9950 2400
F 0 "#PWR0117" H 9950 2250 50  0001 C CNN
F 1 "+5V" H 9965 2573 50  0000 C CNN
F 2 "" H 9950 2400 50  0001 C CNN
F 3 "" H 9950 2400 50  0001 C CNN
	1    9950 2400
	1    0    0    -1  
$EndComp
Connection ~ 9950 2400
$Comp
L power:-5V #PWR0118
U 1 1 61E1A916
P 9950 3000
F 0 "#PWR0118" H 9950 3100 50  0001 C CNN
F 1 "-5V" H 9965 3173 50  0000 C CNN
F 2 "" H 9950 3000 50  0001 C CNN
F 3 "" H 9950 3000 50  0001 C CNN
	1    9950 3000
	-1   0    0    1   
$EndComp
Connection ~ 9950 3000
$Comp
L Device:R R2
U 1 1 61E1C93C
P 6750 1700
F 0 "R2" V 6543 1700 50  0000 C CNN
F 1 "47k" V 6634 1700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6680 1700 50  0001 C CNN
F 3 "~" H 6750 1700 50  0001 C CNN
	1    6750 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 1700 6450 1700
Connection ~ 6450 1700
$Comp
L power:GND #PWR0119
U 1 1 61E1FA49
P 7100 1750
F 0 "#PWR0119" H 7100 1500 50  0001 C CNN
F 1 "GND" H 7105 1577 50  0000 C CNN
F 2 "" H 7100 1750 50  0001 C CNN
F 3 "" H 7100 1750 50  0001 C CNN
	1    7100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1700 7100 1700
Wire Wire Line
	7100 1700 7100 1750
$Comp
L Device:R R9
U 1 1 61E2275B
P 6750 2850
F 0 "R9" V 6543 2850 50  0000 C CNN
F 1 "47k" V 6634 2850 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6680 2850 50  0001 C CNN
F 3 "~" H 6750 2850 50  0001 C CNN
	1    6750 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 2850 6450 2850
Connection ~ 6450 2850
Wire Wire Line
	7050 2250 7150 2250
Wire Wire Line
	7150 2250 7150 2550
Wire Wire Line
	7150 2850 6900 2850
$Comp
L synkie_symbols:Conn_01x01 J1
U 1 1 61E280BC
P 7450 2550
F 0 "J1" H 7530 2592 50  0000 L CNN
F 1 "OUTPUT" H 7530 2501 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7450 2550 50  0001 C CNN
F 3 "~" H 7450 2550 50  0001 C CNN
	1    7450 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2550 7150 2550
Connection ~ 7150 2550
Wire Wire Line
	7150 2550 7150 2850
$Comp
L Device:CP C7
U 1 1 61E32A0E
P 7150 3550
F 0 "C7" H 7268 3596 50  0000 L CNN
F 1 "100u" H 7268 3505 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7188 3400 50  0001 C CNN
F 3 "~" H 7150 3550 50  0001 C CNN
	1    7150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2850 7150 3400
Connection ~ 7150 2850
$Comp
L Device:R_POT RV1
U 1 1 61E37275
P 7150 4300
F 0 "RV1" H 7080 4254 50  0000 R CNN
F 1 "niederohmig" H 7080 4345 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Horizontal" H 7150 4300 50  0001 C CNN
F 3 "~" H 7150 4300 50  0001 C CNN
	1    7150 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 61E40366
P 7150 4750
F 0 "R14" H 7080 4704 50  0000 R CNN
F 1 "1k" H 7080 4795 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 4750 50  0001 C CNN
F 3 "~" H 7150 4750 50  0001 C CNN
	1    7150 4750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 61E407C5
P 7150 4900
F 0 "#PWR0120" H 7150 4650 50  0001 C CNN
F 1 "GND" H 7155 4727 50  0000 C CNN
F 2 "" H 7150 4900 50  0001 C CNN
F 3 "" H 7150 4900 50  0001 C CNN
	1    7150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3700 7150 4150
$Comp
L Device:R R16
U 1 1 61E553B4
P 5900 5000
F 0 "R16" H 5830 4954 50  0000 R CNN
F 1 "1k" H 5830 5045 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5830 5000 50  0001 C CNN
F 3 "~" H 5900 5000 50  0001 C CNN
	1    5900 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 61E556ED
P 5900 4700
F 0 "R13" H 5830 4654 50  0000 R CNN
F 1 "100k" H 5830 4745 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5830 4700 50  0001 C CNN
F 3 "~" H 5900 4700 50  0001 C CNN
	1    5900 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 4300 6800 4300
$Comp
L power:GND #PWR0121
U 1 1 61E62D79
P 5900 5150
F 0 "#PWR0121" H 5900 4900 50  0001 C CNN
F 1 "GND" H 5905 4977 50  0000 C CNN
F 2 "" H 5900 5150 50  0001 C CNN
F 3 "" H 5900 5150 50  0001 C CNN
	1    5900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4450 7150 4600
Wire Wire Line
	3950 5000 5350 5000
Wire Wire Line
	5350 5000 5350 4850
Wire Wire Line
	5350 4850 5900 4850
Connection ~ 5900 4850
$Comp
L Amplifier_Operational:TL062 U2
U 2 1 61E839C2
P 6500 4400
F 0 "U2" H 6650 4550 50  0000 C CNN
F 1 "TL062" H 6450 4400 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 6500 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 6500 4400 50  0001 C CNN
	2    6500 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6800 4500 6800 4750
Wire Wire Line
	6800 4750 6200 4750
Wire Wire Line
	6200 4750 6200 4400
Wire Wire Line
	6200 4400 5900 4400
Wire Wire Line
	5900 4400 5900 4550
Connection ~ 6200 4400
$Comp
L synkie_symbols:Conn_01x03 J2
U 1 1 61E9270E
P 9550 4450
F 0 "J2" H 9630 4492 50  0000 L CNN
F 1 "Conn_01x03" H 9630 4401 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 9550 4450 50  0001 C CNN
F 3 "~" H 9550 4450 50  0001 C CNN
	1    9550 4450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB1
U 1 1 61E93BB8
P 9200 4350
F 0 "FB1" V 8926 4350 50  0000 C CNN
F 1 "Ferrite_Bead" V 9017 4350 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9130 4350 50  0001 C CNN
F 3 "~" H 9200 4350 50  0001 C CNN
	1    9200 4350
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB2
U 1 1 61E93FA7
P 9200 4550
F 0 "FB2" V 8926 4550 50  0000 C CNN
F 1 "Ferrite_Bead" V 9017 4550 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9130 4550 50  0001 C CNN
F 3 "~" H 9200 4550 50  0001 C CNN
	1    9200 4550
	0    1    1    0   
$EndComp
$Comp
L power:-5V #PWR0122
U 1 1 61E942FA
P 9050 4550
F 0 "#PWR0122" H 9050 4650 50  0001 C CNN
F 1 "-5V" H 9065 4723 50  0000 C CNN
F 2 "" H 9050 4550 50  0001 C CNN
F 3 "" H 9050 4550 50  0001 C CNN
	1    9050 4550
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 61E94761
P 9050 4350
F 0 "#PWR0123" H 9050 4200 50  0001 C CNN
F 1 "+5V" H 9065 4523 50  0000 C CNN
F 2 "" H 9050 4350 50  0001 C CNN
F 3 "" H 9050 4350 50  0001 C CNN
	1    9050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4450 8900 4450
$Comp
L power:GND #PWR0124
U 1 1 61E98986
P 8900 4450
F 0 "#PWR0124" H 8900 4200 50  0001 C CNN
F 1 "GND" H 8905 4277 50  0000 C CNN
F 2 "" H 8900 4450 50  0001 C CNN
F 3 "" H 8900 4450 50  0001 C CNN
	1    8900 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 61E9923C
P 9750 5100
F 0 "#PWR0125" H 9750 4950 50  0001 C CNN
F 1 "+5V" H 9765 5273 50  0000 C CNN
F 2 "" H 9750 5100 50  0001 C CNN
F 3 "" H 9750 5100 50  0001 C CNN
	1    9750 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C10
U 1 1 61E9A451
P 9750 5250
F 0 "C10" H 9868 5296 50  0000 L CNN
F 1 "CP" H 9868 5205 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9788 5100 50  0001 C CNN
F 3 "~" H 9750 5250 50  0001 C CNN
	1    9750 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C11
U 1 1 61E9A604
P 9750 5550
F 0 "C11" H 9868 5596 50  0000 L CNN
F 1 "CP" H 9868 5505 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9788 5400 50  0001 C CNN
F 3 "~" H 9750 5550 50  0001 C CNN
	1    9750 5550
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0126
U 1 1 61E9ABE9
P 9750 5700
F 0 "#PWR0126" H 9750 5800 50  0001 C CNN
F 1 "-5V" H 9765 5873 50  0000 C CNN
F 2 "" H 9750 5700 50  0001 C CNN
F 3 "" H 9750 5700 50  0001 C CNN
	1    9750 5700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 61E9B0B8
P 9750 5400
F 0 "#PWR0127" H 9750 5150 50  0001 C CNN
F 1 "GND" V 9755 5272 50  0000 R CNN
F 2 "" H 9750 5400 50  0001 C CNN
F 3 "" H 9750 5400 50  0001 C CNN
	1    9750 5400
	0    1    1    0   
$EndComp
Connection ~ 9750 5400
Text Notes 7400 4100 0    50   ~ 0
10k\n
Wire Wire Line
	6300 2850 6450 2850
Text Notes 5200 3100 0    50   ~ 0
ev bias geben um das output runterzuziehen
$Comp
L Device:R R?
U 1 1 61390559
P 7650 2100
F 0 "R?" V 7443 2100 50  0000 C CNN
F 1 "75" V 7534 2100 50  0000 C CNN
F 2 "" V 7580 2100 50  0001 C CNN
F 3 "~" H 7650 2100 50  0001 C CNN
	1    7650 2100
	0    1    1    0   
$EndComp
$EndSCHEMATC
