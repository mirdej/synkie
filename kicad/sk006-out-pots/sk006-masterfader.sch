EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
L power:GND #PWR0101
U 1 1 5FF0CCA8
P 3200 2200
F 0 "#PWR0101" H 3200 1950 50  0001 C CNN
F 1 "GND" H 3205 2027 50  0000 C CNN
F 2 "" H 3200 2200 50  0001 C CNN
F 3 "" H 3200 2200 50  0001 C CNN
	1    3200 2200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LMH6643 U101
U 1 1 5FF0D177
P 4400 2900
F 0 "U101" H 4400 3267 50  0000 C CNN
F 1 "LMH6643" H 4400 3176 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4400 2900 50  0001 C CNN
F 3 "~" H 4400 2900 50  0001 C CNN
	1    4400 2900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LMH6643 U101
U 2 1 5FF0D6D5
P 4350 2050
F 0 "U101" H 4350 2417 50  0000 C CNN
F 1 "LMH6643" H 4350 2326 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4350 2050 50  0001 C CNN
F 3 "~" H 4350 2050 50  0001 C CNN
	2    4350 2050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LMH6643 U101
U 3 1 5FF0DFC1
P 4350 1050
F 0 "U101" H 4308 1096 50  0000 L CNN
F 1 "LMH6643" H 4308 1005 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4350 1050 50  0001 C CNN
F 3 "~" H 4350 1050 50  0001 C CNN
	3    4350 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1950 3900 2800
Wire Wire Line
	3900 2800 4100 2800
Connection ~ 3900 1950
Wire Wire Line
	3900 1950 4050 1950
$Sheet
S 5250 2650 900  700 
U 5FF0F40B
F0 "sheet5FF0F40B" 50
F1 "sk006-phase.sch" 50
F2 "INPUT" I L 5250 3000 50 
F3 "OUTPUT" O R 6150 3000 50 
$EndSheet
Wire Wire Line
	5250 3000 4850 3000
Wire Wire Line
	4700 3000 4700 2900
$Sheet
S 5250 3650 900  700 
U 5FF0F8E5
F0 "sheet5FF0F8E5" 50
F1 "sk006-phase.sch" 50
F2 "INPUT" I L 5250 4000 50 
F3 "OUTPUT" O R 6150 4000 50 
$EndSheet
$Comp
L synkie_symbols:LMH6643 U103
U 2 1 5FF0F8F5
P 4350 4000
F 0 "U103" H 4350 4367 50  0000 C CNN
F 1 "LMH6643" H 4350 4276 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4350 4000 50  0001 C CNN
F 3 "~" H 4350 4000 50  0001 C CNN
	2    4350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2800 3900 3900
Connection ~ 3900 2800
Wire Wire Line
	4050 3900 3900 3900
$Comp
L power:+5V #PWR0102
U 1 1 5FF12C7E
P 4250 750
F 0 "#PWR0102" H 4250 600 50  0001 C CNN
F 1 "+5V" H 4265 923 50  0000 C CNN
F 2 "" H 4250 750 50  0001 C CNN
F 3 "" H 4250 750 50  0001 C CNN
	1    4250 750 
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0103
U 1 1 5FF133A2
P 4250 1350
F 0 "#PWR0103" H 4250 1450 50  0001 C CNN
F 1 "-5V" H 4265 1523 50  0000 C CNN
F 2 "" H 4250 1350 50  0001 C CNN
F 3 "" H 4250 1350 50  0001 C CNN
	1    4250 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C105
U 1 1 5FF139CD
P 4100 1350
F 0 "C105" V 3848 1350 50  0000 C CNN
F 1 "100n" V 3939 1350 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4138 1200 50  0001 C CNN
F 3 "~" H 4100 1350 50  0001 C CNN
	1    4100 1350
	0    1    1    0   
$EndComp
Connection ~ 4250 1350
$Comp
L Device:C C101
U 1 1 5FF1422E
P 4100 750
F 0 "C101" V 3848 750 50  0000 C CNN
F 1 "100n" V 3939 750 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4138 600 50  0001 C CNN
F 3 "~" H 4100 750 50  0001 C CNN
	1    4100 750 
	0    1    1    0   
