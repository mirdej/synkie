EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "sk500-lfo"
Date "2021-09-20"
Rev "1"
Comp "[ a n y m a ]"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 1 1 6148A60D
P 2500 3450
F 0 "U1" H 2450 3450 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 2500 3726 50  0001 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2500 3450 50  0001 C CNN
F 3 "~" H 2500 3450 50  0001 C CNN
	1    2500 3450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 2 1 6148B178
P 8300 3450
F 0 "U1" H 8300 3817 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 8300 3726 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 8300 3450 50  0001 C CNN
F 3 "~" H 8300 3450 50  0001 C CNN
	2    8300 3450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U2
U 3 1 6148BCD8
P 2600 5300
F 0 "U2" H 2558 5346 50  0000 L CNN
F 1 "Opamp_Dual_Generic" H 2558 5255 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2600 5300 50  0001 C CNN
F 3 "~" H 2600 5300 50  0001 C CNN
	3    2600 5300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U2
U 1 1 6148F993
P 4600 3450
F 0 "U2" H 4600 3450 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 4600 3726 50  0001 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4600 3450 50  0001 C CNN
F 3 "~" H 4600 3450 50  0001 C CNN
	1    4600 3450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U2
U 2 1 6148F999
P 5750 3750
F 0 "U2" H 5700 3750 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 5750 4026 50  0001 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5750 3750 50  0001 C CNN
F 3 "~" H 5750 3750 50  0001 C CNN
	2    5750 3750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 3 1 6148F99F
P 4400 5200
F 0 "U1" H 4358 5246 50  0000 L CNN
F 1 "Opamp_Dual_Generic" H 4358 5155 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4400 5200 50  0001 C CNN
F 3 "~" H 4400 5200 50  0001 C CNN
	3    4400 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6149025B
P 1700 3400
F 0 "R5" H 1770 3446 50  0000 L CNN
F 1 "100k" H 1770 3355 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1630 3400 50  0001 C CNN
F 3 "~" H 1700 3400 50  0001 C CNN
	1    1700 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 61490855
P 1700 3700
F 0 "R9" H 1770 3746 50  0000 L CNN
F 1 "10k" H 1770 3655 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1630 3700 50  0001 C CNN
F 3 "~" H 1700 3700 50  0001 C CNN
	1    1700 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6149137B
P 1700 3850
F 0 "#PWR0101" H 1700 3600 50  0001 C CNN
F 1 "GND" H 1705 3677 50  0000 C CNN
F 2 "" H 1700 3850 50  0001 C CNN
F 3 "" H 1700 3850 50  0001 C CNN
	1    1700 3850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0102
U 1 1 61491871
P 1700 3250
F 0 "#PWR0102" H 1700 3100 50  0001 C CNN
F 1 "+5V" H 1715 3423 50  0000 C CNN
F 2 "" H 1700 3250 50  0001 C CNN
F 3 "" H 1700 3250 50  0001 C CNN
	1    1700 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 61492200
P 2950 3300
F 0 "R4" H 3020 3346 50  0000 L CNN
F 1 "100k" H 3020 3255 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2880 3300 50  0001 C CNN
F 3 "~" H 2950 3300 50  0001 C CNN
	1    2950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3550 1700 3550
Connection ~ 1700 3550
Wire Wire Line
	2800 3450 2950 3450
Wire Wire Line
	2950 3150 2950 3000
Wire Wire Line
	2950 3000 2100 3000
Wire Wire Line
	2100 3000 2100 3350
Wire Wire Line
	2100 3350 2200 3350
$Comp
L Device:R R1
U 1 1 61497B53
P 2950 2850
F 0 "R1" H 3020 2896 50  0000 L CNN
F 1 "10k" H 3020 2805 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2880 2850 50  0001 C CNN
F 3 "~" H 2950 2850 50  0001 C CNN
	1    2950 2850
	1    0    0    -1  
