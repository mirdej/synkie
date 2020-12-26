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
P 10350 1150
F 0 "C1" V 10125 1150 50  0000 C CNN
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
P 10350 1350
F 0 "C2" V 10200 1350 50  0000 C CNN
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
L synkie_symbols:GND #PWR04
U 1 1 5DCB53A6
P 10150 1250
F 0 "#PWR04" H 10150 1000 50  0001 C CNN
F 1 "GND" H 10155 1077 50  0000 C CNN
F 2 "" H 10150 1250 50  0001 C CNN
F 3 "" H 10150 1250 50  0001 C CNN
	1    10150 1250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR07
U 1 1 5DCB6075
P 10450 1650
F 0 "#PWR07" H 10450 1750 50  0001 C CNN
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
L synkie_symbols:PWR_FLAG #FLG01
U 1 1 5DCB6B02
P 10550 800
F 0 "#FLG01" H 10550 875 50  0001 C CNN
F 1 "PWR_FLAG" H 10750 950 50  0000 C CNN
F 2 "" H 10550 800 50  0001 C CNN
F 3 "~" H 10550 800 50  0001 C CNN
	1    10550 800 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR02
U 1 1 5DCB58DB
P 10450 800
F 0 "#PWR02" H 10450 650 50  0001 C CNN
F 1 "+5V" H 10450 950 50  0000 C CNN
F 2 "" H 10450 800 50  0001 C CNN
F 3 "" H 10450 800 50  0001 C CNN
	1    10450 800 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:PWR_FLAG #FLG02
U 1 1 5DCB666B
P 10150 1250
F 0 "#FLG02" H 10150 1325 50  0001 C CNN
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
L synkie_symbols:Conn_01x01 J2
U 1 1 5DCC5C28
P 1350 2800
F 0 "J2" H 1268 3017 50  0000 C CNN
F 1 "Conn_01x01" H 1268 2926 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 1350 2800 50  0001 C CNN
F 3 "~" H 1350 2800 50  0001 C CNN
	1    1350 2800
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R4
U 1 1 5DCC6769
P 1800 2800
F 0 "R4" V 1593 2800 50  0000 C CNN
F 1 "75" V 1684 2800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1730 2800 50  0001 C CNN
F 3 "~" H 1800 2800 50  0001 C CNN
	1    1800 2800
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R8
U 1 1 5DCC7045
P 1600 3000
F 0 "R8" H 1530 2954 50  0000 R CNN
F 1 "10k" H 1530 3045 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1530 3000 50  0001 C CNN
F 3 "~" H 1600 3000 50  0001 C CNN
	1    1600 3000
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR011
U 1 1 5DCC82F8
P 1600 3150
F 0 "#PWR011" H 1600 2900 50  0001 C CNN
F 1 "GND" H 1605 2977 50  0000 C CNN
F 2 "" H 1600 3150 50  0001 C CNN
F 3 "" H 1600 3150 50  0001 C CNN
	1    1600 3150
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:BAT54S D1
U 1 1 5DCC8AC0
P 2050 2800
F 0 "D1" V 1900 2650 50  0000 L CNN
F 1 "BAT54S" V 1800 2500 50  0000 L CNN
F 2 "synkie_footprints:SOT-23" H 2125 2925 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 1930 2800 50  0001 C CNN
	1    2050 2800
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR08
U 1 1 5DCC9B0B
P 2050 2500
F 0 "#PWR08" H 2050 2350 50  0001 C CNN
F 1 "+5V" H 2050 2650 50  0000 C CNN
F 2 "" H 2050 2500 50  0001 C CNN
F 3 "" H 2050 2500 50  0001 C CNN
	1    2050 2500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR010
U 1 1 5DCCA031
P 2050 3100
F 0 "#PWR010" H 2050 3200 50  0001 C CNN
F 1 "-5V" H 2050 3250 50  0000 C CNN
F 2 "" H 2050 3100 50  0001 C CNN
F 3 "" H 2050 3100 50  0001 C CNN
	1    2050 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 2800 1600 2800
Wire Wire Line
	1600 2850 1600 2800
Connection ~ 1600 2800
Wire Wire Line
	1600 2800 1650 2800
Wire Wire Line
	1950 2800 2050 2800
$Comp
L synkie_symbols:R R5
U 1 1 5DCB0590
P 2300 2800
F 0 "R5" V 2093 2800 50  0000 C CNN
F 1 "75" V 2184 2800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2230 2800 50  0001 C CNN
F 3 "~" H 2300 2800 50  0001 C CNN
	1    2300 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 2800 2050 2800