$EndComp
Connection ~ 4250 750 
$Comp
L power:GND #PWR0104
U 1 1 5FF14BFA
P 3950 750
F 0 "#PWR0104" H 3950 500 50  0001 C CNN
F 1 "GND" V 3955 622 50  0000 R CNN
F 2 "" H 3950 750 50  0001 C CNN
F 3 "" H 3950 750 50  0001 C CNN
	1    3950 750 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FF1535C
P 3950 1350
F 0 "#PWR0105" H 3950 1100 50  0001 C CNN
F 1 "GND" V 3955 1222 50  0000 R CNN
F 2 "" H 3950 1350 50  0001 C CNN
F 3 "" H 3950 1350 50  0001 C CNN
	1    3950 1350
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:LMH6643 U103
U 3 1 5FF15847
P 5250 1100
F 0 "U103" H 5208 1146 50  0000 L CNN
F 1 "LMH6643" H 5208 1055 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5250 1100 50  0001 C CNN
F 3 "~" H 5250 1100 50  0001 C CNN
	3    5250 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5FF15851
P 5150 800
F 0 "#PWR0106" H 5150 650 50  0001 C CNN
F 1 "+5V" H 5165 973 50  0000 C CNN
F 2 "" H 5150 800 50  0001 C CNN
F 3 "" H 5150 800 50  0001 C CNN
	1    5150 800 
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0107
U 1 1 5FF1585B
P 5150 1400
F 0 "#PWR0107" H 5150 1500 50  0001 C CNN
F 1 "-5V" H 5165 1573 50  0000 C CNN
F 2 "" H 5150 1400 50  0001 C CNN
F 3 "" H 5150 1400 50  0001 C CNN
	1    5150 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C106
U 1 1 5FF15865
P 5000 1400
F 0 "C106" V 4748 1400 50  0000 C CNN
F 1 "100n" V 4839 1400 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5038 1250 50  0001 C CNN
F 3 "~" H 5000 1400 50  0001 C CNN
	1    5000 1400
	0    1    1    0   
$EndComp
Connection ~ 5150 1400
$Comp
L Device:C C103
U 1 1 5FF15870
P 5000 800
F 0 "C103" V 4748 800 50  0000 C CNN
F 1 "100n" V 4839 800 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5038 650 50  0001 C CNN
F 3 "~" H 5000 800 50  0001 C CNN
	1    5000 800 
	0    1    1    0   
$EndComp
Connection ~ 5150 800 
$Comp
L power:GND #PWR0108
U 1 1 5FF1587B
P 4850 800
F 0 "#PWR0108" H 4850 550 50  0001 C CNN
F 1 "GND" V 4855 672 50  0000 R CNN
F 2 "" H 4850 800 50  0001 C CNN
F 3 "" H 4850 800 50  0001 C CNN
	1    4850 800 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5FF15885
P 4850 1400
F 0 "#PWR0109" H 4850 1150 50  0001 C CNN
F 1 "GND" V 4855 1272 50  0000 R CNN
F 2 "" H 4850 1400 50  0001 C CNN
F 3 "" H 4850 1400 50  0001 C CNN
	1    4850 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV101
U 1 1 5FF18AA0
P 7150 2050
F 0 "RV101" H 7080 2096 50  0000 R CNN
F 1 "SCALE" H 7080 2005 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Vertical" H 7150 2050 50  0001 C CNN
F 3 "~" H 7150 2050 50  0001 C CNN
	1    7150 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FF19586
P 7150 2200
F 0 "#PWR0110" H 7150 1950 50  0001 C CNN
F 1 "GND" H 7155 2027 50  0000 C CNN
F 2 "" H 7150 2200 50  0001 C CNN
F 3 "" H 7150 2200 50  0001 C CNN
	1    7150 2200
	1    0    0    -1  
$EndComp
$Comp
L power:VCCQ #PWR0111
U 1 1 5FF19EC7
P 7150 1900
F 0 "#PWR0111" H 7150 1750 50  0001 C CNN
F 1 "VCCQ" H 7167 2073 50  0000 C CNN
F 2 "" H 7150 1900 50  0001 C CNN
F 3 "" H 7150 1900 50  0001 C CNN
	1    7150 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV102