$EndComp
Connection ~ 2950 3000
$Comp
L power:GND #PWR0103
U 1 1 614989B6
P 4300 3350
F 0 "#PWR0103" H 4300 3100 50  0001 C CNN
F 1 "GND" V 4305 3222 50  0000 R CNN
F 2 "" H 4300 3350 50  0001 C CNN
F 3 "" H 4300 3350 50  0001 C CNN
	1    4300 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 614992B3
P 3900 3550
F 0 "R7" V 3693 3550 50  0000 C CNN
F 1 "6k" V 3784 3550 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3830 3550 50  0001 C CNN
F 3 "~" H 3900 3550 50  0001 C CNN
	1    3900 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 3550 4200 3550
$Comp
L synkie_symbols:Conn_01x01 J2
U 1 1 6149CC6B
P 3450 3550
F 0 "J2" H 3368 3325 50  0000 C CNN
F 1 "CV-In" H 3368 3416 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 3450 3550 50  0001 C CNN
F 3 "~" H 3450 3550 50  0001 C CNN
	1    3450 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 3550 3650 3550
$Comp
L Device:R R10
U 1 1 6149D9DD
P 4600 3850
F 0 "R10" V 4393 3850 50  0000 C CNN
F 1 "20k" V 4484 3850 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4530 3850 50  0001 C CNN
F 3 "~" H 4600 3850 50  0001 C CNN
	1    4600 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 3450 4900 3850
Wire Wire Line
	4900 3850 4750 3850
$Comp
L Device:R R11
U 1 1 6149E025
P 4200 4100
F 0 "R11" H 4130 4054 50  0000 R CNN
F 1 "25k" H 4130 4145 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4130 4100 50  0001 C CNN
F 3 "~" H 4200 4100 50  0001 C CNN
	1    4200 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 3850 4200 3850
Wire Wire Line
	4200 3850 4200 3950
Wire Wire Line
	4200 3850 4200 3550
Connection ~ 4200 3850
Connection ~ 4200 3550
Wire Wire Line
	4200 3550 4050 3550
$Comp
L synkie_symbols:-5V #PWR0104
U 1 1 6149F080
P 4200 4250
F 0 "#PWR0104" H 4200 4350 50  0001 C CNN
F 1 "-5V" H 4350 4300 50  0000 C CNN
F 2 "" H 4200 4250 50  0001 C CNN
F 3 "" H 4200 4250 50  0001 C CNN
	1    4200 4250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 614A18D0
P 5100 3600
F 0 "R8" H 5170 3646 50  0000 L CNN
F 1 "10k" H 5170 3555 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 3600 50  0001 C CNN
F 3 "~" H 5100 3600 50  0001 C CNN
	1    5100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3850 5100 3850
Wire Wire Line
	5100 3750 5100 3850
Wire Wire Line
	4900 3450 5100 3450
Connection ~ 4900 3450
$Comp
L power:GND #PWR0105
U 1 1 614A2CFD
P 5450 3650
F 0 "#PWR0105" H 5450 3400 50  0001 C CNN
F 1 "GND" V 5455 3522 50  0001 R CNN
F 2 "" H 5450 3650 50  0001 C CNN
F 3 "" H 5450 3650 50  0001 C CNN
	1    5450 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 614A31FB
P 5750 4200
F 0 "R13" V 5543 4200 50  0000 C CNN
F 1 "10k" V 5634 4200 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5680 4200 50  0001 C CNN
F 3 "~" H 5750 4200 50  0001 C CNN
	1    5750 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 3750 6150 3750
Wire Wire Line
	6150 3750 6150 4200
Wire Wire Line
	6150 4200 5900 4200
Wire Wire Line
	5600 4200 5100 4200
Wire Wire Line
	5100 4200 5100 3850
Connection ~ 5100 3850
$Comp
L synkie_symbols:Trans_PNP_Generic Q1
U 1 1 614A50BD
P 6650 3350
F 0 "Q1" H 6788 3396 50  0000 L CNN
F 1 "Trans_PNP_Generic" H 6788 3305 50  0000 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 6650 3350 50  0001 C CNN
F 3 "" H 6650 3350 50  0001 C CNN
	1    6650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3750 6400 3750
Connection ~ 6150 3750
Wire Wire Line
	6500 3350 5100 3350