Connection ~ 2050 2800
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 1 1 5FE5C941
P 2950 2900
F 0 "U1" H 2950 3267 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 2950 3176 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2950 2900 50  0001 C CNN
F 3 "~" H 2950 2900 50  0001 C CNN
	1    2950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3000 2600 3000
$Comp
L synkie_symbols:Conn_01x01 J3
U 1 1 5FE67A28
P 9200 2850
F 0 "J3" H 9118 3067 50  0000 C CNN
F 1 "Conn_01x01" H 9118 2976 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 9200 2850 50  0001 C CNN
F 3 "~" H 9200 2850 50  0001 C CNN
	1    9200 2850
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:R R6
U 1 1 5FE68151
P 8750 2850
F 0 "R6" V 8543 2850 50  0000 C CNN
F 1 "75" V 8634 2850 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 2850 50  0001 C CNN
F 3 "~" H 8750 2850 50  0001 C CNN
	1    8750 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 2850 9000 2850
Wire Wire Line
	2450 2800 2650 2800
$Comp
L synkie_symbols:R R9
U 1 1 5FE745F2
P 3750 3150
F 0 "R9" H 3680 3104 50  0000 R CNN
F 1 "100" H 3680 3195 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3680 3150 50  0001 C CNN
F 3 "~" H 3750 3150 50  0001 C CNN
	1    3750 3150
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R7
U 1 1 5FE74D23
P 4050 2900
F 0 "R7" V 3843 2900 50  0000 C CNN
F 1 "1k" V 3934 2900 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3980 2900 50  0001 C CNN
F 3 "~" H 4050 2900 50  0001 C CNN
	1    4050 2900
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C5
U 1 1 5FE75F6A
P 3500 2900
F 0 "C5" V 3271 2900 50  0000 C CNN
F 1 "2n7" V 3362 2900 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3500 2900 50  0001 C CNN
F 3 "~" H 3500 2900 50  0001 C CNN
	1    3500 2900
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C6
U 1 1 5FE76795
P 4300 3100
F 0 "C6" H 4208 3054 50  0000 R CNN
F 1 "68p" H 4208 3145 50  0000 R CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4300 3100 50  0001 C CNN
F 3 "~" H 4300 3100 50  0001 C CNN
	1    4300 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 2900 3750 2900
Wire Wire Line
	4200 2900 4300 2900
Wire Wire Line
	4300 2900 4300 3000
Wire Wire Line
	3750 3000 3750 2900
Connection ~ 3750 2900
Wire Wire Line
	3750 2900 3900 2900
$Comp
L synkie_symbols:GND #PWR012
U 1 1 5FE7D6DE
P 3750 3400
F 0 "#PWR012" H 3750 3150 50  0001 C CNN
F 1 "GND" H 3755 3227 50  0000 C CNN
F 2 "" H 3750 3400 50  0001 C CNN
F 3 "" H 3750 3400 50  0001 C CNN
	1    3750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3300 3750 3350
Wire Wire Line
	4300 3200 4300 3350
Wire Wire Line
	4300 3350 3750 3350
Connection ~ 3750 3350
Wire Wire Line
	3750 3350 3750 3400
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 3 1 5FE81D05
P 1350 1200
F 0 "U1" H 1308 1246 50  0000 L CNN
F 1 "Opamp_Dual_Generic" H 1308 1155 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 1350 1200 50  0001 C CNN
F 3 "~" H 1350 1200 50  0001 C CNN
	3    1350 1200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LM339 U2
U 2 1 5FE8684B
P 6100 3400
F 0 "U2" H 6100 3767 50  0000 C CNN
F 1 "LM339" H 6100 3676 50  0000 C CNN
F 2 "synkie_footprints:SOIC-14_3.9x8.7mm_P1.27mm" H 6050 3500 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 6150 3600 50  0001 C CNN
	2    6100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2900 5000 2900
Connection ~ 4300 2900
Wire Wire Line
	5000 2900 5000 3300
Wire Wire Line
	5000 3300 5800 3300
Wire Wire Line
	5800 2100 5000 2100
Wire Wire Line
	5000 2100 5000 2900
Connection ~ 5000 2900
Wire Wire Line
	6400 2000 6500 2000
Wire Wire Line
	6500 2000 6500 2750
Wire Wire Line
	6500 3400 6400 3400