U 1 1 5FF1A8ED
P 7750 2050
F 0 "RV102" H 7680 2096 50  0000 R CNN
F 1 "BIAS" H 7680 2005 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Vertical" H 7750 2050 50  0001 C CNN
F 3 "~" H 7750 2050 50  0001 C CNN
	1    7750 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FF1A8F7
P 7750 2200
F 0 "#PWR0112" H 7750 1950 50  0001 C CNN
F 1 "GND" H 7755 2027 50  0000 C CNN
F 2 "" H 7750 2200 50  0001 C CNN
F 3 "" H 7750 2200 50  0001 C CNN
	1    7750 2200
	1    0    0    -1  
$EndComp
$Comp
L power:VCCQ #PWR0113
U 1 1 5FF1A901
P 7750 1900
F 0 "#PWR0113" H 7750 1750 50  0001 C CNN
F 1 "VCCQ" H 7767 2073 50  0000 C CNN
F 2 "" H 7750 1900 50  0001 C CNN
F 3 "" H 7750 1900 50  0001 C CNN
	1    7750 1900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:ADR510 U102
U 1 1 5FF1C490
P 7150 1050
F 0 "U102" H 7378 1096 50  0000 L CNN
F 1 "ADR510" H 7378 1005 50  0000 L CNN
F 2 "synkie_footprints:SOT-23" H 6700 950 50  0001 C CNN
F 3 "" H 6700 950 50  0001 C CNN
	1    7150 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R101
U 1 1 5FF1D4CE
P 6500 750
F 0 "R101" H 6570 796 50  0000 L CNN
F 1 "560" H 6570 705 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6430 750 50  0001 C CNN
F 3 "~" H 6500 750 50  0001 C CNN
	1    6500 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5FF1DF8A
P 6650 1100
F 0 "#PWR0114" H 6650 850 50  0001 C CNN
F 1 "GND" H 6655 927 50  0000 C CNN
F 2 "" H 6650 1100 50  0001 C CNN
F 3 "" H 6650 1100 50  0001 C CNN
	1    6650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1050 6650 1050
Wire Wire Line
	6650 1050 6650 1100
Wire Wire Line
	6850 950  6750 950 
Wire Wire Line
	6500 950  6500 900 
$Comp
L power:+5V #PWR0115
U 1 1 5FF1F7C1
P 6500 600
F 0 "#PWR0115" H 6500 450 50  0001 C CNN
F 1 "+5V" H 6515 773 50  0000 C CNN
F 2 "" H 6500 600 50  0001 C CNN
F 3 "" H 6500 600 50  0001 C CNN
	1    6500 600 
	1    0    0    -1  
$EndComp
$Comp
L power:VCCQ #PWR0116
U 1 1 5FF2043E
P 6750 950
F 0 "#PWR0116" H 6750 800 50  0001 C CNN
F 1 "VCCQ" H 6767 1123 50  0000 C CNN
F 2 "" H 6750 950 50  0001 C CNN
F 3 "" H 6750 950 50  0001 C CNN
	1    6750 950 
	1    0    0    -1  
$EndComp
Connection ~ 6750 950 
Wire Wire Line
	6750 950  6500 950 
$Comp
L Connector_Generic:Conn_01x04 J103
U 1 1 5FF20D2B
P 8700 2000
F 0 "J103" H 8780 1992 50  0000 L CNN
F 1 "A" H 8780 1901 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 8700 2000 50  0001 C CNN
F 3 "~" H 8700 2000 50  0001 C CNN
	1    8700 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2050 8300 2050
Wire Wire Line
	8300 2050 8300 2100
Wire Wire Line
	8300 2100 8500 2100
Wire Wire Line
	8500 2200 8100 2200
Wire Wire Line
	8100 2200 8100 2450
Wire Wire Line
	8100 2450 7350 2450
Wire Wire Line
	7350 2450 7350 2050
Wire Wire Line
	7350 2050 7300 2050
$Comp
L power:GND #PWR0117
U 1 1 5FF23D44
P 8500 2000
F 0 "#PWR0117" H 8500 1750 50  0001 C CNN
F 1 "GND" V 8505 1872 50  0000 R CNN
F 2 "" H 8500 2000 50  0001 C CNN
F 3 "" H 8500 2000 50  0001 C CNN
	1    8500 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV103
