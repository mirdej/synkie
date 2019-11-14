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
L synkie_symbols:Opamp_Dual_Generic U1
U 2 1 5CEFE5D2
P 5700 2100
F 0 "U1" H 5700 2467 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 5700 2376 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5700 2100 50  0001 C CNN
F 3 "~" H 5700 2100 50  0001 C CNN
	2    5700 2100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 1 1 5CEFF9E5
P 5650 4000
F 0 "U1" H 5650 4367 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 5650 4276 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5650 4000 50  0001 C CNN
F 3 "~" H 5650 4000 50  0001 C CNN
	1    5650 4000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 3 1 5CF016E8
P 7800 2050
F 0 "U1" H 7758 2096 50  0000 L CNN
F 1 "Opamp_Dual_Generic" H 7758 2005 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 7800 2050 50  0001 C CNN
F 3 "~" H 7800 2050 50  0001 C CNN
	3    7800 2050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R1
U 1 1 5CF0371B
P 5000 2750
F 0 "R1" V 4793 2750 50  0000 C CNN
F 1 "220" V 4884 2750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4930 2750 50  0001 C CNN
F 3 "~" H 5000 2750 50  0001 C CNN
	1    5000 2750
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R3
U 1 1 5CF077C1
P 5650 2750
F 0 "R3" V 5443 2750 50  0000 C CNN
F 1 "220" V 5534 2750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5580 2750 50  0001 C CNN
F 3 "~" H 5650 2750 50  0001 C CNN
	1    5650 2750
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R2
U 1 1 5CF07F29
P 5000 4700
F 0 "R2" V 4793 4700 50  0000 C CNN
F 1 "220" V 4884 4700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4930 4700 50  0001 C CNN
F 3 "~" H 5000 4700 50  0001 C CNN
	1    5000 4700
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R4
U 1 1 5CF09288
P 5550 4700
F 0 "R4" V 5343 4700 50  0000 C CNN
F 1 "220" V 5434 4700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5480 4700 50  0001 C CNN
F 3 "~" H 5550 4700 50  0001 C CNN
	1    5550 4700
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C1
U 1 1 5CF09A6F
P 5050 2250
F 0 "C1" H 5165 2296 50  0000 L CNN
F 1 "10p" H 5165 2205 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5088 2100 50  0001 C CNN
F 3 "~" H 5050 2250 50  0001 C CNN
	1    5050 2250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C2
U 1 1 5CF0BC3B
P 5050 4200
F 0 "C2" H 5165 4246 50  0000 L CNN
F 1 "10p" H 5165 4155 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5088 4050 50  0001 C CNN
F 3 "~" H 5050 4200 50  0001 C CNN
	1    5050 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3900 4950 3900
Wire Wire Line
	4750 2000 5050 2000
$Comp
L power:GND #PWR0101
U 1 1 5CF13127
P 5050 2400
F 0 "#PWR0101" H 5050 2150 50  0001 C CNN
F 1 "GND" H 5055 2227 50  0000 C CNN
F 2 "" H 5050 2400 50  0001 C CNN
F 3 "" H 5050 2400 50  0001 C CNN
	1    5050 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5CF13ABB
P 5050 4350
F 0 "#PWR0102" H 5050 4100 50  0001 C CNN
F 1 "GND" H 5055 4177 50  0000 C CNN
F 2 "" H 5050 4350 50  0001 C CNN
F 3 "" H 5050 4350 50  0001 C CNN
	1    5050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3900 4550 3900
$Comp
L power:+5V #PWR0103
U 1 1 5CF16C13
P 7700 1600
F 0 "#PWR0103" H 7700 1450 50  0001 C CNN
F 1 "+5V" H 7715 1773 50  0000 C CNN
F 2 "" H 7700 1600 50  0001 C CNN
F 3 "" H 7700 1600 50  0001 C CNN
	1    7700 1600
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0104
U 1 1 5CF17585
P 7700 2550
F 0 "#PWR0104" H 7700 2650 50  0001 C CNN
F 1 "-5V" H 7715 2723 50  0000 C CNN
F 2 "" H 7700 2550 50  0001 C CNN
F 3 "" H 7700 2550 50  0001 C CNN
	1    7700 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 1600 7700 1750
$Comp
L synkie_symbols:R_POT RV2
U 1 1 5CF1BB20
P 4700 3900
F 0 "RV2" V 4493 3900 50  0000 C CNN
F 1 "10k" V 4584 3900 50  0000 C CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Vertical" H 4700 3900 50  0001 C CNN
F 3 "~" H 4700 3900 50  0001 C CNN
	1    4700 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 2150 4600 2200
Wire Wire Line
	4600 2200 4350 2200
Wire Wire Line
	4700 4050 4700 4100