$Comp
L synkie_symbols:R R1
U 1 1 5FE9131E
P 5400 1450
F 0 "R1" H 5330 1404 50  0000 R CNN
F 1 "3k" H 5330 1495 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 1450 50  0001 C CNN
F 3 "~" H 5400 1450 50  0001 C CNN
	1    5400 1450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R10
U 1 1 5FE918F6
P 5400 3850
F 0 "R10" H 5330 3804 50  0000 R CNN
F 1 "3k" H 5330 3895 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 3850 50  0001 C CNN
F 3 "~" H 5400 3850 50  0001 C CNN
	1    5400 3850
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R_POT RV1
U 1 1 5FE940F6
P 5400 2750
F 0 "RV1" H 5331 2796 50  0000 R CNN
F 1 "10k" H 5331 2705 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09Y11_Single_Horizontal" H 5400 2750 50  0001 C CNN
F 3 "~" H 5400 2750 50  0001 C CNN
	1    5400 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2750 5600 2750
Wire Wire Line
	5600 2750 5600 2550
Wire Wire Line
	5600 2550 5400 2550
Wire Wire Line
	5400 2550 5400 2600
Wire Wire Line
	5400 1600 5400 1900
Connection ~ 5400 2550
Wire Wire Line
	5400 2900 5400 3500
$Comp
L synkie_symbols:+5V #PWR03
U 1 1 5FE98BCA
P 5400 1200
F 0 "#PWR03" H 5400 1050 50  0001 C CNN
F 1 "+5V" H 5400 1350 50  0000 C CNN
F 2 "" H 5400 1200 50  0001 C CNN
F 3 "" H 5400 1200 50  0001 C CNN
	1    5400 1200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR013
U 1 1 5FE993A2
P 5400 4100
F 0 "#PWR013" H 5400 4200 50  0001 C CNN
F 1 "-5V" H 5400 4250 50  0000 C CNN
F 2 "" H 5400 4100 50  0001 C CNN
F 3 "" H 5400 4100 50  0001 C CNN
	1    5400 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 4000 5400 4100
Wire Wire Line
	5400 1200 5400 1300
Wire Wire Line
	5800 1900 5400 1900
Connection ~ 5400 1900
Wire Wire Line
	5400 1900 5400 2550
Wire Wire Line
	5800 3500 5400 3500
Connection ~ 5400 3500
Wire Wire Line
	5400 3500 5400 3700
Wire Wire Line
	8450 2850 8500 2850
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 2 1 5FE65DA0
P 8150 2850
F 0 "U1" H 8150 2483 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 8150 2574 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 8150 2850 50  0001 C CNN
F 3 "~" H 8150 2850 50  0001 C CNN
	2    8150 2850
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR09
U 1 1 5FEA5266
P 7800 3000
F 0 "#PWR09" H 7800 2750 50  0001 C CNN
F 1 "GND" H 7805 2827 50  0000 C CNN
F 2 "" H 7800 3000 50  0001 C CNN
F 3 "" H 7800 3000 50  0001 C CNN
	1    7800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2950 7800 2950
Wire Wire Line
	7800 2950 7800 3000
Wire Wire Line
	8250 2300 8500 2300
Wire Wire Line
	8500 2300 8500 2850
Connection ~ 8500 2850
Wire Wire Line
	8500 2850 8600 2850
Wire Wire Line
	7850 2750 7750 2750
Wire Wire Line
	7750 2750 7750 2300
Wire Wire Line
	7750 2300 7950 2300
$Comp
L synkie_symbols:R R3
U 1 1 5FEABE6E
P 7000 2750
F 0 "R3" V 6793 2750 50  0000 C CNN
F 1 "5k" V 6884 2750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6930 2750 50  0001 C CNN
F 3 "~" H 7000 2750 50  0001 C CNN
	1    7000 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 2750 7750 2750
Connection ~ 7750 2750
Wire Wire Line
	6850 2750 6500 2750
Connection ~ 6500 2750
Wire Wire Line
	6500 2750 6500 3400
$Comp
L synkie_symbols:R R2
U 1 1 5FEA9920
P 8100 2300
F 0 "R2" V 7893 2300 50  0000 C CNN
F 1 "1k" V 7984 2300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8030 2300 50  0001 C CNN
F 3 "~" H 8100 2300 50  0001 C CNN
	1    8100 2300
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR01
U 1 1 5FED16E2
P 1250 800
F 0 "#PWR01" H 1250 650 50  0001 C CNN
F 1 "+5V" H 1250 950 50  0000 C CNN
F 2 "" H 1250 800 50  0001 C CNN
F 3 "" H 1250 800 50  0001 C CNN
	1    1250 800 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR06