Wire Wire Line
	5100 3350 5100 3450
Connection ~ 5100 3450
$Comp
L Device:R R2
U 1 1 614A932F
P 6700 3000
F 0 "R2" H 6770 3046 50  0000 L CNN
F 1 "100" H 6770 2955 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6630 3000 50  0001 C CNN
F 3 "~" H 6700 3000 50  0001 C CNN
	1    6700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2850 6700 2600
Wire Wire Line
	6700 2600 3250 2600
Wire Wire Line
	3250 2600 3250 3450
Wire Wire Line
	3250 3450 2950 3450
Connection ~ 2950 3450
$Comp
L Device:R R3
U 1 1 614AA2FF
P 7550 3000
F 0 "R3" H 7620 3046 50  0000 L CNN
F 1 "100k" H 7620 2955 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7480 3000 50  0001 C CNN
F 3 "~" H 7550 3000 50  0001 C CNN
	1    7550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2600 7550 2600
Wire Wire Line
	7550 2600 7550 2850
Connection ~ 6700 2600
Wire Wire Line
	7550 3150 7550 3550
Wire Wire Line
	6700 3550 7550 3550
Connection ~ 7550 3550
Wire Wire Line
	7550 3550 8000 3550
$Comp
L power:GND #PWR0106
U 1 1 614ABA90
P 8000 3350
F 0 "#PWR0106" H 8000 3100 50  0001 C CNN
F 1 "GND" V 8005 3222 50  0001 R CNN
F 2 "" H 8000 3350 50  0001 C CNN
F 3 "" H 8000 3350 50  0001 C CNN
	1    8000 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 3450 8750 3450
Wire Wire Line
	8750 3450 8750 2500
Wire Wire Line
	8750 2500 2950 2500
Wire Wire Line
	2950 2500 2950 2700
$Comp
L Device:R R12
U 1 1 614AC959
P 6700 4100
F 0 "R12" H 6770 4146 50  0000 L CNN
F 1 "100" H 6770 4055 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6630 4100 50  0001 C CNN
F 3 "~" H 6700 4100 50  0001 C CNN
	1    6700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4250 6700 4450
Wire Wire Line
	6700 4450 3250 4450
Wire Wire Line
	3250 4450 3250 3450
Connection ~ 3250 3450
$Comp
L synkie_symbols:Conn_01x01 J1
U 1 1 614ADFC7
P 9450 3450
F 0 "J1" H 9530 3492 50  0000 L CNN
F 1 "OUT" H 9530 3401 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 9450 3450 50  0001 C CNN
F 3 "~" H 9450 3450 50  0001 C CNN
	1    9450 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 614AEA56
P 8950 3450
F 0 "R6" V 8743 3450 50  0000 C CNN
F 1 "75" V 8834 3450 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8880 3450 50  0001 C CNN
F 3 "~" H 8950 3450 50  0001 C CNN
	1    8950 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 3450 9100 3450
Wire Wire Line
	8800 3450 8750 3450
Connection ~ 8750 3450
$Comp
L Device:C C1
U 1 1 614B077F
P 8300 4100
F 0 "C1" V 8048 4100 50  0000 C CNN
F 1 "1u" V 8139 4100 50  0000 C CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8338 3950 50  0001 C CNN
F 3 "~" H 8300 4100 50  0001 C CNN
	1    8300 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 3450 8750 4100
Wire Wire Line
	8750 4100 8450 4100
Wire Wire Line
	8150 4100 7550 4100
Wire Wire Line
	7550 4100 7550 3550