U 1 1 5FF2485F
P 7150 4000
F 0 "RV103" H 7080 4046 50  0000 R CNN
F 1 "SCALE" H 7080 3955 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Vertical" H 7150 4000 50  0001 C CNN
F 3 "~" H 7150 4000 50  0001 C CNN
	1    7150 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5FF24869
P 7150 3150
F 0 "#PWR0118" H 7150 2900 50  0001 C CNN
F 1 "GND" H 7155 2977 50  0000 C CNN
F 2 "" H 7150 3150 50  0001 C CNN
F 3 "" H 7150 3150 50  0001 C CNN
	1    7150 3150
	1    0    0    -1  
$EndComp
$Comp
L power:VCCQ #PWR0119
U 1 1 5FF24873
P 7150 2850
F 0 "#PWR0119" H 7150 2700 50  0001 C CNN
F 1 "VCCQ" H 7167 3023 50  0000 C CNN
F 2 "" H 7150 2850 50  0001 C CNN
F 3 "" H 7150 2850 50  0001 C CNN
	1    7150 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV104
U 1 1 5FF2487D
P 7750 3000
F 0 "RV104" H 7680 3046 50  0000 R CNN
F 1 "BIAS" H 7680 2955 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Vertical" H 7750 3000 50  0001 C CNN
F 3 "~" H 7750 3000 50  0001 C CNN
	1    7750 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5FF24887
P 7750 3150
F 0 "#PWR0120" H 7750 2900 50  0001 C CNN
F 1 "GND" H 7755 2977 50  0000 C CNN
F 2 "" H 7750 3150 50  0001 C CNN
F 3 "" H 7750 3150 50  0001 C CNN
	1    7750 3150
	1    0    0    -1  
$EndComp
$Comp
L power:VCCQ #PWR0121
U 1 1 5FF24891
P 7750 2850
F 0 "#PWR0121" H 7750 2700 50  0001 C CNN
F 1 "VCCQ" H 7767 3023 50  0000 C CNN
F 2 "" H 7750 2850 50  0001 C CNN
F 3 "" H 7750 2850 50  0001 C CNN
	1    7750 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J104
U 1 1 5FF2489B
P 8700 2950
F 0 "J104" H 8780 2942 50  0000 L CNN
F 1 "B" H 8780 2851 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 8700 2950 50  0001 C CNN
F 3 "~" H 8700 2950 50  0001 C CNN
	1    8700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3000 8300 3000
Wire Wire Line
	8300 3000 8300 3050
Wire Wire Line
	8300 3050 8500 3050
Wire Wire Line
	8500 3150 8100 3150
Wire Wire Line
	8100 3150 8100 3400
Wire Wire Line
	8100 3400 7350 3400
Wire Wire Line
	7350 3400 7350 3000
Wire Wire Line
	7350 3000 7300 3000
$Comp
L power:GND #PWR0122
U 1 1 5FF248B2
P 8500 2950
F 0 "#PWR0122" H 8500 2700 50  0001 C CNN
F 1 "GND" V 8505 2822 50  0000 R CNN
F 2 "" H 8500 2950 50  0001 C CNN
F 3 "" H 8500 2950 50  0001 C CNN
	1    8500 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV105
U 1 1 5FF29297
P 7150 3000
F 0 "RV105" H 7080 3046 50  0000 R CNN
F 1 "SCALE" H 7080 2955 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Vertical" H 7150 3000 50  0001 C CNN
F 3 "~" H 7150 3000 50  0001 C CNN
	1    7150 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5FF292A1
P 7150 4150
F 0 "#PWR0123" H 7150 3900 50  0001 C CNN
F 1 "GND" H 7155 3977 50  0000 C CNN
F 2 "" H 7150 4150 50  0001 C CNN
F 3 "" H 7150 4150 50  0001 C CNN
	1    7150 4150
	1    0    0    -1  
$EndComp
$Comp
L power:VCCQ #PWR0124
U 1 1 5FF292AB
P 7150 3850
F 0 "#PWR0124" H 7150 3700 50  0001 C CNN
F 1 "VCCQ" H 7167 4023 50  0000 C CNN
F 2 "" H 7150 3850 50  0001 C CNN
F 3 "" H 7150 3850 50  0001 C CNN
	1    7150 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV106