U 1 1 5FED5DE5
P 1250 1600
F 0 "#PWR06" H 1250 1700 50  0001 C CNN
F 1 "-5V" H 1250 1750 50  0000 C CNN
F 2 "" H 1250 1600 50  0001 C CNN
F 3 "" H 1250 1600 50  0001 C CNN
	1    1250 1600
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C3
U 1 1 5FED6514
P 1150 850
F 0 "C3" V 921 850 50  0000 C CNN
F 1 "100n" V 1012 850 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1150 850 50  0001 C CNN
F 3 "~" H 1150 850 50  0001 C CNN
	1    1150 850 
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C4
U 1 1 5FED71FA
P 1150 1550
F 0 "C4" V 921 1550 50  0000 C CNN
F 1 "100n" V 1012 1550 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1150 1550 50  0001 C CNN
F 3 "~" H 1150 1550 50  0001 C CNN
	1    1150 1550
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR05
U 1 1 5FED94DC
P 1000 1600
F 0 "#PWR05" H 1000 1350 50  0001 C CNN
F 1 "GND" H 1005 1427 50  0000 C CNN
F 2 "" H 1000 1600 50  0001 C CNN
F 3 "" H 1000 1600 50  0001 C CNN
	1    1000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1500 1250 1550
Wire Wire Line
	1250 1550 1250 1600
Connection ~ 1250 1550
Wire Wire Line
	1050 1550 1000 1550
Wire Wire Line
	1000 1550 1000 1600
Wire Wire Line
	1050 850  1000 850 
Wire Wire Line
	1000 850  1000 1550
Connection ~ 1000 1550
Wire Wire Line
	1250 900  1250 850 
Wire Wire Line
	1250 800  1250 850 
Connection ~ 1250 850 
$Comp
L synkie_symbols:LM339 U2
U 3 1 5FEEB9A8
P 3400 4950
F 0 "U2" H 3400 5317 50  0000 C CNN
F 1 "LM339" H 3400 5226 50  0000 C CNN
F 2 "synkie_footprints:SOIC-14_3.9x8.7mm_P1.27mm" H 3350 5050 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 3450 5150 50  0001 C CNN
	3    3400 4950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LM339 U2
U 4 1 5FEED4FF
P 3400 6100
F 0 "U2" H 3400 6467 50  0000 C CNN
F 1 "LM339" H 3400 6376 50  0000 C CNN
F 2 "synkie_footprints:SOIC-14_3.9x8.7mm_P1.27mm" H 3350 6200 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 3450 6300 50  0001 C CNN
	4    3400 6100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LM339 U2
U 5 1 5FEF11AC
P 1650 5000
F 0 "U2" H 1608 5046 50  0000 L CNN
F 1 "LM339" H 1608 4955 50  0000 L CNN
F 2 "synkie_footprints:SOIC-14_3.9x8.7mm_P1.27mm" H 1600 5100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 1700 5200 50  0001 C CNN
	5    1650 5000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR014
U 1 1 5FEF3189
P 1550 4600
F 0 "#PWR014" H 1550 4450 50  0001 C CNN
F 1 "+5V" H 1550 4750 50  0000 C CNN
F 2 "" H 1550 4600 50  0001 C CNN
F 3 "" H 1550 4600 50  0001 C CNN
	1    1550 4600
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR018
U 1 1 5FEF3B33
P 1550 5400
F 0 "#PWR018" H 1550 5500 50  0001 C CNN
F 1 "-5V" H 1550 5550 50  0000 C CNN
F 2 "" H 1550 5400 50  0001 C CNN
F 3 "" H 1550 5400 50  0001 C CNN
	1    1550 5400
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR017
U 1 1 5FEF42F2
P 1300 5400
F 0 "#PWR017" H 1300 5150 50  0001 C CNN
F 1 "GND" H 1305 5227 50  0000 C CNN
F 2 "" H 1300 5400 50  0001 C CNN
F 3 "" H 1300 5400 50  0001 C CNN
	1    1300 5400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C8
U 1 1 5FEF4924
P 1450 5350
F 0 "C8" V 1221 5350 50  0000 C CNN
F 1 "100n" V 1312 5350 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1450 5350 50  0001 C CNN
F 3 "~" H 1450 5350 50  0001 C CNN
	1    1450 5350
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C7
U 1 1 5FEF75BD
P 1450 4650
F 0 "C7" V 1221 4650 50  0000 C CNN
F 1 "100n" V 1312 4650 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1450 4650 50  0001 C CNN
F 3 "~" H 1450 4650 50  0001 C CNN
	1    1450 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 5300 1550 5350