$Comp
L Device:C C3
U 1 1 614B2484
P 2350 5000
F 0 "C3" V 2098 5000 50  0000 C CNN
F 1 "100n" V 2189 5000 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2388 4850 50  0001 C CNN
F 3 "~" H 2350 5000 50  0001 C CNN
	1    2350 5000
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 614B2E2D
P 2350 5600
F 0 "C7" V 2098 5600 50  0000 C CNN
F 1 "100n" V 2189 5600 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2388 5450 50  0001 C CNN
F 3 "~" H 2350 5600 50  0001 C CNN
	1    2350 5600
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 614B33C6
P 4150 4900
F 0 "C2" V 3898 4900 50  0000 C CNN
F 1 "100n" V 3989 4900 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4188 4750 50  0001 C CNN
F 3 "~" H 4150 4900 50  0001 C CNN
	1    4150 4900
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 614B3AA3
P 4150 5500
F 0 "C6" V 3898 5500 50  0000 C CNN
F 1 "100n" V 3989 5500 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4188 5350 50  0001 C CNN
F 3 "~" H 4150 5500 50  0001 C CNN
	1    4150 5500
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:-5V #PWR0107
U 1 1 614B465B
P 2500 5600
F 0 "#PWR0107" H 2500 5700 50  0001 C CNN
F 1 "-5V" H 2500 5800 50  0000 C CNN
F 2 "" H 2500 5600 50  0001 C CNN
F 3 "" H 2500 5600 50  0001 C CNN
	1    2500 5600
	-1   0    0    1   
$EndComp
Connection ~ 2500 5600
$Comp
L synkie_symbols:-5V #PWR0108
U 1 1 614B5128
P 4300 5500
F 0 "#PWR0108" H 4300 5600 50  0001 C CNN
F 1 "-5V" H 4300 5700 50  0000 C CNN
F 2 "" H 4300 5500 50  0001 C CNN
F 3 "" H 4300 5500 50  0001 C CNN
	1    4300 5500
	-1   0    0    1   
$EndComp
Connection ~ 4300 5500
$Comp
L power:GND #PWR0109
U 1 1 614B5650
P 2200 5600
F 0 "#PWR0109" H 2200 5350 50  0001 C CNN
F 1 "GND" V 2205 5472 50  0001 R CNN
F 2 "" H 2200 5600 50  0001 C CNN
F 3 "" H 2200 5600 50  0001 C CNN
	1    2200 5600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 614B5E6B
P 2200 5000
F 0 "#PWR0110" H 2200 4750 50  0001 C CNN
F 1 "GND" V 2205 4872 50  0001 R CNN
F 2 "" H 2200 5000 50  0001 C CNN
F 3 "" H 2200 5000 50  0001 C CNN
	1    2200 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 614B62F2
P 4000 4900
F 0 "#PWR0111" H 4000 4650 50  0001 C CNN
F 1 "GND" V 4005 4772 50  0001 R CNN
F 2 "" H 4000 4900 50  0001 C CNN
F 3 "" H 4000 4900 50  0001 C CNN
	1    4000 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 614B65E1
P 4000 5500
F 0 "#PWR0112" H 4000 5250 50  0001 C CNN
F 1 "GND" V 4005 5372 50  0001 R CNN
F 2 "" H 4000 5500 50  0001 C CNN
F 3 "" H 4000 5500 50  0001 C CNN
	1    4000 5500
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0113
U 1 1 614B69F5
P 2500 5000
F 0 "#PWR0113" H 2500 4850 50  0001 C CNN
F 1 "+5V" H 2515 5173 50  0000 C CNN
F 2 "" H 2500 5000 50  0001 C CNN
F 3 "" H 2500 5000 50  0001 C CNN
	1    2500 5000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0114
U 1 1 614B6FBF
P 4300 4900
F 0 "#PWR0114" H 4300 4750 50  0001 C CNN
F 1 "+5V" H 4315 5073 50  0000 C CNN
F 2 "" H 4300 4900 50  0001 C CNN
F 3 "" H 4300 4900 50  0001 C CNN
	1    4300 4900
	1    0    0    -1  
$EndComp
Connection ~ 4300 4900
Connection ~ 2500 5000
$Comp
L synkie_symbols:Conn_01x03 J3
U 1 1 614B7B30
P 7000 5300
F 0 "J3" H 7080 5342 50  0000 L CNN
F 1 "Conn_01x03" H 7080 5251 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 7000 5300 50  0001 C CNN
F 3 "~" H 7000 5300 50  0001 C CNN
	1    7000 5300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB1