Connection ~ 4450 3900
$Comp
L power:GND #PWR0105
U 1 1 5CF1D48A
P 7400 2550
F 0 "#PWR0105" H 7400 2300 50  0001 C CNN
F 1 "GND" H 7405 2377 50  0000 C CNN
F 2 "" H 7400 2550 50  0001 C CNN
F 3 "" H 7400 2550 50  0001 C CNN
	1    7400 2550
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C3
U 1 1 5CF1DF6E
P 7550 1750
F 0 "C3" V 7298 1750 50  0000 C CNN
F 1 "100n" V 7389 1750 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7588 1600 50  0001 C CNN
F 3 "~" H 7550 1750 50  0001 C CNN
	1    7550 1750
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C4
U 1 1 5CF1EF18
P 7550 2400
F 0 "C4" V 7298 2400 50  0000 C CNN
F 1 "100n" V 7389 2400 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7588 2250 50  0001 C CNN
F 3 "~" H 7550 2400 50  0001 C CNN
	1    7550 2400
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J1
U 1 1 5CF279D9
P 4000 2000
F 0 "J1" H 3918 1775 50  0000 C CNN
F 1 "Conn_01x01" H 3918 1866 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 4000 2000 50  0001 C CNN
F 3 "~" H 4000 2000 50  0001 C CNN
	1    4000 2000
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J2
U 1 1 5CF2851C
P 4100 3900
F 0 "J2" H 4018 3675 50  0000 C CNN
F 1 "Conn_01x01" H 4018 3766 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 4100 3900 50  0001 C CNN
F 3 "~" H 4100 3900 50  0001 C CNN
	1    4100 3900
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J4
U 1 1 5CF28D17
P 6400 2100
F 0 "J4" H 6480 2142 50  0000 L CNN
F 1 "Conn_01x01" H 6480 2051 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 6400 2100 50  0001 C CNN
F 3 "~" H 6400 2100 50  0001 C CNN
	1    6400 2100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J3
U 1 1 5CF2941F
P 6350 4000
F 0 "J3" H 6430 4042 50  0000 L CNN
F 1 "Conn_01x01" H 6430 3951 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 6350 4000 50  0001 C CNN
F 3 "~" H 6350 4000 50  0001 C CNN
	1    6350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3900 4450 3900
$Comp
L synkie_symbols:Conn_01x03 J5
U 1 1 5CF2C01D
P 8600 3600
F 0 "J5" H 8518 3275 50  0000 C CNN
F 1 "Conn_01x03" H 8518 3366 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 8600 3600 50  0001 C CNN
F 3 "~" H 8600 3600 50  0001 C CNN
	1    8600 3600
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5CF2CE4A
P 7800 3250
F 0 "#PWR0106" H 7800 3100 50  0001 C CNN
F 1 "+5V" H 7815 3423 50  0000 C CNN
F 2 "" H 7800 3250 50  0001 C CNN
F 3 "" H 7800 3250 50  0001 C CNN
	1    7800 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5CF2DAB3
P 7350 3950
F 0 "#PWR0107" H 7350 3700 50  0001 C CNN
F 1 "GND" H 7355 3777 50  0000 C CNN
F 2 "" H 7350 3950 50  0001 C CNN
F 3 "" H 7350 3950 50  0001 C CNN
	1    7350 3950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB1
U 1 1 5CF2EF68
P 8050 3500
F 0 "FB1" V 7776 3500 50  0000 C CNN
F 1 "Ferrite_Bead" V 7867 3500 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7980 3500 50  0001 C CNN
F 3 "~" H 8050 3500 50  0001 C CNN
	1    8050 3500
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB2
U 1 1 5CF2FF42
P 8050 3700
F 0 "FB2" V 7776 3700 50  0000 C CNN
F 1 "Ferrite_Bead" V 7867 3700 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7980 3700 50  0001 C CNN
F 3 "~" H 8050 3700 50  0001 C CNN
	1    8050 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 3500 8400 3500
Wire Wire Line
	8200 3700 8400 3700
Wire Wire Line
	8400 3600 7500 3600
Wire Wire Line
	7350 3600 7350 3950
Wire Wire Line
	7900 3500 7800 3500
Wire Wire Line
	7800 3500 7800 3400
$Comp
L power:-5V #PWR0108
U 1 1 5CF33D8B
P 7800 3950
F 0 "#PWR0108" H 7800 4050 50  0001 C CNN
F 1 "-5V" H 7815 4123 50  0000 C CNN
F 2 "" H 7800 3950 50  0001 C CNN
F 3 "" H 7800 3950 50  0001 C CNN
	1    7800 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7900 3700 7800 3700
$Comp
L synkie_symbols:CP_Small C5
U 1 1 5CF35EA8
P 7650 3400
F 0 "C5" V 7395 3400 50  0000 C CNN
F 1 "10u" V 7486 3400 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 7688 3250 50  0001 C CNN
F 3 "~" H 7650 3400 50  0001 C CNN
	1    7650 3400
	0    1    1    0   
$EndComp
Connection ~ 7800 3400
Wire Wire Line
	7800 3400 7800 3250
Wire Wire Line
	7500 3400 7500 3600
Connection ~ 7500 3600
Wire Wire Line
	7500 3600 7350 3600
Wire Wire Line
	7500 3850 7500 3600