Wire Wire Line
	1550 5400 1550 5350
Connection ~ 1550 5350
Wire Wire Line
	1550 4700 1550 4650
Wire Wire Line
	1550 4600 1550 4650
Connection ~ 1550 4650
Wire Wire Line
	1350 4650 1300 4650
Wire Wire Line
	1300 4650 1300 5350
Wire Wire Line
	1350 5350 1300 5350
Connection ~ 1300 5350
Wire Wire Line
	1300 5350 1300 5400
$Comp
L synkie_symbols:GND #PWR020
U 1 1 5FE611E6
P 3050 6250
F 0 "#PWR020" H 3050 6000 50  0001 C CNN
F 1 "GND" H 3055 6077 50  0000 C CNN
F 2 "" H 3050 6250 50  0001 C CNN
F 3 "" H 3050 6250 50  0001 C CNN
	1    3050 6250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR016
U 1 1 5FE61601
P 3050 5100
F 0 "#PWR016" H 3050 4850 50  0001 C CNN
F 1 "GND" H 3055 4927 50  0000 C CNN
F 2 "" H 3050 5100 50  0001 C CNN
F 3 "" H 3050 5100 50  0001 C CNN
	1    3050 5100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR015
U 1 1 5FE618C8
P 3050 4800
F 0 "#PWR015" H 3050 4650 50  0001 C CNN
F 1 "+5V" H 3050 4950 50  0000 C CNN
F 2 "" H 3050 4800 50  0001 C CNN
F 3 "" H 3050 4800 50  0001 C CNN
	1    3050 4800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR019
U 1 1 5FE61D42
P 3050 5950
F 0 "#PWR019" H 3050 5800 50  0001 C CNN
F 1 "+5V" H 3050 6100 50  0000 C CNN
F 2 "" H 3050 5950 50  0001 C CNN
F 3 "" H 3050 5950 50  0001 C CNN
	1    3050 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5950 3050 6000
Wire Wire Line
	3050 6000 3100 6000
Wire Wire Line
	3100 6200 3050 6200
Wire Wire Line
	3050 6200 3050 6250
Wire Wire Line
	3050 5100 3050 5050
Wire Wire Line
	3050 5050 3100 5050
Wire Wire Line
	3050 4800 3050 4850
Wire Wire Line
	3050 4850 3100 4850
$Comp
L synkie_symbols:LM339 U2
U 1 1 5FE84FBE
P 6100 2000
F 0 "U2" H 6100 2367 50  0000 C CNN
F 1 "LM339" H 6100 2276 50  0000 C CNN
F 2 "synkie_footprints:SOIC-14_3.9x8.7mm_P1.27mm" H 6050 2100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 6150 2200 50  0001 C CNN
	1    6100 2000
	1    0    0    -1  
$EndComp
NoConn ~ 3700 4950
NoConn ~ 3700 6100
Wire Wire Line
	3250 2900 3300 2900
$Comp
L synkie_symbols:R R11
U 1 1 5FE81ADF
P 3300 3100
F 0 "R11" H 3230 3054 50  0000 R CNN
F 1 "2k" H 3230 3145 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 3100 50  0001 C CNN
F 3 "~" H 3300 3100 50  0001 C CNN
	1    3300 3100
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R12
U 1 1 5FE821C9
P 3300 3500
F 0 "R12" H 3230 3454 50  0000 R CNN
F 1 "470" H 3230 3545 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 3500 50  0001 C CNN
F 3 "~" H 3300 3500 50  0001 C CNN
	1    3300 3500
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0101
U 1 1 5FE8269E
P 3300 3750
F 0 "#PWR0101" H 3300 3500 50  0001 C CNN
F 1 "GND" H 3305 3577 50  0000 C CNN
F 2 "" H 3300 3750 50  0001 C CNN
F 3 "" H 3300 3750 50  0001 C CNN
	1    3300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2950 3300 2900
Connection ~ 3300 2900
Wire Wire Line
	3300 2900 3400 2900
Wire Wire Line
	3300 3250 3300 3300
Wire Wire Line
	3300 3650 3300 3750
Wire Wire Line
	3300 3300 2600 3300
Wire Wire Line
	2600 3300 2600 3000
Connection ~ 3300 3300
Wire Wire Line
	3300 3300 3300 3350
Text Notes 5800 1450 0    50   ~ 0
review level generation;\nnot well centered around zero,\nadapt range
$EndSCHEMATC