U 1 1 5FF292B5
P 7750 4000
F 0 "RV106" H 7680 4046 50  0000 R CNN
F 1 "BIAS" H 7680 3955 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Vertical" H 7750 4000 50  0001 C CNN
F 3 "~" H 7750 4000 50  0001 C CNN
	1    7750 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5FF292BF
P 7750 4150
F 0 "#PWR0125" H 7750 3900 50  0001 C CNN
F 1 "GND" H 7755 3977 50  0000 C CNN
F 2 "" H 7750 4150 50  0001 C CNN
F 3 "" H 7750 4150 50  0001 C CNN
	1    7750 4150
	1    0    0    -1  
$EndComp
$Comp
L power:VCCQ #PWR0131
U 1 1 5FF292C9
P 7750 3850
F 0 "#PWR0131" H 7750 3700 50  0001 C CNN
F 1 "VCCQ" H 7767 4023 50  0000 C CNN
F 2 "" H 7750 3850 50  0001 C CNN
F 3 "" H 7750 3850 50  0001 C CNN
	1    7750 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J105
U 1 1 5FF292D3
P 8700 3950
F 0 "J105" H 8780 3942 50  0000 L CNN
F 1 "C" H 8780 3851 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 8700 3950 50  0001 C CNN
F 3 "~" H 8700 3950 50  0001 C CNN
	1    8700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4000 8300 4000
Wire Wire Line
	8300 4000 8300 4050
Wire Wire Line
	8300 4050 8500 4050
Wire Wire Line
	8500 4150 8100 4150
Wire Wire Line
	8100 4150 8100 4400
Wire Wire Line
	8100 4400 7350 4400
Wire Wire Line
	7350 4400 7350 4000
Wire Wire Line
	7350 4000 7300 4000
$Comp
L Connector_Generic:Conn_01x03 J101
U 1 1 5FF34328
P 1400 1000
F 0 "J101" H 1318 1317 50  0000 C CNN
F 1 "Conn_01x03" H 1318 1226 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 1400 1000 50  0001 C CNN
F 3 "~" H 1400 1000 50  0001 C CNN
	1    1400 1000
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB101
U 1 1 5FF39C3C
P 1750 900
F 0 "FB101" V 1476 900 50  0000 C CNN
F 1 "Ferrite_Bead" V 1567 900 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1680 900 50  0001 C CNN
F 3 "~" H 1750 900 50  0001 C CNN
	1    1750 900 
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB102
U 1 1 5FF3A2FC
P 1750 1100
F 0 "FB102" V 1476 1100 50  0000 C CNN
F 1 "Ferrite_Bead" V 1567 1100 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1680 1100 50  0001 C CNN
F 3 "~" H 1750 1100 50  0001 C CNN
	1    1750 1100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 5FF3A9D3
P 1600 1000
F 0 "#PWR0138" H 1600 750 50  0001 C CNN
F 1 "GND" V 1605 872 50  0000 R CNN
F 2 "" H 1600 1000 50  0001 C CNN
F 3 "" H 1600 1000 50  0001 C CNN
	1    1600 1000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0139
U 1 1 5FF3B4D5
P 1900 900
F 0 "#PWR0139" H 1900 750 50  0001 C CNN
F 1 "+5V" H 1915 1073 50  0000 C CNN
F 2 "" H 1900 900 50  0001 C CNN
F 3 "" H 1900 900 50  0001 C CNN
	1    1900 900 
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0140
U 1 1 5FF3BF41
P 1900 1100
F 0 "#PWR0140" H 1900 1200 50  0001 C CNN
F 1 "-5V" H 1915 1273 50  0000 C CNN
F 2 "" H 1900 1100 50  0001 C CNN
F 3 "" H 1900 1100 50  0001 C CNN
	1    1900 1100
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0141
U 1 1 5FF3C4C3
P 2700 650
F 0 "#PWR0141" H 2700 500 50  0001 C CNN
F 1 "+5V" H 2715 823 50  0000 C CNN
F 2 "" H 2700 650 50  0001 C CNN
F 3 "" H 2700 650 50  0001 C CNN
	1    2700 650 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C102
U 1 1 5FF3CE3D
P 2700 800
F 0 "C102" H 2818 846 50  0000 L CNN
F 1 "CP" H 2818 755 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2738 650 50  0001 C CNN
F 3 "~" H 2700 800 50  0001 C CNN
	1    2700 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C104