U 1 1 614B8660
P 6650 5200
F 0 "FB1" V 6468 5200 50  0000 C CNN
F 1 "Ferrite_Bead" V 6467 5200 50  0001 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6580 5200 50  0001 C CNN
F 3 "~" H 6650 5200 50  0001 C CNN
	1    6650 5200
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB2
U 1 1 614B920C
P 6650 5400
F 0 "FB2" V 6850 5400 50  0000 C CNN
F 1 "Ferrite_Bead" V 6467 5400 50  0001 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6580 5400 50  0001 C CNN
F 3 "~" H 6650 5400 50  0001 C CNN
	1    6650 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 614B9EF5
P 6800 5300
F 0 "#PWR0115" H 6800 5050 50  0001 C CNN
F 1 "GND" V 6805 5172 50  0001 R CNN
F 2 "" H 6800 5300 50  0001 C CNN
F 3 "" H 6800 5300 50  0001 C CNN
	1    6800 5300
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0116
U 1 1 614BA4ED
P 6500 5200
F 0 "#PWR0116" H 6500 5050 50  0001 C CNN
F 1 "+5V" H 6515 5373 50  0000 C CNN
F 2 "" H 6500 5200 50  0001 C CNN
F 3 "" H 6500 5200 50  0001 C CNN
	1    6500 5200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0117
U 1 1 614BA8C9
P 6500 5400
F 0 "#PWR0117" H 6500 5500 50  0001 C CNN
F 1 "-5V" H 6500 5600 50  0000 C CNN
F 2 "" H 6500 5400 50  0001 C CNN
F 3 "" H 6500 5400 50  0001 C CNN
	1    6500 5400
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0118
U 1 1 614BAF93
P 8350 5000
F 0 "#PWR0118" H 8350 4850 50  0001 C CNN
F 1 "+5V" H 8365 5173 50  0000 C CNN
F 2 "" H 8350 5000 50  0001 C CNN
F 3 "" H 8350 5000 50  0001 C CNN
	1    8350 5000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0119
U 1 1 614BB596
P 8350 5600
F 0 "#PWR0119" H 8350 5700 50  0001 C CNN
F 1 "-5V" H 8350 5800 50  0000 C CNN
F 2 "" H 8350 5600 50  0001 C CNN
F 3 "" H 8350 5600 50  0001 C CNN
	1    8350 5600
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C4
U 1 1 614BC1FE
P 8350 5150
F 0 "C4" H 8468 5196 50  0000 L CNN
F 1 "CP" H 8468 5105 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8388 5000 50  0001 C CNN
F 3 "~" H 8350 5150 50  0001 C CNN
	1    8350 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 614BC912
P 8350 5450
F 0 "C5" H 8468 5496 50  0000 L CNN
F 1 "CP" H 8468 5405 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8388 5300 50  0001 C CNN
F 3 "~" H 8350 5450 50  0001 C CNN
	1    8350 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 614BD175
P 8350 5300
F 0 "#PWR0120" H 8350 5050 50  0001 C CNN
F 1 "GND" V 8355 5172 50  0001 R CNN
F 2 "" H 8350 5300 50  0001 C CNN
F 3 "" H 8350 5300 50  0001 C CNN
	1    8350 5300
	0    1    1    0   
$EndComp
Connection ~ 8350 5300
$Comp
L synkie_symbols:Conn_01x01 J4
U 1 1 614C56D5
P 3450 3850
F 0 "J4" H 3368 3625 50  0000 C CNN
F 1 "Test" H 3368 3716 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 3450 3850 50  0001 C CNN
F 3 "~" H 3450 3850 50  0001 C CNN
	1    3450 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 3850 4200 3850
$Comp
L Transistor_BJT:BC817 Q2
U 1 1 614CA5FA
P 6600 3750
F 0 "Q2" H 6791 3796 50  0000 L CNN
F 1 "BC817" H 6791 3705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6800 3675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC817.pdf" H 6600 3750 50  0001 L CNN
	1    6600 3750
	1    0    0    -1  
$EndComp
Connection ~ 6400 3750
Wire Wire Line
	6400 3750 6150 3750
Connection ~ 6700 3550
$EndSCHEMATC