Wire Wire Line
	7800 3700 7800 3850
$Comp
L synkie_symbols:CP_Small C6
U 1 1 5CF3B22D
P 7650 3850
F 0 "C6" V 7905 3850 50  0000 C CNN
F 1 "10u" V 7814 3850 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 7688 3700 50  0001 C CNN
F 3 "~" H 7650 3850 50  0001 C CNN
	1    7650 3850
	0    -1   -1   0   
$EndComp
Connection ~ 7800 3850
Wire Wire Line
	7800 3850 7800 3950
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5CF45CA4
P 7900 3250
F 0 "#FLG0101" H 7900 3325 50  0001 C CNN
F 1 "PWR_FLAG" H 7900 3423 50  0000 C CNN
F 2 "" H 7900 3250 50  0001 C CNN
F 3 "~" H 7900 3250 50  0001 C CNN
	1    7900 3250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5CF46124
P 7950 3950
F 0 "#FLG0102" H 7950 4025 50  0001 C CNN
F 1 "PWR_FLAG" H 7950 4123 50  0000 C CNN
F 2 "" H 7950 3950 50  0001 C CNN
F 3 "~" H 7950 3950 50  0001 C CNN
	1    7950 3950
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5CF4683D
P 7350 3500
F 0 "#FLG0103" H 7350 3575 50  0001 C CNN
F 1 "PWR_FLAG" H 7350 3673 50  0000 C CNN
F 2 "" H 7350 3500 50  0001 C CNN
F 3 "~" H 7350 3500 50  0001 C CNN
	1    7350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3500 7350 3600
Connection ~ 7350 3600
Wire Wire Line
	7900 3250 7900 3400
Wire Wire Line
	7900 3400 7800 3400
Wire Wire Line
	7950 3950 7950 3850
Wire Wire Line
	7950 3850 7800 3850
$Comp
L synkie_symbols:R_POT RV1
U 1 1 5CF18B52
P 4600 2000
F 0 "RV1" V 4393 2000 50  0000 C CNN
F 1 "10k" V 4484 2000 50  0000 C CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Vertical" H 4600 2000 50  0001 C CNN
F 3 "~" H 4600 2000 50  0001 C CNN
	1    4600 2000
	0    -1   1    0   
$EndComp
Wire Wire Line
	6000 2100 6050 2100
Wire Wire Line
	4350 2200 4350 2000
Wire Wire Line
	4200 2000 4350 2000
Connection ~ 4350 2000
Wire Wire Line
	4350 2000 4450 2000
Wire Wire Line
	5400 2000 5050 2000
Connection ~ 5050 2000
Wire Wire Line
	5800 2750 6050 2750
Wire Wire Line
	6050 2750 6050 2100
Connection ~ 6050 2100
Wire Wire Line
	6050 2100 6200 2100
Wire Wire Line
	5400 2200 5400 2750
Wire Wire Line
	5150 2750 5400 2750
Connection ~ 5400 2750
Wire Wire Line
	5400 2750 5500 2750
Wire Wire Line
	4850 2750 4350 2750
Wire Wire Line
	4350 2750 4350 2200
Connection ~ 4350 2200
Wire Wire Line
	5950 4000 6000 4000
Wire Wire Line
	5350 3900 5050 3900
Connection ~ 5050 3900
Wire Wire Line
	4450 4700 4850 4700
Wire Wire Line
	5150 4700 5350 4700
Wire Wire Line
	5700 4700 6000 4700
Wire Wire Line
	6000 4700 6000 4000
Connection ~ 6000 4000
Wire Wire Line
	6000 4000 6150 4000
Wire Wire Line
	5350 4100 5350 4700
Connection ~ 5350 4700
Wire Wire Line
	5350 4700 5400 4700
Wire Wire Line
	4450 3900 4450 4700
Wire Wire Line
	4700 4100 4950 4100
Wire Wire Line
	4950 4100 4950 3900
Connection ~ 4950 3900
Wire Wire Line
	4950 3900 5050 3900
Wire Wire Line
	7700 2350 7700 2400
Wire Wire Line
	7400 1750 7400 2400
Wire Wire Line
	5050 2000 5050 2150
Wire Wire Line
	5050 2350 5050 2400
Wire Wire Line
	7400 1750 7450 1750
Wire Wire Line
	7650 1750 7700 1750
Connection ~ 7700 1750
Wire Wire Line
	7450 2400 7400 2400
Connection ~ 7400 2400
Wire Wire Line
	7400 2400 7400 2550
Wire Wire Line
	7650 2400 7700 2400
Connection ~ 7700 2400
Wire Wire Line
	7700 2400 7700 2550
Wire Wire Line
	7500 3400 7550 3400
Wire Wire Line
	7750 3400 7800 3400
Wire Wire Line
	7500 3850 7550 3850
Wire Wire Line
	7750 3850 7800 3850
Wire Wire Line
	5050 3900 5050 4100
Wire Wire Line
	5050 4300 5050 4350
$EndSCHEMATC