U 1 1 5FF3D428
P 2700 1100
F 0 "C104" H 2818 1146 50  0000 L CNN
F 1 "CP" H 2818 1055 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2738 950 50  0001 C CNN
F 3 "~" H 2700 1100 50  0001 C CNN
	1    2700 1100
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0142
U 1 1 5FF3D85D
P 2700 1250
F 0 "#PWR0142" H 2700 1350 50  0001 C CNN
F 1 "-5V" H 2715 1423 50  0000 C CNN
F 2 "" H 2700 1250 50  0001 C CNN
F 3 "" H 2700 1250 50  0001 C CNN
	1    2700 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 5FF3DF89
P 2700 950
F 0 "#PWR0143" H 2700 700 50  0001 C CNN
F 1 "GND" V 2705 822 50  0000 R CNN
F 2 "" H 2700 950 50  0001 C CNN
F 3 "" H 2700 950 50  0001 C CNN
	1    2700 950 
	0    1    1    0   
$EndComp
Connection ~ 2700 950 
$Sheet
S 5250 1700 900  700 
U 5FF0B688
F0 "Phase1" 50
F1 "sk006-phase.sch" 50
F2 "INPUT" I L 5250 2050 50 
F3 "OUTPUT" O R 6150 2050 50 
$EndSheet
$Comp
L synkie_symbols:UMCC J?
U 1 1 616BDABB
P 3100 1950
AR Path="/5FF0B688/616BDABB" Ref="J?"  Part="1" 
AR Path="/5FF0F40B/616BDABB" Ref="J?"  Part="1" 
AR Path="/5FF0F8E5/616BDABB" Ref="J?"  Part="1" 
AR Path="/5FF0F904/616BDABB" Ref="J?"  Part="1" 
AR Path="/616BDABB" Ref="J1"  Part="1" 
F 0 "J1" H 3628 1903 60  0000 L CNN
F 1 "UMCC" H 3628 1797 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 3500 1790 60  0001 C CNN
F 3 "" H 3100 1950 60  0000 C CNN
	1    3100 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3100 1950 3550 1950
Wire Wire Line
	3100 2150 3200 2150
Wire Wire Line
	3200 2150 3200 2200
Wire Wire Line
	3100 2050 3200 2050
Wire Wire Line
	3200 2050 3200 2150
Connection ~ 3200 2150
$Comp
L Mechanical:MountingHole H1
U 1 1 616F5DFA
P 5900 5500
F 0 "H1" H 6000 5546 50  0000 L CNN
F 1 "MountingHole" H 6000 5455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5900 5500 50  0001 C CNN
F 3 "~" H 5900 5500 50  0001 C CNN
	1    5900 5500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 616F5F93
P 7150 5550
F 0 "H2" H 7250 5596 50  0000 L CNN
F 1 "MountingHole" H 7250 5505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7150 5550 50  0001 C CNN
F 3 "~" H 7150 5550 50  0001 C CNN
	1    7150 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5FF292EA
P 8500 3950
F 0 "#PWR0132" H 8500 3700 50  0001 C CNN
F 1 "GND" V 8505 3822 50  0000 R CNN
F 2 "" H 8500 3950 50  0001 C CNN
F 3 "" H 8500 3950 50  0001 C CNN
	1    8500 3950
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:LMH6643 U103
U 1 1 616C9630
P 4400 4900
F 0 "U103" H 4400 5267 50  0000 C CNN
F 1 "LMH6643" H 4400 5176 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4400 4900 50  0001 C CNN
F 3 "~" H 4400 4900 50  0001 C CNN
	1    4400 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 616CA261
P 4100 5000
F 0 "#PWR0133" H 4100 4750 50  0001 C CNN
F 1 "GND" H 4105 4827 50  0000 C CNN
F 2 "" H 4100 5000 50  0001 C CNN
F 3 "" H 4100 5000 50  0001 C CNN
	1    4100 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 616CAA42
P 4100 4800
F 0 "#PWR0134" H 4100 4550 50  0001 C CNN
F 1 "GND" H 4105 4627 50  0000 C CNN
F 2 "" H 4100 4800 50  0001 C CNN
F 3 "" H 4100 4800 50  0001 C CNN
	1    4100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2150 4050 2350
$Comp
L Device:R R1
U 1 1 61795515
P 4850 2200
F 0 "R1" H 4920 2246 50  0000 L CNN
F 1 "220" H 4920 2155 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 2200 50  0001 C CNN
F 3 "~" H 4850 2200 50  0001 C CNN
	1    4850 2200
	-1   0    0    1   
$EndComp
Connection ~ 4850 2050
Wire Wire Line
	4850 2050 5250 2050
$Comp
L Device:R R2
U 1 1 6179982F
P 4850 2500
F 0 "R2" H 4920 2546 50  0000 L CNN
F 1 "220" H 4920 2455 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 2500 50  0001 C CNN
F 3 "~" H 4850 2500 50  0001 C CNN
	1    4850 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 2050 4850 2050
Wire Wire Line
	4850 2350 4050 2350
Connection ~ 4850 2350
$Comp
L power:GND #PWR0135
U 1 1 6179B916
P 4850 2650
F 0 "#PWR0135" H 4850 2400 50  0001 C CNN
F 1 "GND" V 4855 2522 50  0000 R CNN
F 2 "" H 4850 2650 50  0001 C CNN
F 3 "" H 4850 2650 50  0001 C CNN
	1    4850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4000 4850 4000
$Comp
L Device:R R3
U 1 1 617ABEE4
P 4850 3150
F 0 "R3" H 4920 3196 50  0000 L CNN
F 1 "220" H 4920 3105 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 3150 50  0001 C CNN
F 3 "~" H 4850 3150 50  0001 C CNN
	1    4850 3150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 617ABEEA
P 4850 3450
F 0 "R4" H 4920 3496 50  0000 L CNN
F 1 "220" H 4920 3405 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 3450 50  0001 C CNN
F 3 "~" H 4850 3450 50  0001 C CNN
	1    4850 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 3300 4050 3300
Connection ~ 4850 3300
$Comp
L power:GND #PWR0136
U 1 1 617ABEF2
P 4850 3600
F 0 "#PWR0136" H 4850 3350 50  0001 C CNN
F 1 "GND" V 4855 3472 50  0000 R CNN
F 2 "" H 4850 3600 50  0001 C CNN
F 3 "" H 4850 3600 50  0001 C CNN
	1    4850 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 617AD4DF
P 4850 4150
F 0 "R5" H 4920 4196 50  0000 L CNN
F 1 "220" H 4920 4105 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 4150 50  0001 C CNN
F 3 "~" H 4850 4150 50  0001 C CNN
	1    4850 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 617AD4E5
P 4850 4450
F 0 "R6" H 4920 4496 50  0000 L CNN
F 1 "220" H 4920 4405 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 4450 50  0001 C CNN
F 3 "~" H 4850 4450 50  0001 C CNN
	1    4850 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 4300 4050 4300
Connection ~ 4850 4300
$Comp
L power:GND #PWR0137
U 1 1 617AD4ED
P 4850 4600
F 0 "#PWR0137" H 4850 4350 50  0001 C CNN
F 1 "GND" V 4855 4472 50  0000 R CNN
F 2 "" H 4850 4600 50  0001 C CNN
F 3 "" H 4850 4600 50  0001 C CNN
	1    4850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4100 4050 4300
Wire Wire Line
	4100 3000 4050 3000
Wire Wire Line
	4050 3000 4050 3300
Connection ~ 4850 4000
Wire Wire Line
	4850 4000 5250 4000
Connection ~ 4850 3000
Wire Wire Line
	4850 3000 4700 3000
$Comp
L Device:R R?
U 1 1 617F543A
P 3550 2100
F 0 "R?" H 3620 2146 50  0000 L CNN
F 1 "75" H 3620 2055 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3480 2100 50  0001 C CNN
F 3 "~" H 3550 2100 50  0001 C CNN
	1    3550 2100
	-1   0    0    1   
$EndComp
Connection ~ 3550 1950
Wire Wire Line
	3550 1950 3900 1950
$Comp
L power:GND #PWR?
U 1 1 617F5AFC
P 3550 2250
F 0 "#PWR?" H 3550 2000 50  0001 C CNN
F 1 "GND" H 3555 2077 50  0000 C CNN
F 2 "" H 3550 2250 50  0001 C CNN
F 3 "" H 3550 2250 50  0001 C CNN
	1    3550 2250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
