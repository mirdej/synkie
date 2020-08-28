EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L Device:R R2
U 1 1 5CED6258
P 1200 3900
F 0 "R2" V 993 3900 50  0000 C CNN
F 1 "100" V 1084 3900 50  0000 C CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1130 3900 50  0001 C CNN
F 3 "~" H 1200 3900 50  0001 C CNN
	1    1200 3900
	0    1    1    0   
$EndComp
$Comp
L Diode:BAT54S D1
U 1 1 5CED638F
P 1500 3900
F 0 "D1" V 1546 3988 50  0000 L CNN
F 1 "BAT54S" H 1200 3800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1575 4025 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 1380 3900 50  0001 C CNN
	1    1500 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 3900 1700 3900
$Comp
L power:+5V #PWR02
U 1 1 5CED6754
P 1500 3600
F 0 "#PWR02" H 1500 3450 50  0001 C CNN
F 1 "+5V" H 1515 3773 50  0000 C CNN
F 2 "" H 1500 3600 50  0001 C CNN
F 3 "" H 1500 3600 50  0001 C CNN
	1    1500 3600
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR03
U 1 1 5CED6984
P 1500 4200
F 0 "#PWR03" H 1500 4300 50  0001 C CNN
F 1 "-5V" H 1515 4373 50  0000 C CNN
F 2 "" H 1500 4200 50  0001 C CNN
F 3 "" H 1500 4200 50  0001 C CNN
	1    1500 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5CED6B17
P 1050 4050
F 0 "R1" H 980 4004 50  0000 R CNN
F 1 "47k" H 980 4095 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 980 4050 50  0001 C CNN
F 3 "~" H 1050 4050 50  0001 C CNN
	1    1050 4050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5CED7212
P 1850 3900
F 0 "R3" V 1643 3900 50  0000 C CNN
F 1 "100" V 1734 3900 50  0000 C CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1780 3900 50  0001 C CNN
F 3 "~" H 1850 3900 50  0001 C CNN
	1    1850 3900
	0    1    1    0   
$EndComp
Connection ~ 1700 3900
$Comp
L power:GND #PWR0101
U 1 1 5F47EE1B
P 1050 3350
F 0 "#PWR0101" H 1050 3100 50  0001 C CNN
F 1 "GND" V 1055 3222 50  0000 R CNN
F 2 "" H 1050 3350 50  0001 C CNN
F 3 "" H 1050 3350 50  0001 C CNN
	1    1050 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 4100 2000 4350
Wire Wire Line
	2000 4350 2600 4350
Wire Wire Line
	2600 4350 2600 4000
Text Label 2600 4000 0    50   ~ 0
input_1
$Comp
L Device:R R8
U 1 1 5F480F54
P 1200 4950
F 0 "R8" V 993 4950 50  0000 C CNN
F 1 "100" V 1084 4950 50  0000 C CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1130 4950 50  0001 C CNN
F 3 "~" H 1200 4950 50  0001 C CNN
	1    1200 4950
	0    1    1    0   
$EndComp
$Comp
L Diode:BAT54S D2
U 1 1 5F480F5E
P 1500 4950
F 0 "D2" V 1546 5038 50  0000 L CNN
F 1 "BAT54S" H 1200 4850 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1575 5075 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 1380 4950 50  0001 C CNN
	1    1500 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 4950 1700 4950
$Comp
L power:+5V #PWR0102
U 1 1 5F480F69
P 1500 4650
F 0 "#PWR0102" H 1500 4500 50  0001 C CNN
F 1 "+5V" H 1515 4823 50  0000 C CNN
F 2 "" H 1500 4650 50  0001 C CNN
F 3 "" H 1500 4650 50  0001 C CNN
	1    1500 4650
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0103
U 1 1 5F480F73
P 1500 5250
F 0 "#PWR0103" H 1500 5350 50  0001 C CNN
F 1 "-5V" H 1515 5423 50  0000 C CNN
F 2 "" H 1500 5250 50  0001 C CNN
F 3 "" H 1500 5250 50  0001 C CNN
	1    1500 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5F480F7D
P 1050 5100
F 0 "R4" H 980 5054 50  0000 R CNN
F 1 "47k" H 980 5145 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 980 5100 50  0001 C CNN
F 3 "~" H 1050 5100 50  0001 C CNN
	1    1050 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5F480F93
P 1850 4950
F 0 "R11" V 1643 4950 50  0000 C CNN
F 1 "100" V 1734 4950 50  0000 C CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1780 4950 50  0001 C CNN
F 3 "~" H 1850 4950 50  0001 C CNN
	1    1850 4950
	0    1    1    0   
$EndComp
Connection ~ 1700 4950
Wire Wire Line
	2000 5150 2000 5400
Wire Wire Line
	2000 5400 2600 5400
Wire Wire Line
	2600 5400 2600 5050
Text Label 2600 5050 0    50   ~ 0
input_2
$Comp
L Device:R R9
U 1 1 5F4859D6
P 1200 6000
F 0 "R9" V 993 6000 50  0000 C CNN
F 1 "100" V 1084 6000 50  0000 C CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1130 6000 50  0001 C CNN
F 3 "~" H 1200 6000 50  0001 C CNN
	1    1200 6000
	0    1    1    0   
$EndComp
$Comp
L Diode:BAT54S D3
U 1 1 5F4859E0
P 1500 6000
F 0 "D3" V 1546 6088 50  0000 L CNN
F 1 "BAT54S" H 1200 5900 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1575 6125 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 1380 6000 50  0001 C CNN
	1    1500 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 6000 1700 6000
$Comp
L power:+5V #PWR0105
U 1 1 5F4859EB
P 1500 5700
F 0 "#PWR0105" H 1500 5550 50  0001 C CNN
F 1 "+5V" H 1515 5873 50  0000 C CNN
F 2 "" H 1500 5700 50  0001 C CNN
F 3 "" H 1500 5700 50  0001 C CNN
	1    1500 5700
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0106
U 1 1 5F4859F5
P 1500 6300
F 0 "#PWR0106" H 1500 6400 50  0001 C CNN
F 1 "-5V" H 1515 6473 50  0000 C CNN
F 2 "" H 1500 6300 50  0001 C CNN
F 3 "" H 1500 6300 50  0001 C CNN
	1    1500 6300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5F4859FF
P 1050 6150
F 0 "R5" H 980 6104 50  0000 R CNN
F 1 "47k" H 980 6195 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 980 6150 50  0001 C CNN
F 3 "~" H 1050 6150 50  0001 C CNN
	1    1050 6150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5F485A15
P 1850 6000
F 0 "R12" V 1643 6000 50  0000 C CNN
F 1 "100" V 1734 6000 50  0000 C CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1780 6000 50  0001 C CNN
F 3 "~" H 1850 6000 50  0001 C CNN
	1    1850 6000
	0    1    1    0   
$EndComp
Connection ~ 1700 6000
Wire Wire Line
	2000 6200 2000 6450
Wire Wire Line
	2000 6450 2600 6450
Wire Wire Line
	2600 6450 2600 6100
Text Label 2600 6100 0    50   ~ 0
input_3
$Comp
L Device:R R10
U 1 1 5F485A38
P 1200 7050
F 0 "R10" V 993 7050 50  0000 C CNN
F 1 "100" V 1084 7050 50  0000 C CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1130 7050 50  0001 C CNN
F 3 "~" H 1200 7050 50  0001 C CNN
	1    1200 7050
	0    1    1    0   
$EndComp
$Comp
L Diode:BAT54S D4
U 1 1 5F485A42
P 1500 7050
F 0 "D4" V 1546 7138 50  0000 L CNN
F 1 "BAT54S" H 1200 6950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1575 7175 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 1380 7050 50  0001 C CNN
	1    1500 7050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 7050 1700 7050
$Comp
L power:+5V #PWR0108
U 1 1 5F485A4D
P 1500 6750
F 0 "#PWR0108" H 1500 6600 50  0001 C CNN
F 1 "+5V" H 1515 6923 50  0000 C CNN
F 2 "" H 1500 6750 50  0001 C CNN
F 3 "" H 1500 6750 50  0001 C CNN
	1    1500 6750
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0109
U 1 1 5F485A57
P 1500 7350
F 0 "#PWR0109" H 1500 7450 50  0001 C CNN
F 1 "-5V" H 1515 7523 50  0000 C CNN
F 2 "" H 1500 7350 50  0001 C CNN
F 3 "" H 1500 7350 50  0001 C CNN
	1    1500 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5F485A61
P 1050 7200
F 0 "R6" H 980 7154 50  0000 R CNN
F 1 "47k" H 980 7245 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 980 7200 50  0001 C CNN
F 3 "~" H 1050 7200 50  0001 C CNN
	1    1050 7200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5F485A77
P 1850 7050
F 0 "R13" V 1643 7050 50  0000 C CNN
F 1 "100" V 1734 7050 50  0000 C CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1780 7050 50  0001 C CNN
F 3 "~" H 1850 7050 50  0001 C CNN
	1    1850 7050
	0    1    1    0   
$EndComp
Connection ~ 1700 7050
Wire Wire Line
	2000 7250 2000 7500
Wire Wire Line
	2000 7500 2600 7500
Wire Wire Line
	2600 7500 2600 7150
Text Label 2600 7150 0    50   ~ 0
input_4
$Comp
L synkie_symbols:MAX4051 U3
U 1 1 5F4B932C
P 2550 1700
F 0 "U3" H 2300 2450 50  0000 L CNN
F 1 "MAX4051" H 2900 2200 50  0000 L CNN
F 2 "synkie_footprints:SOIC-16_3.9x9.9mm_P1.27mm" H 2550 1700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 2550 1700 50  0001 C CNN
	1    2550 1700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U1
U 3 1 5F4BC930
P 1200 -750
F 0 "U1" H 1200 -383 50  0000 C CNN
F 1 "MAX4392" H 1200 -474 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 1200 -750 50  0001 C CNN
F 3 "~" H 1200 -750 50  0001 C CNN
	3    1200 -750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U2
U 1 1 5F4BD675
P 2300 6100
F 0 "U2" H 2300 6467 50  0000 C CNN
F 1 "MAX4392" H 2300 6376 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2300 6100 50  0001 C CNN
F 3 "~" H 2300 6100 50  0001 C CNN
	1    2300 6100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U2
U 2 1 5F4BE63F
P 2300 7150
F 0 "U2" H 2300 7517 50  0000 C CNN
F 1 "MAX4392" H 2300 7426 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2300 7150 50  0001 C CNN
F 3 "~" H 2300 7150 50  0001 C CNN
	2    2300 7150
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U2
U 3 1 5F4BF4A6
P 2150 -700
F 0 "U2" H 2150 -333 50  0000 C CNN
F 1 "MAX4392" H 2150 -424 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2150 -700 50  0001 C CNN
F 3 "~" H 2150 -700 50  0001 C CNN
	3    2150 -700
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0111
U 1 1 5F4C14D0
P 2650 2600
F 0 "#PWR0111" H 2650 2700 50  0001 C CNN
F 1 "-5V" H 2665 2773 50  0000 C CNN
F 2 "" H 2650 2600 50  0001 C CNN
F 3 "" H 2650 2600 50  0001 C CNN
	1    2650 2600
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0113
U 1 1 5F4C2DB4
P 2550 800
F 0 "#PWR0113" H 2550 650 50  0001 C CNN
F 1 "+5V" H 2565 973 50  0000 C CNN
F 2 "" H 2550 800 50  0001 C CNN
F 3 "" H 2550 800 50  0001 C CNN
	1    2550 800 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0114
U 1 1 5F4C33E9
P 3150 1700
F 0 "#PWR0114" H 3150 1550 50  0001 C CNN
F 1 "+5V" H 3165 1873 50  0000 C CNN
F 2 "" H 3150 1700 50  0001 C CNN
F 3 "" H 3150 1700 50  0001 C CNN
	1    3150 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F4C3CD4
P 3150 1850
F 0 "C9" H 3265 1896 50  0000 L CNN
F 1 "C" H 3265 1805 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3188 1700 50  0001 C CNN
F 3 "~" H 3150 1850 50  0001 C CNN
	1    3150 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5F4C4187
P 3150 2150
F 0 "C10" H 3265 2196 50  0000 L CNN
F 1 "C" H 3265 2105 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3188 2000 50  0001 C CNN
F 3 "~" H 3150 2150 50  0001 C CNN
	1    3150 2150
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0115
U 1 1 5F4C4AAA
P 3150 2300
F 0 "#PWR0115" H 3150 2400 50  0001 C CNN
F 1 "-5V" H 3165 2473 50  0000 C CNN
F 2 "" H 3150 2300 50  0001 C CNN
F 3 "" H 3150 2300 50  0001 C CNN
	1    3150 2300
	-1   0    0    1   
$EndComp
Text Label 2050 1200 2    50   ~ 0
input_2
Text Label 2050 1100 2    50   ~ 0
input_1
Text Label 2050 1300 2    50   ~ 0
input_3
Text Label 2050 1400 2    50   ~ 0
input_4
$Comp
L synkie_symbols:MAX4392 U4
U 2 1 5F4CA749
P 3350 1200
F 0 "U4" H 3350 1567 50  0000 C CNN
F 1 "MAX4392" H 3350 1476 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3350 1200 50  0001 C CNN
F 3 "~" H 3350 1200 50  0001 C CNN
	2    3350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1300 3050 1450
Wire Wire Line
	3050 1450 3650 1450
Wire Wire Line
	3650 1450 3650 1200
$Comp
L Device:R R14
U 1 1 5F4CC693
P 3650 1050
F 0 "R14" H 3720 1096 50  0000 L CNN
F 1 "75" H 3720 1005 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3580 1050 50  0001 C CNN
F 3 "~" H 3650 1050 50  0001 C CNN
	1    3650 1050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J8
U 1 1 5F4CD88F
P 3650 700
F 0 "J8" V 3614 612 50  0000 R CNN
F 1 "OUT" V 3523 612 50  0000 R CNN
F 2 "synkie_footprints:Solderpad_1mm" H 3650 700 50  0001 C CNN
F 3 "~" H 3650 700 50  0001 C CNN
	1    3650 700 
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J2
U 1 1 5F4CE6BA
P 850 3350
F 0 "J2" H 768 3125 50  0000 C CNN
F 1 "Conn_01x01" H 768 3216 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 850 3350 50  0001 C CNN
F 3 "~" H 850 3350 50  0001 C CNN
	1    850  3350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J3
U 1 1 5F4CEF3E
P 850 3900
F 0 "J3" H 768 3675 50  0000 C CNN
F 1 "IN" H 768 3766 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 850 3900 50  0001 C CNN
F 3 "~" H 850 3900 50  0001 C CNN
	1    850  3900
	-1   0    0    1   
$EndComp
Connection ~ 1050 3900
$Comp
L synkie_symbols:Conn_01x01 J4
U 1 1 5F4CF78A
P 850 4950
F 0 "J4" H 768 4725 50  0000 C CNN
F 1 "IN" H 768 4816 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 850 4950 50  0001 C CNN
F 3 "~" H 850 4950 50  0001 C CNN
	1    850  4950
	-1   0    0    1   
$EndComp
Connection ~ 1050 4950
$Comp
L synkie_symbols:Conn_01x01 J5
U 1 1 5F4CFECF
P 850 6000
F 0 "J5" H 768 5775 50  0000 C CNN
F 1 "IN" H 768 5866 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 850 6000 50  0001 C CNN
F 3 "~" H 850 6000 50  0001 C CNN
	1    850  6000
	-1   0    0    1   
$EndComp
Connection ~ 1050 6000
$Comp
L synkie_symbols:Conn_01x01 J6
U 1 1 5F4D02EF
P 850 7050
F 0 "J6" H 768 6825 50  0000 C CNN
F 1 "IN" H 768 6916 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 850 7050 50  0001 C CNN
F 3 "~" H 850 7050 50  0001 C CNN
	1    850  7050
	-1   0    0    1   
$EndComp
Connection ~ 1050 7050
Connection ~ 3650 1200
$Comp
L synkie_symbols:MAX4051 U7
U 1 1 5F4F3C9F
P 4700 1700
F 0 "U7" H 4450 2450 50  0000 L CNN
F 1 "MAX4051" H 5050 2200 50  0000 L CNN
F 2 "synkie_footprints:SOIC-16_3.9x9.9mm_P1.27mm" H 4700 1700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 4700 1700 50  0001 C CNN
	1    4700 1700
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0122
U 1 1 5F4F3CA9
P 4800 2600
F 0 "#PWR0122" H 4800 2700 50  0001 C CNN
F 1 "-5V" H 4815 2773 50  0000 C CNN
F 2 "" H 4800 2600 50  0001 C CNN
F 3 "" H 4800 2600 50  0001 C CNN
	1    4800 2600
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0124
U 1 1 5F4F3CBD
P 4700 800
F 0 "#PWR0124" H 4700 650 50  0001 C CNN
F 1 "+5V" H 4715 973 50  0000 C CNN
F 2 "" H 4700 800 50  0001 C CNN
F 3 "" H 4700 800 50  0001 C CNN
	1    4700 800 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0125
U 1 1 5F4F3CC7
P 5300 1700
F 0 "#PWR0125" H 5300 1550 50  0001 C CNN
F 1 "+5V" H 5315 1873 50  0000 C CNN
F 2 "" H 5300 1700 50  0001 C CNN
F 3 "" H 5300 1700 50  0001 C CNN
	1    5300 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5F4F3CD1
P 5300 1850
F 0 "C18" H 5415 1896 50  0000 L CNN
F 1 "C" H 5415 1805 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5338 1700 50  0001 C CNN
F 3 "~" H 5300 1850 50  0001 C CNN
	1    5300 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5F4F3CDB
P 5300 2150
F 0 "C19" H 5415 2196 50  0000 L CNN
F 1 "C" H 5415 2105 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5338 2000 50  0001 C CNN
F 3 "~" H 5300 2150 50  0001 C CNN
	1    5300 2150
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0126
U 1 1 5F4F3CE5
P 5300 2300
F 0 "#PWR0126" H 5300 2400 50  0001 C CNN
F 1 "-5V" H 5315 2473 50  0000 C CNN
F 2 "" H 5300 2300 50  0001 C CNN
F 3 "" H 5300 2300 50  0001 C CNN
	1    5300 2300
	-1   0    0    1   
$EndComp
Text Label 4200 1200 2    50   ~ 0
input_2
Text Label 4200 1100 2    50   ~ 0
input_1
Text Label 4200 1300 2    50   ~ 0
input_3
Text Label 4200 1400 2    50   ~ 0
input_4
Wire Wire Line
	5200 1300 5200 1450
Wire Wire Line
	5200 1450 5800 1450
Wire Wire Line
	5800 1450 5800 1200
$Comp
L Device:R R16
U 1 1 5F4F3D3D
P 5800 1050
F 0 "R16" H 5870 1096 50  0000 L CNN
F 1 "75" H 5870 1005 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 1050 50  0001 C CNN
F 3 "~" H 5800 1050 50  0001 C CNN
	1    5800 1050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J10
U 1 1 5F4F3D47
P 5800 700
F 0 "J10" V 5764 612 50  0000 R CNN
F 1 "OUT" V 5673 612 50  0000 R CNN
F 2 "synkie_footprints:Solderpad_1mm" H 5800 700 50  0001 C CNN
F 3 "~" H 5800 700 50  0001 C CNN
	1    5800 700 
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:MAX4051 U9
U 1 1 5F501015
P 6850 1700
F 0 "U9" H 6600 2450 50  0000 L CNN
F 1 "MAX4051" H 7200 2200 50  0000 L CNN
F 2 "synkie_footprints:SOIC-16_3.9x9.9mm_P1.27mm" H 6850 1700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 6850 1700 50  0001 C CNN
	1    6850 1700
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0133
U 1 1 5F50101F
P 6950 2600
F 0 "#PWR0133" H 6950 2700 50  0001 C CNN
F 1 "-5V" H 6965 2773 50  0000 C CNN
F 2 "" H 6950 2600 50  0001 C CNN
F 3 "" H 6950 2600 50  0001 C CNN
	1    6950 2600
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0135
U 1 1 5F501033
P 6850 800
F 0 "#PWR0135" H 6850 650 50  0001 C CNN
F 1 "+5V" H 6865 973 50  0000 C CNN
F 2 "" H 6850 800 50  0001 C CNN
F 3 "" H 6850 800 50  0001 C CNN
	1    6850 800 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0136
U 1 1 5F50103D
P 7450 1700
F 0 "#PWR0136" H 7450 1550 50  0001 C CNN
F 1 "+5V" H 7465 1873 50  0000 C CNN
F 2 "" H 7450 1700 50  0001 C CNN
F 3 "" H 7450 1700 50  0001 C CNN
	1    7450 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5F501047
P 7450 1850
F 0 "C20" H 7565 1896 50  0000 L CNN
F 1 "C" H 7565 1805 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7488 1700 50  0001 C CNN
F 3 "~" H 7450 1850 50  0001 C CNN
	1    7450 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 5F501051
P 7450 2150
F 0 "C21" H 7565 2196 50  0000 L CNN
F 1 "C" H 7565 2105 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7488 2000 50  0001 C CNN
F 3 "~" H 7450 2150 50  0001 C CNN
	1    7450 2150
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0137
U 1 1 5F50105B
P 7450 2300
F 0 "#PWR0137" H 7450 2400 50  0001 C CNN
F 1 "-5V" H 7465 2473 50  0000 C CNN
F 2 "" H 7450 2300 50  0001 C CNN
F 3 "" H 7450 2300 50  0001 C CNN
	1    7450 2300
	-1   0    0    1   
$EndComp
Text Label 6350 1200 2    50   ~ 0
input_2
Text Label 6350 1100 2    50   ~ 0
input_1
Text Label 6350 1300 2    50   ~ 0
input_3
Text Label 6350 1400 2    50   ~ 0
input_4
$Comp
L synkie_symbols:MAX4392 U8
U 2 1 5F5010A6
P 7650 1200
F 0 "U8" H 7650 1567 50  0000 C CNN
F 1 "MAX4392" H 7650 1476 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 7650 1200 50  0001 C CNN
F 3 "~" H 7650 1200 50  0001 C CNN
	2    7650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1300 7350 1450
Wire Wire Line
	7350 1450 7950 1450
Wire Wire Line
	7950 1450 7950 1200
$Comp
L Device:R R20
U 1 1 5F5010B3
P 7950 1050
F 0 "R20" H 8020 1096 50  0000 L CNN
F 1 "75" H 8020 1005 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7880 1050 50  0001 C CNN
F 3 "~" H 7950 1050 50  0001 C CNN
	1    7950 1050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J12
U 1 1 5F5010BD
P 7950 700
F 0 "J12" V 7914 612 50  0000 R CNN
F 1 "OUT" V 7823 612 50  0000 R CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7950 700 50  0001 C CNN
F 3 "~" H 7950 700 50  0001 C CNN
	1    7950 700 
	0    -1   -1   0   
$EndComp
Connection ~ 7950 1200
$Comp
L synkie_symbols:MAX4051 U10
U 1 1 5F5010C8
P 9000 1700
F 0 "U10" H 8750 2450 50  0000 L CNN
F 1 "MAX4051" H 9350 2200 50  0000 L CNN
F 2 "synkie_footprints:SOIC-16_3.9x9.9mm_P1.27mm" H 9000 1700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 9000 1700 50  0001 C CNN
	1    9000 1700
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0144
U 1 1 5F5010D2
P 9100 2600
F 0 "#PWR0144" H 9100 2700 50  0001 C CNN
F 1 "-5V" H 9115 2773 50  0000 C CNN
F 2 "" H 9100 2600 50  0001 C CNN
F 3 "" H 9100 2600 50  0001 C CNN
	1    9100 2600
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0146
U 1 1 5F5010E6
P 9000 800
F 0 "#PWR0146" H 9000 650 50  0001 C CNN
F 1 "+5V" H 9015 973 50  0000 C CNN
F 2 "" H 9000 800 50  0001 C CNN
F 3 "" H 9000 800 50  0001 C CNN
	1    9000 800 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0147
U 1 1 5F5010F0
P 9600 1700
F 0 "#PWR0147" H 9600 1550 50  0001 C CNN
F 1 "+5V" H 9615 1873 50  0000 C CNN
F 2 "" H 9600 1700 50  0001 C CNN
F 3 "" H 9600 1700 50  0001 C CNN
	1    9600 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 5F5010FA
P 9600 1850
F 0 "C22" H 9715 1896 50  0000 L CNN
F 1 "C" H 9715 1805 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9638 1700 50  0001 C CNN
F 3 "~" H 9600 1850 50  0001 C CNN
	1    9600 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 5F501104
P 9600 2150
F 0 "C23" H 9715 2196 50  0000 L CNN
F 1 "C" H 9715 2105 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9638 2000 50  0001 C CNN
F 3 "~" H 9600 2150 50  0001 C CNN
	1    9600 2150
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0148
U 1 1 5F50110E
P 9600 2300
F 0 "#PWR0148" H 9600 2400 50  0001 C CNN
F 1 "-5V" H 9615 2473 50  0000 C CNN
F 2 "" H 9600 2300 50  0001 C CNN
F 3 "" H 9600 2300 50  0001 C CNN
	1    9600 2300
	-1   0    0    1   
$EndComp
Text Label 8500 1200 2    50   ~ 0
input_2
Text Label 8500 1100 2    50   ~ 0
input_1
Text Label 8500 1300 2    50   ~ 0
input_3
Text Label 8500 1400 2    50   ~ 0
input_4
Wire Wire Line
	9500 1300 9500 1450
Wire Wire Line
	9500 1450 10100 1450
Wire Wire Line
	10100 1450 10100 1200
$Comp
L Device:R R24
U 1 1 5F501166
P 10100 1050
F 0 "R24" H 10170 1096 50  0000 L CNN
F 1 "75" H 10170 1005 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10030 1050 50  0001 C CNN
F 3 "~" H 10100 1050 50  0001 C CNN
	1    10100 1050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J15
U 1 1 5F501170
P 10100 700
F 0 "J15" V 10064 612 50  0000 R CNN
F 1 "OUT" V 9973 612 50  0000 R CNN
F 2 "synkie_footprints:Solderpad_1mm" H 10100 700 50  0001 C CNN
F 3 "~" H 10100 700 50  0001 C CNN
	1    10100 700 
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:MAX4392 U8
U 1 1 5F55B5AB
P 9800 1200
F 0 "U8" H 9800 1567 50  0000 C CNN
F 1 "MAX4392" H 9800 1476 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 9800 1200 50  0001 C CNN
F 3 "~" H 9800 1200 50  0001 C CNN
	1    9800 1200
	1    0    0    -1  
$EndComp
Connection ~ 5800 1200
$Comp
L synkie_symbols:MAX4392 U8
U 3 1 5F55CB8C
P 3050 -750
F 0 "U8" H 3050 -383 50  0000 C CNN
F 1 "MAX4392" H 3050 -474 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3050 -750 50  0001 C CNN
F 3 "~" H 3050 -750 50  0001 C CNN
	3    3050 -750
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5F56E515
P 3500 3900
F 0 "Y1" H 3500 3632 50  0000 C CNN
F 1 "Crystal" H 3500 3723 50  0000 C CNN
F 2 "synkie_footprints:Crystal_SMD_HC49-SD" H 3500 3900 50  0001 C CNN
F 3 "~" H 3500 3900 50  0001 C CNN
	1    3500 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:C C11
U 1 1 5F57036A
P 3200 3900
F 0 "C11" V 2948 3900 50  0000 C CNN
F 1 "C" V 3039 3900 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3238 3750 50  0001 C CNN
F 3 "~" H 3200 3900 50  0001 C CNN
	1    3200 3900
	0    1    1    0   
$EndComp
$Comp
L Device:C C14
U 1 1 5F5710F1
P 3800 3900
F 0 "C14" V 3548 3900 50  0000 C CNN
F 1 "C" V 3639 3900 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3838 3750 50  0001 C CNN
F 3 "~" H 3800 3900 50  0001 C CNN
	1    3800 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3800 3350 3800
Wire Wire Line
	3350 3800 3350 3900
Connection ~ 3350 3900
Wire Wire Line
	4050 4000 3650 4000
Wire Wire Line
	3650 4000 3650 3900
Connection ~ 3650 3900
$Comp
L power:GND #PWR0155
U 1 1 5F574A76
P 3050 3900
F 0 "#PWR0155" H 3050 3650 50  0001 C CNN
F 1 "GND" H 3055 3727 50  0000 C CNN
F 2 "" H 3050 3900 50  0001 C CNN
F 3 "" H 3050 3900 50  0001 C CNN
	1    3050 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0156
U 1 1 5F574EDB
P 3950 3900
F 0 "#PWR0156" H 3950 3650 50  0001 C CNN
F 1 "GND" H 3955 3727 50  0000 C CNN
F 2 "" H 3950 3900 50  0001 C CNN
F 3 "" H 3950 3900 50  0001 C CNN
	1    3950 3900
	0    -1   -1   0   
$EndComp
Text Label 4050 3600 2    50   ~ 0
isp_reset
$Comp
L synkie_symbols:ATmega644V-10AU U6
U 1 1 5F5911D3
P 4650 5300
F 0 "U6" H 4200 7250 50  0000 C CNN
F 1 "ATmega644V-10AU" H 5100 7250 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 4650 5300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2593.pdf" H 4650 5300 50  0001 C CNN
	1    4650 5300
	1    0    0    -1  
$EndComp
Text Label 5250 5000 0    50   ~ 0
mosi
Text Label 5250 5100 0    50   ~ 0
miso
Text Label 5250 5200 0    50   ~ 0
sck
$Comp
L Anyma_Library:AnymaISP U5
U 1 1 5F597704
P 3600 5650
F 0 "U5" H 3928 5846 50  0000 L CNN
F 1 "AnymaISP" H 3928 5755 50  0000 L CNN
F 2 "synkie_footprints:PinHeader_1x06_P2.54mm_Vertical" H 3600 5650 50  0001 C CNN
F 3 "" H 3600 5650 50  0001 C CNN
	1    3600 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0157
U 1 1 5F59915B
P 3500 5250
F 0 "#PWR0157" H 3500 5000 50  0001 C CNN
F 1 "GND" V 3505 5122 50  0000 R CNN
F 2 "" H 3500 5250 50  0001 C CNN
F 3 "" H 3500 5250 50  0001 C CNN
	1    3500 5250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0159
U 1 1 5F59A2DF
P 4650 7300
F 0 "#PWR0159" H 4650 7050 50  0001 C CNN
F 1 "GND" H 4655 7127 50  0000 C CNN
F 2 "" H 4650 7300 50  0001 C CNN
F 3 "" H 4650 7300 50  0001 C CNN
	1    4650 7300
	1    0    0    -1  
$EndComp
Text Label 3500 5450 2    50   ~ 0
isp_reset
Text Label 3500 5550 2    50   ~ 0
sck
Text Label 3500 5650 2    50   ~ 0
miso
Text Label 3500 5750 2    50   ~ 0
mosi
$Comp
L Device:C C15
U 1 1 5F5A11A0
P 3900 4200
F 0 "C15" V 3648 4200 50  0000 C CNN
F 1 "C" V 3739 4200 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3938 4050 50  0001 C CNN
F 3 "~" H 3900 4200 50  0001 C CNN
	1    3900 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 5F5A16CB
P 3750 4200
F 0 "#PWR0162" H 3750 3950 50  0001 C CNN
F 1 "GND" H 3755 4027 50  0000 C CNN
F 2 "" H 3750 4200 50  0001 C CNN
F 3 "" H 3750 4200 50  0001 C CNN
	1    3750 4200
	0    1    1    0   
$EndComp
Text Label 5250 6500 0    50   ~ 0
trigger
Text Label 5250 6600 0    50   ~ 0
reset
Text Label 5250 4700 0    50   ~ 0
sync
$Comp
L Device:LED D5
U 1 1 5F639965
P 5700 4500
F 0 "D5" H 5693 4245 50  0000 C CNN
F 1 "LED" H 5693 4336 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5700 4500 50  0001 C CNN
F 3 "~" H 5700 4500 50  0001 C CNN
	1    5700 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5F63A7FF
P 5400 4500
F 0 "R15" V 5193 4500 50  0000 C CNN
F 1 "R" V 5284 4500 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 4500 50  0001 C CNN
F 3 "~" H 5400 4500 50  0001 C CNN
	1    5400 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0163
U 1 1 5F63BBF4
P 5850 4500
F 0 "#PWR0163" H 5850 4250 50  0001 C CNN
F 1 "GND" V 5855 4372 50  0000 R CNN
F 2 "" H 5850 4500 50  0001 C CNN
F 3 "" H 5850 4500 50  0001 C CNN
	1    5850 4500
	0    -1   -1   0   
$EndComp
Text Label 5250 4600 0    50   ~ 0
pixels
Text Label 5250 4900 0    50   ~ 0
button_latch
Text Label 5250 4300 0    50   ~ 0
ramp_in
Text Label 1150 2750 0    50   ~ 0
ramp_in
$Comp
L synkie_symbols:Conn_01x01 J7
U 1 1 5F643F37
P 950 2750
F 0 "J7" H 868 2525 50  0000 C CNN
F 1 "Conn_01x01" H 868 2616 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 950 2750 50  0001 C CNN
F 3 "~" H 950 2750 50  0001 C CNN
	1    950  2750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5F6443D5
P 1150 2600
F 0 "R7" H 1080 2554 50  0000 R CNN
F 1 "47k" H 1080 2645 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1080 2600 50  0001 C CNN
F 3 "~" H 1150 2600 50  0001 C CNN
	1    1150 2600
	-1   0    0    1   
$EndComp
Text Label 5250 3600 0    50   ~ 0
a_a
Text Label 5250 3700 0    50   ~ 0
a_b
Text Label 5250 3800 0    50   ~ 0
a_c
Text Label 4200 2200 2    50   ~ 0
b_b
Text Label 4200 2300 2    50   ~ 0
b_c
Text Label 5250 5400 0    50   ~ 0
c_a
Text Label 5250 5500 0    50   ~ 0
c_b
Text Label 5250 5600 0    50   ~ 0
c_c
Text Label 5250 5800 0    50   ~ 0
d_a
Text Label 5250 5900 0    50   ~ 0
d_b
Text Label 5250 6000 0    50   ~ 0
d_c
Text Label 5250 6700 0    50   ~ 0
addr_1
Text Label 5250 6800 0    50   ~ 0
addr_2
Text Label 5250 6900 0    50   ~ 0
addr_3
$Comp
L Connector_Generic:Conn_01x06 J9
U 1 1 5F6536A0
P 3700 6750
F 0 "J9" H 3780 6742 50  0000 L CNN
F 1 "BUTTONS" H 3780 6651 50  0000 L CNN
F 2 "synkie_footprints:PinHeader_1x06_P2.54mm_Vertical" H 3700 6750 50  0001 C CNN
F 3 "~" H 3700 6750 50  0001 C CNN
	1    3700 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0165
U 1 1 5F654349
P 3500 6550
F 0 "#PWR0165" H 3500 6300 50  0001 C CNN
F 1 "GND" V 3505 6422 50  0000 R CNN
F 2 "" H 3500 6550 50  0001 C CNN
F 3 "" H 3500 6550 50  0001 C CNN
	1    3500 6550
	0    1    1    0   
$EndComp
Text Label 3500 7050 2    50   ~ 0
pixels
Text Label 3500 6850 2    50   ~ 0
sck
Text Label 3500 6950 2    50   ~ 0
miso
Text Label 2050 2200 2    50   ~ 0
a_b
Text Label 2050 2300 2    50   ~ 0
a_c
Text Label 6350 2100 2    50   ~ 0
c_a
Text Label 6350 2200 2    50   ~ 0
c_b
Text Label 6350 2300 2    50   ~ 0
c_c
Text Label 8500 2100 2    50   ~ 0
d_a
Text Label 8500 2200 2    50   ~ 0
d_b
Text Label 8500 2300 2    50   ~ 0
d_c
$Comp
L Transistor_BJT:BC817 Q1
U 1 1 5F66244E
P 7750 3250
F 0 "Q1" H 7941 3296 50  0000 L CNN
F 1 "BC817" H 7941 3205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7950 3175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC817.pdf" H 7750 3250 50  0001 L CNN
	1    7750 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 5F662D5F
P 7850 3450
F 0 "#PWR0167" H 7850 3200 50  0001 C CNN
F 1 "GND" H 7855 3277 50  0000 C CNN
F 2 "" H 7850 3450 50  0001 C CNN
F 3 "" H 7850 3450 50  0001 C CNN
	1    7850 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5F66420F
P 7400 3250
F 0 "R18" V 7193 3250 50  0000 C CNN
F 1 "100" V 7284 3250 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7330 3250 50  0001 C CNN
F 3 "~" H 7400 3250 50  0001 C CNN
	1    7400 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5F666DF2
P 7850 2900
F 0 "R19" H 7920 2946 50  0000 L CNN
F 1 "3k" H 7920 2855 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7780 2900 50  0001 C CNN
F 3 "~" H 7850 2900 50  0001 C CNN
	1    7850 2900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J11
U 1 1 5F673788
P 7050 3250
F 0 "J11" H 6968 3025 50  0000 C CNN
F 1 "QUANTIZE-IN" H 6968 3116 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7050 3250 50  0001 C CNN
F 3 "~" H 7050 3250 50  0001 C CNN
	1    7050 3250
	-1   0    0    1   
$EndComp
Text Label 7850 3050 0    50   ~ 0
sync
$Comp
L Transistor_BJT:BC817 Q2
U 1 1 5F67D49C
P 9250 3300
F 0 "Q2" H 9441 3346 50  0000 L CNN
F 1 "BC817" H 9441 3255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9450 3225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC817.pdf" H 9250 3300 50  0001 L CNN
	1    9250 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0169
U 1 1 5F67D4A6
P 9350 3500
F 0 "#PWR0169" H 9350 3250 50  0001 C CNN
F 1 "GND" H 9355 3327 50  0000 C CNN
F 2 "" H 9350 3500 50  0001 C CNN
F 3 "" H 9350 3500 50  0001 C CNN
	1    9350 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 5F67D4B0
P 8900 3300
F 0 "R22" V 8693 3300 50  0000 C CNN
F 1 "100" V 8784 3300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8830 3300 50  0001 C CNN
F 3 "~" H 8900 3300 50  0001 C CNN
	1    8900 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 5F67D4BA
P 9350 2950
F 0 "R23" H 9420 2996 50  0000 L CNN
F 1 "3k" H 9420 2905 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9280 2950 50  0001 C CNN
F 3 "~" H 9350 2950 50  0001 C CNN
	1    9350 2950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J13
U 1 1 5F67D4CE
P 8550 3300
F 0 "J13" H 8468 3075 50  0000 C CNN
F 1 "TRIG-IN" H 8468 3166 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8550 3300 50  0001 C CNN
F 3 "~" H 8550 3300 50  0001 C CNN
	1    8550 3300
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC817 Q3
U 1 1 5F681B25
P 10700 3300
F 0 "Q3" H 10891 3346 50  0000 L CNN
F 1 "BC817" H 10891 3255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10900 3225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC817.pdf" H 10700 3300 50  0001 L CNN
	1    10700 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0171
U 1 1 5F681B2F
P 10800 3500
F 0 "#PWR0171" H 10800 3250 50  0001 C CNN
F 1 "GND" H 10805 3327 50  0000 C CNN
F 2 "" H 10800 3500 50  0001 C CNN
F 3 "" H 10800 3500 50  0001 C CNN
	1    10800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 5F681B39
P 10350 3300
F 0 "R26" V 10143 3300 50  0000 C CNN
F 1 "100" V 10234 3300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10280 3300 50  0001 C CNN
F 3 "~" H 10350 3300 50  0001 C CNN
	1    10350 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 5F681B43
P 10800 2950
F 0 "R27" H 10870 2996 50  0000 L CNN
F 1 "3k" H 10870 2905 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10730 2950 50  0001 C CNN
F 3 "~" H 10800 2950 50  0001 C CNN
	1    10800 2950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J14
U 1 1 5F681B57
P 10000 3300
F 0 "J14" H 9918 3075 50  0000 C CNN
F 1 "QUANTIZE-IN" H 9918 3166 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 10000 3300 50  0001 C CNN
F 3 "~" H 10000 3300 50  0001 C CNN
	1    10000 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 5F685A02
P 7250 3400
F 0 "R17" H 7320 3446 50  0000 L CNN
F 1 "47k" H 7320 3355 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7180 3400 50  0001 C CNN
F 3 "~" H 7250 3400 50  0001 C CNN
	1    7250 3400
	1    0    0    -1  
$EndComp
Connection ~ 7250 3250
$Comp
L power:GND #PWR0173
U 1 1 5F686166
P 7250 3550
F 0 "#PWR0173" H 7250 3300 50  0001 C CNN
F 1 "GND" H 7255 3377 50  0000 C CNN
F 2 "" H 7250 3550 50  0001 C CNN
F 3 "" H 7250 3550 50  0001 C CNN
	1    7250 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5F686B10
P 8750 3450
F 0 "R21" H 8820 3496 50  0000 L CNN
F 1 "47k" H 8820 3405 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 3450 50  0001 C CNN
F 3 "~" H 8750 3450 50  0001 C CNN
	1    8750 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0174
U 1 1 5F686B1A
P 8750 3600
F 0 "#PWR0174" H 8750 3350 50  0001 C CNN
F 1 "GND" H 8755 3427 50  0000 C CNN
F 2 "" H 8750 3600 50  0001 C CNN
F 3 "" H 8750 3600 50  0001 C CNN
	1    8750 3600
	1    0    0    -1  
$EndComp
Connection ~ 8750 3300
$Comp
L Device:R R25
U 1 1 5F68969A
P 10200 3450
F 0 "R25" H 10270 3496 50  0000 L CNN
F 1 "47k" H 10270 3405 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10130 3450 50  0001 C CNN
F 3 "~" H 10200 3450 50  0001 C CNN
	1    10200 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0175
U 1 1 5F6896A4
P 10200 3600
F 0 "#PWR0175" H 10200 3350 50  0001 C CNN
F 1 "GND" H 10205 3427 50  0000 C CNN
F 2 "" H 10200 3600 50  0001 C CNN
F 3 "" H 10200 3600 50  0001 C CNN
	1    10200 3600
	1    0    0    -1  
$EndComp
Connection ~ 10200 3300
Text Label 9350 3100 0    50   ~ 0
trigger
Text Label 10800 3100 0    50   ~ 0
reset
Connection ~ 6450 -550
$Comp
L power:-5V #PWR0176
U 1 1 5C6AE342
P 6450 -550
F 0 "#PWR0176" H 6450 -450 50  0001 C CNN
F 1 "-5V" H 6465 -377 50  0000 C CNN
F 2 "" H 6450 -550 50  0001 C CNN
F 3 "" H 6450 -550 50  0001 C CNN
	1    6450 -550
	-1   0    0    1   
$EndComp
Connection ~ 6450 -1150
Wire Wire Line
	6250 -1150 6450 -1150
Wire Wire Line
	6250 -950 6250 -1150
Wire Wire Line
	6150 -950 6250 -950
Wire Wire Line
	6250 -550 6450 -550
Wire Wire Line
	6250 -750 6250 -550
Wire Wire Line
	6150 -750 6250 -750
Wire Wire Line
	5850 -850 6450 -850
Connection ~ 6450 -850
$Comp
L Device:CP C2
U 1 1 5C6AD7CD
P 6450 -700
F 0 "C2" H 6568 -654 50  0000 L CNN
F 1 "10u" H 6568 -745 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 6488 -850 50  0001 C CNN
F 3 "~" H 6450 -700 50  0001 C CNN
	1    6450 -700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5C6AD59C
P 6450 -1000
F 0 "C1" H 6568 -954 50  0000 L CNN
F 1 "10u" H 6568 -1045 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 6488 -1150 50  0001 C CNN
F 3 "~" H 6450 -1000 50  0001 C CNN
	1    6450 -1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0177
U 1 1 5C6AD4FF
P 6450 -1150
F 0 "#PWR0177" H 6450 -1300 50  0001 C CNN
F 1 "+5V" H 6465 -977 50  0000 C CNN
F 2 "" H 6450 -1150 50  0001 C CNN
F 3 "" H 6450 -1150 50  0001 C CNN
	1    6450 -1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0178
U 1 1 5C6AD007
P 6450 -850
F 0 "#PWR0178" H 6450 -1100 50  0001 C CNN
F 1 "GND" V 6450 -950 50  0000 R CNN
F 2 "" H 6450 -850 50  0001 C CNN
F 3 "" H 6450 -850 50  0001 C CNN
	1    6450 -850
	0    -1   -1   0   
$EndComp
$Comp
L Device:Ferrite_Bead FB2
U 1 1 5C6ACF86
P 6000 -750
F 0 "FB2" V 6250 -750 50  0000 C CNN
F 1 "Ferrite_Bead" V 6150 -800 50  0000 C CNN
F 2 "Inductor_SMD:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5930 -750 50  0001 C CNN
F 3 "~" H 6000 -750 50  0001 C CNN
	1    6000 -750
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead FB1
U 1 1 5C6ACEE4
P 6000 -950
F 0 "FB1" V 5750 -1050 50  0000 C CNN
F 1 "Ferrite_Bead" V 5850 -1100 50  0000 C CNN
F 2 "Inductor_SMD:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5930 -950 50  0001 C CNN
F 3 "~" H 6000 -950 50  0001 C CNN
	1    6000 -950
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5C6ACCC5
P 5650 -850
F 0 "J1" H 5750 -850 50  0000 C CNN
F 1 "Supply" H 5800 -600 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 5650 -850 50  0001 C CNN
F 3 "~" H 5650 -850 50  0001 C CNN
	1    5650 -850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0179
U 1 1 5F5A200E
P 4950 -700
F 0 "#PWR0179" H 4950 -950 50  0001 C CNN
F 1 "GND" H 4955 -873 50  0000 C CNN
F 2 "" H 4950 -700 50  0001 C CNN
F 3 "" H 4950 -700 50  0001 C CNN
	1    4950 -700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5F5A2004
P 4950 -850
F 0 "C17" H 5065 -804 50  0000 L CNN
F 1 "C" H 5065 -895 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4988 -1000 50  0001 C CNN
F 3 "~" H 4950 -850 50  0001 C CNN
	1    4950 -850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0181
U 1 1 5F59FFBC
P 4600 -700
F 0 "#PWR0181" H 4600 -950 50  0001 C CNN
F 1 "GND" H 4605 -873 50  0000 C CNN
F 2 "" H 4600 -700 50  0001 C CNN
F 3 "" H 4600 -700 50  0001 C CNN
	1    4600 -700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5F59FCCA
P 4600 -850
F 0 "C16" H 4715 -804 50  0000 L CNN
F 1 "C" H 4715 -895 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4638 -1000 50  0001 C CNN
F 3 "~" H 4600 -850 50  0001 C CNN
	1    4600 -850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U4
U 3 1 5F5601AD
P 4000 -700
F 0 "U4" H 3958 -654 50  0000 L CNN
F 1 "MAX4392" H 3958 -745 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4000 -700 50  0001 C CNN
F 3 "~" H 4000 -700 50  0001 C CNN
	3    4000 -700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U4
U 1 1 5F5601A3
P 5500 1200
F 0 "U4" H 5458 1246 50  0000 L CNN
F 1 "MAX4392" H 5458 1155 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5500 1200 50  0001 C CNN
F 3 "~" H 5500 1200 50  0001 C CNN
	1    5500 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5F56018E
P 3700 -550
F 0 "C13" H 3815 -504 50  0000 L CNN
F 1 "C" H 3815 -595 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3738 -700 50  0001 C CNN
F 3 "~" H 3700 -550 50  0001 C CNN
	1    3700 -550
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0184
U 1 1 5F560184
P 3700 -400
F 0 "#PWR0184" H 3700 -300 50  0001 C CNN
F 1 "-5V" H 3715 -227 50  0000 C CNN
F 2 "" H 3700 -400 50  0001 C CNN
F 3 "" H 3700 -400 50  0001 C CNN
	1    3700 -400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C12
U 1 1 5F56017A
P 3700 -850
F 0 "C12" H 3815 -804 50  0000 L CNN
F 1 "C" H 3815 -895 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3738 -1000 50  0001 C CNN
F 3 "~" H 3700 -850 50  0001 C CNN
	1    3700 -850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0185
U 1 1 5F560170
P 3700 -1000
F 0 "#PWR0185" H 3700 -1150 50  0001 C CNN
F 1 "+5V" H 3715 -827 50  0000 C CNN
F 2 "" H 3700 -1000 50  0001 C CNN
F 3 "" H 3700 -1000 50  0001 C CNN
	1    3700 -1000
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0186
U 1 1 5F560166
P 3900 -400
F 0 "#PWR0186" H 3900 -300 50  0001 C CNN
F 1 "-5V" H 3915 -227 50  0000 C CNN
F 2 "" H 3900 -400 50  0001 C CNN
F 3 "" H 3900 -400 50  0001 C CNN
	1    3900 -400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0187
U 1 1 5F56015C
P 3900 -1000
F 0 "#PWR0187" H 3900 -1150 50  0001 C CNN
F 1 "+5V" H 3915 -827 50  0000 C CNN
F 2 "" H 3900 -1000 50  0001 C CNN
F 3 "" H 3900 -1000 50  0001 C CNN
	1    3900 -1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F560147
P 2750 -600
F 0 "C8" H 2865 -554 50  0000 L CNN
F 1 "C" H 2865 -645 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2788 -750 50  0001 C CNN
F 3 "~" H 2750 -600 50  0001 C CNN
	1    2750 -600
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0189
U 1 1 5F56013D
P 2750 -450
F 0 "#PWR0189" H 2750 -350 50  0001 C CNN
F 1 "-5V" H 2765 -277 50  0000 C CNN
F 2 "" H 2750 -450 50  0001 C CNN
F 3 "" H 2750 -450 50  0001 C CNN
	1    2750 -450
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5F560133
P 2750 -900
F 0 "C7" H 2865 -854 50  0000 L CNN
F 1 "C" H 2865 -945 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2788 -1050 50  0001 C CNN
F 3 "~" H 2750 -900 50  0001 C CNN
	1    2750 -900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0190
U 1 1 5F560129
P 2750 -1050
F 0 "#PWR0190" H 2750 -1200 50  0001 C CNN
F 1 "+5V" H 2765 -877 50  0000 C CNN
F 2 "" H 2750 -1050 50  0001 C CNN
F 3 "" H 2750 -1050 50  0001 C CNN
	1    2750 -1050
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0191
U 1 1 5F56011F
P 2950 -450
F 0 "#PWR0191" H 2950 -350 50  0001 C CNN
F 1 "-5V" H 2965 -277 50  0000 C CNN
F 2 "" H 2950 -450 50  0001 C CNN
F 3 "" H 2950 -450 50  0001 C CNN
	1    2950 -450
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0192
U 1 1 5F560115
P 2950 -1050
F 0 "#PWR0192" H 2950 -1200 50  0001 C CNN
F 1 "+5V" H 2965 -877 50  0000 C CNN
F 2 "" H 2950 -1050 50  0001 C CNN
F 3 "" H 2950 -1050 50  0001 C CNN
	1    2950 -1050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U1
U 2 1 5F4C0C5C
P 2300 5050
F 0 "U1" H 2258 5096 50  0000 L CNN
F 1 "MAX4392" H 2258 5005 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2300 5050 50  0001 C CNN
F 3 "~" H 2300 5050 50  0001 C CNN
	2    2300 5050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U1
U 1 1 5F4C030D
P 2300 4000
F 0 "U1" H 2258 4046 50  0000 L CNN
F 1 "MAX4392" H 2258 3955 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2300 4000 50  0001 C CNN
F 3 "~" H 2300 4000 50  0001 C CNN
	1    2300 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F49A2AB
P 1850 -550
F 0 "C6" H 1965 -504 50  0000 L CNN
F 1 "C" H 1965 -595 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1888 -700 50  0001 C CNN
F 3 "~" H 1850 -550 50  0001 C CNN
	1    1850 -550
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0194
U 1 1 5F49A2A1
P 1850 -400
F 0 "#PWR0194" H 1850 -300 50  0001 C CNN
F 1 "-5V" H 1865 -227 50  0000 C CNN
F 2 "" H 1850 -400 50  0001 C CNN
F 3 "" H 1850 -400 50  0001 C CNN
	1    1850 -400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 5F49A297
P 1850 -850
F 0 "C5" H 1965 -804 50  0000 L CNN
F 1 "C" H 1965 -895 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1888 -1000 50  0001 C CNN
F 3 "~" H 1850 -850 50  0001 C CNN
	1    1850 -850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0195
U 1 1 5F49A28D
P 1850 -1000
F 0 "#PWR0195" H 1850 -1150 50  0001 C CNN
F 1 "+5V" H 1865 -827 50  0000 C CNN
F 2 "" H 1850 -1000 50  0001 C CNN
F 3 "" H 1850 -1000 50  0001 C CNN
	1    1850 -1000
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0196
U 1 1 5F49A283
P 2050 -400
F 0 "#PWR0196" H 2050 -300 50  0001 C CNN
F 1 "-5V" H 2065 -227 50  0000 C CNN
F 2 "" H 2050 -400 50  0001 C CNN
F 3 "" H 2050 -400 50  0001 C CNN
	1    2050 -400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0197
U 1 1 5F49A279
P 2050 -1000
F 0 "#PWR0197" H 2050 -1150 50  0001 C CNN
F 1 "+5V" H 2065 -827 50  0000 C CNN
F 2 "" H 2050 -1000 50  0001 C CNN
F 3 "" H 2050 -1000 50  0001 C CNN
	1    2050 -1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F498E78
P 900 -600
F 0 "C4" H 1015 -554 50  0000 L CNN
F 1 "C" H 1015 -645 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 938 -750 50  0001 C CNN
F 3 "~" H 900 -600 50  0001 C CNN
	1    900  -600
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0199
U 1 1 5F498CB8
P 900 -450
F 0 "#PWR0199" H 900 -350 50  0001 C CNN
F 1 "-5V" H 915 -277 50  0000 C CNN
F 2 "" H 900 -450 50  0001 C CNN
F 3 "" H 900 -450 50  0001 C CNN
	1    900  -450
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 5F49856A
P 900 -900
F 0 "C3" H 1015 -854 50  0000 L CNN
F 1 "C" H 1015 -945 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 938 -1050 50  0001 C CNN
F 3 "~" H 900 -900 50  0001 C CNN
	1    900  -900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0200
U 1 1 5F498034
P 900 -1050
F 0 "#PWR0200" H 900 -1200 50  0001 C CNN
F 1 "+5V" H 915 -877 50  0000 C CNN
F 2 "" H 900 -1050 50  0001 C CNN
F 3 "" H 900 -1050 50  0001 C CNN
	1    900  -1050
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0201
U 1 1 5F4979CE
P 1100 -450
F 0 "#PWR0201" H 1100 -350 50  0001 C CNN
F 1 "-5V" H 1115 -277 50  0000 C CNN
F 2 "" H 1100 -450 50  0001 C CNN
F 3 "" H 1100 -450 50  0001 C CNN
	1    1100 -450
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0202
U 1 1 5F49735D
P 1100 -1050
F 0 "#PWR0202" H 1100 -1200 50  0001 C CNN
F 1 "+5V" H 1115 -877 50  0000 C CNN
F 2 "" H 1100 -1050 50  0001 C CNN
F 3 "" H 1100 -1050 50  0001 C CNN
	1    1100 -1050
	1    0    0    -1  
$EndComp
Connection ~ 10100 1200
$Sheet
S 4900 8650 650  350 
U 5F72C272
F0 "mechanical" 50
F1 "mechanical.sch" 50
$EndSheet
$Comp
L synkie_symbols:MAX4051 U11
U 1 1 5F7618CC
P 8100 5350
F 0 "U11" H 7850 6100 50  0000 L CNN
F 1 "MAX4051" H 8450 5850 50  0000 L CNN
F 2 "synkie_footprints:SOIC-16_3.9x9.9mm_P1.27mm" H 8100 5350 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 8100 5350 50  0001 C CNN
	1    8100 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0204
U 1 1 5F7618E0
P 8100 6250
F 0 "#PWR0204" H 8100 6000 50  0001 C CNN
F 1 "GND" H 8105 6077 50  0000 C CNN
F 2 "" H 8100 6250 50  0001 C CNN
F 3 "" H 8100 6250 50  0001 C CNN
	1    8100 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 5F7618FE
P 8700 5500
F 0 "C24" H 8815 5546 50  0000 L CNN
F 1 "C" H 8815 5455 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8738 5350 50  0001 C CNN
F 3 "~" H 8700 5500 50  0001 C CNN
	1    8700 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0208
U 1 1 5F76191C
P 8700 5650
F 0 "#PWR0208" H 8700 5400 50  0001 C CNN
F 1 "GND" V 8705 5522 50  0000 R CNN
F 2 "" H 8700 5650 50  0001 C CNN
F 3 "" H 8700 5650 50  0001 C CNN
	1    8700 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0209
U 1 1 5F761953
P 7600 5650
F 0 "#PWR0209" H 7600 5400 50  0001 C CNN
F 1 "GND" V 7605 5522 50  0000 R CNN
F 2 "" H 7600 5650 50  0001 C CNN
F 3 "" H 7600 5650 50  0001 C CNN
	1    7600 5650
	0    1    1    0   
$EndComp
Text Label 7600 5750 2    50   ~ 0
addr_1
Text Label 7600 5850 2    50   ~ 0
addr_2
Text Label 7600 5950 2    50   ~ 0
addr_3
$Comp
L Device:R R36
U 1 1 5F76C458
P 8600 4600
F 0 "R36" H 8670 4646 50  0000 L CNN
F 1 "1k8" H 8670 4555 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8530 4600 50  0001 C CNN
F 3 "~" H 8600 4600 50  0001 C CNN
	1    8600 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 5F76D9B9
P 7150 4750
F 0 "R28" V 7150 4750 50  0000 C CNN
F 1 "300" V 7150 4200 50  0001 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 4750 50  0001 C CNN
F 3 "~" H 7150 4750 50  0001 C CNN
	1    7150 4750
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J16
U 1 1 5F76EB1D
P 7400 4750
F 0 "J16" H 7500 4700 50  0000 C CNN
F 1 "TRIG" H 7318 4616 50  0001 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7400 4750 50  0001 C CNN
F 3 "~" H 7400 4750 50  0001 C CNN
	1    7400 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 4750 7600 4750
Connection ~ 7600 4750
$Comp
L power:GND #PWR0211
U 1 1 5F7714ED
P 7000 4750
F 0 "#PWR0211" H 7000 4500 50  0001 C CNN
F 1 "GND" V 7005 4622 50  0000 R CNN
F 2 "" H 7000 4750 50  0001 C CNN
F 3 "" H 7000 4750 50  0001 C CNN
	1    7000 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 5F775F7A
P 7150 4850
F 0 "R29" V 7150 4850 50  0000 C CNN
F 1 "300" V 7150 4300 50  0001 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 4850 50  0001 C CNN
F 3 "~" H 7150 4850 50  0001 C CNN
	1    7150 4850
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J17
U 1 1 5F775F84
P 7400 4850
F 0 "J17" H 7500 4800 50  0000 C CNN
F 1 "TRIG" H 7318 4716 50  0001 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7400 4850 50  0001 C CNN
F 3 "~" H 7400 4850 50  0001 C CNN
	1    7400 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 4850 7600 4850
$Comp
L power:GND #PWR0212
U 1 1 5F775F8F
P 7000 4850
F 0 "#PWR0212" H 7000 4600 50  0001 C CNN
F 1 "GND" V 7005 4722 50  0000 R CNN
F 2 "" H 7000 4850 50  0001 C CNN
F 3 "" H 7000 4850 50  0001 C CNN
	1    7000 4850
	0    1    1    0   
$EndComp
Connection ~ 7600 4850
$Comp
L Device:R R30
U 1 1 5F77834C
P 7150 4950
F 0 "R30" V 7150 4950 50  0000 C CNN
F 1 "300" V 7150 4400 50  0001 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 4950 50  0001 C CNN
F 3 "~" H 7150 4950 50  0001 C CNN
	1    7150 4950
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J18
U 1 1 5F778356
P 7400 4950
F 0 "J18" H 7500 4900 50  0000 C CNN
F 1 "TRIG" H 7318 4816 50  0001 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7400 4950 50  0001 C CNN
F 3 "~" H 7400 4950 50  0001 C CNN
	1    7400 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 4950 7600 4950
$Comp
L power:GND #PWR0213
U 1 1 5F778361
P 7000 4950
F 0 "#PWR0213" H 7000 4700 50  0001 C CNN
F 1 "GND" V 7005 4822 50  0000 R CNN
F 2 "" H 7000 4950 50  0001 C CNN
F 3 "" H 7000 4950 50  0001 C CNN
	1    7000 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R R31
U 1 1 5F77836B
P 7150 5050
F 0 "R31" V 7150 5050 50  0000 C CNN
F 1 "300" V 7150 4500 50  0001 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 5050 50  0001 C CNN
F 3 "~" H 7150 5050 50  0001 C CNN
	1    7150 5050
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J19
U 1 1 5F778375
P 7400 5050
F 0 "J19" H 7500 5000 50  0000 C CNN
F 1 "TRIG" H 7318 4916 50  0001 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7400 5050 50  0001 C CNN
F 3 "~" H 7400 5050 50  0001 C CNN
	1    7400 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 5050 7600 5050
$Comp
L power:GND #PWR0214
U 1 1 5F778380
P 7000 5050
F 0 "#PWR0214" H 7000 4800 50  0001 C CNN
F 1 "GND" V 7005 4922 50  0000 R CNN
F 2 "" H 7000 5050 50  0001 C CNN
F 3 "" H 7000 5050 50  0001 C CNN
	1    7000 5050
	0    1    1    0   
$EndComp
Connection ~ 7600 4950
Connection ~ 7600 5050
$Comp
L Device:R R32
U 1 1 5F77A534
P 7150 5150
F 0 "R32" V 7150 5150 50  0000 C CNN
F 1 "300" V 7150 4600 50  0001 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 5150 50  0001 C CNN
F 3 "~" H 7150 5150 50  0001 C CNN
	1    7150 5150
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J20
U 1 1 5F77A53E
P 7400 5150
F 0 "J20" H 7500 5100 50  0000 C CNN
F 1 "TRIG" H 7318 5016 50  0001 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7400 5150 50  0001 C CNN
F 3 "~" H 7400 5150 50  0001 C CNN
	1    7400 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 5150 7600 5150
$Comp
L power:GND #PWR0215
U 1 1 5F77A549
P 7000 5150
F 0 "#PWR0215" H 7000 4900 50  0001 C CNN
F 1 "GND" V 7005 5022 50  0000 R CNN
F 2 "" H 7000 5150 50  0001 C CNN
F 3 "" H 7000 5150 50  0001 C CNN
	1    7000 5150
	0    1    1    0   
$EndComp
$Comp
L Device:R R33
U 1 1 5F77A553
P 7150 5250
F 0 "R33" V 7150 5250 50  0000 C CNN
F 1 "300" V 7150 4700 50  0001 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 5250 50  0001 C CNN
F 3 "~" H 7150 5250 50  0001 C CNN
	1    7150 5250
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J21
U 1 1 5F77A55D
P 7400 5250
F 0 "J21" H 7500 5200 50  0000 C CNN
F 1 "TRIG" H 7318 5116 50  0001 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7400 5250 50  0001 C CNN
F 3 "~" H 7400 5250 50  0001 C CNN
	1    7400 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 5250 7600 5250
$Comp
L power:GND #PWR0216
U 1 1 5F77A568
P 7000 5250
F 0 "#PWR0216" H 7000 5000 50  0001 C CNN
F 1 "GND" V 7005 5122 50  0000 R CNN
F 2 "" H 7000 5250 50  0001 C CNN
F 3 "" H 7000 5250 50  0001 C CNN
	1    7000 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 5F77A572
P 7150 5350
F 0 "R34" V 7150 5350 50  0000 C CNN
F 1 "300" V 7150 4800 50  0001 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 5350 50  0001 C CNN
F 3 "~" H 7150 5350 50  0001 C CNN
	1    7150 5350
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J22
U 1 1 5F77A57C
P 7400 5350
F 0 "J22" H 7500 5300 50  0000 C CNN
F 1 "TRIG" H 7318 5216 50  0001 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7400 5350 50  0001 C CNN
F 3 "~" H 7400 5350 50  0001 C CNN
	1    7400 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 5350 7600 5350
$Comp
L power:GND #PWR0217
U 1 1 5F77A587
P 7000 5350
F 0 "#PWR0217" H 7000 5100 50  0001 C CNN
F 1 "GND" V 7005 5222 50  0000 R CNN
F 2 "" H 7000 5350 50  0001 C CNN
F 3 "" H 7000 5350 50  0001 C CNN
	1    7000 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R35
U 1 1 5F77A591
P 7150 5450
F 0 "R35" V 7150 5450 50  0000 C CNN
F 1 "300" V 7150 4900 50  0001 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 5450 50  0001 C CNN
F 3 "~" H 7150 5450 50  0001 C CNN
	1    7150 5450
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J23
U 1 1 5F77A59B
P 7400 5450
F 0 "J23" H 7500 5400 50  0000 C CNN
F 1 "TRIG" H 7318 5316 50  0001 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7400 5450 50  0001 C CNN
F 3 "~" H 7400 5450 50  0001 C CNN
	1    7400 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 5450 7600 5450
$Comp
L power:GND #PWR0218
U 1 1 5F77A5A6
P 7000 5450
F 0 "#PWR0218" H 7000 5200 50  0001 C CNN
F 1 "GND" V 7005 5322 50  0000 R CNN
F 2 "" H 7000 5450 50  0001 C CNN
F 3 "" H 7000 5450 50  0001 C CNN
	1    7000 5450
	0    1    1    0   
$EndComp
Connection ~ 7600 5150
Connection ~ 7600 5250
Connection ~ 7600 5350
Connection ~ 7600 5450
Text Label 6450 6100 2    50   ~ 0
addr_1
Text Label 6450 6200 2    50   ~ 0
addr_2
Text Label 6450 6300 2    50   ~ 0
addr_3
$Comp
L tinkerforge:AGND #PWR0104
U 1 1 5F7BDAE6
P 900 -750
F 0 "#PWR0104" H 900 -1000 50  0001 C CNN
F 1 "AGND" V 905 -877 50  0000 R CNN
F 2 "" H 900 -750 50  0000 C CNN
F 3 "" H 900 -750 50  0000 C CNN
	1    900  -750
	0    1    1    0   
$EndComp
Connection ~ 900  -750
$Comp
L tinkerforge:AGND #PWR0107
U 1 1 5F7BF567
P 1850 -700
F 0 "#PWR0107" H 1850 -950 50  0001 C CNN
F 1 "AGND" V 1855 -827 50  0000 R CNN
F 2 "" H 1850 -700 50  0000 C CNN
F 3 "" H 1850 -700 50  0000 C CNN
	1    1850 -700
	0    1    1    0   
$EndComp
Connection ~ 1850 -700
$Comp
L tinkerforge:AGND #PWR0110
U 1 1 5F7BF98B
P 2750 -750
F 0 "#PWR0110" H 2750 -1000 50  0001 C CNN
F 1 "AGND" V 2755 -877 50  0000 R CNN
F 2 "" H 2750 -750 50  0000 C CNN
F 3 "" H 2750 -750 50  0000 C CNN
	1    2750 -750
	0    1    1    0   
$EndComp
Connection ~ 2750 -750
$Comp
L tinkerforge:AGND #PWR0112
U 1 1 5F7BFE26
P 3700 -700
F 0 "#PWR0112" H 3700 -950 50  0001 C CNN
F 1 "AGND" V 3705 -827 50  0000 R CNN
F 2 "" H 3700 -700 50  0000 C CNN
F 3 "" H 3700 -700 50  0000 C CNN
	1    3700 -700
	0    1    1    0   
$EndComp
Connection ~ 3700 -700
$Comp
L tinkerforge:AGND #PWR0116
U 1 1 5F7C0868
P 7250 -650
F 0 "#PWR0116" H 7250 -900 50  0001 C CNN
F 1 "AGND" H 7255 -823 50  0000 C CNN
F 2 "" H 7250 -650 50  0000 C CNN
F 3 "" H 7250 -650 50  0000 C CNN
	1    7250 -650
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB3
U 1 1 5F7C0F63
P 7400 -650
F 0 "FB3" V 7650 -650 50  0000 C CNN
F 1 "Ferrite_Bead" V 7550 -700 50  0000 C CNN
F 2 "Inductor_SMD:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7330 -650 50  0001 C CNN
F 3 "~" H 7400 -650 50  0001 C CNN
	1    7400 -650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5F7C170F
P 7550 -650
F 0 "#PWR0117" H 7550 -900 50  0001 C CNN
F 1 "GND" V 7550 -750 50  0000 R CNN
F 2 "" H 7550 -650 50  0001 C CNN
F 3 "" H 7550 -650 50  0001 C CNN
	1    7550 -650
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:AGND #PWR0118
U 1 1 5F7C3938
P 2550 2600
F 0 "#PWR0118" H 2550 2350 50  0001 C CNN
F 1 "AGND" H 2555 2427 50  0000 C CNN
F 2 "" H 2550 2600 50  0000 C CNN
F 3 "" H 2550 2600 50  0000 C CNN
	1    2550 2600
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:AGND #PWR0119
U 1 1 5F7C3E96
P 4700 2600
F 0 "#PWR0119" H 4700 2350 50  0001 C CNN
F 1 "AGND" H 4705 2427 50  0000 C CNN
F 2 "" H 4700 2600 50  0000 C CNN
F 3 "" H 4700 2600 50  0000 C CNN
	1    4700 2600
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:AGND #PWR0120
U 1 1 5F7C42F3
P 6850 2600
F 0 "#PWR0120" H 6850 2350 50  0001 C CNN
F 1 "AGND" H 6855 2427 50  0000 C CNN
F 2 "" H 6850 2600 50  0000 C CNN
F 3 "" H 6850 2600 50  0000 C CNN
	1    6850 2600
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:AGND #PWR0121
U 1 1 5F7C469B
P 9000 2600
F 0 "#PWR0121" H 9000 2350 50  0001 C CNN
F 1 "AGND" H 9005 2427 50  0000 C CNN
F 2 "" H 9000 2600 50  0000 C CNN
F 3 "" H 9000 2600 50  0000 C CNN
	1    9000 2600
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:AGND #PWR0123
U 1 1 5F7C5995
P 8500 2000
F 0 "#PWR0123" H 8500 1750 50  0001 C CNN
F 1 "AGND" V 8505 1873 50  0000 R CNN
F 2 "" H 8500 2000 50  0000 C CNN
F 3 "" H 8500 2000 50  0000 C CNN
	1    8500 2000
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0127
U 1 1 5F7C6187
P 8500 1500
F 0 "#PWR0127" H 8500 1250 50  0001 C CNN
F 1 "AGND" V 8505 1373 50  0000 R CNN
F 2 "" H 8500 1500 50  0000 C CNN
F 3 "" H 8500 1500 50  0000 C CNN
	1    8500 1500
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0128
U 1 1 5F7C63F7
P 8500 1600
F 0 "#PWR0128" H 8500 1350 50  0001 C CNN
F 1 "AGND" V 8505 1473 50  0000 R CNN
F 2 "" H 8500 1600 50  0000 C CNN
F 3 "" H 8500 1600 50  0000 C CNN
	1    8500 1600
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0129
U 1 1 5F7C65BD
P 8500 1700
F 0 "#PWR0129" H 8500 1450 50  0001 C CNN
F 1 "AGND" V 8505 1573 50  0000 R CNN
F 2 "" H 8500 1700 50  0000 C CNN
F 3 "" H 8500 1700 50  0000 C CNN
	1    8500 1700
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0130
U 1 1 5F7C673F
P 8500 1800
F 0 "#PWR0130" H 8500 1550 50  0001 C CNN
F 1 "AGND" V 8505 1673 50  0000 R CNN
F 2 "" H 8500 1800 50  0000 C CNN
F 3 "" H 8500 1800 50  0000 C CNN
	1    8500 1800
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0131
U 1 1 5F7C71DE
P 6350 2000
F 0 "#PWR0131" H 6350 1750 50  0001 C CNN
F 1 "AGND" V 6355 1873 50  0000 R CNN
F 2 "" H 6350 2000 50  0000 C CNN
F 3 "" H 6350 2000 50  0000 C CNN
	1    6350 2000
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0132
U 1 1 5F7C71E8
P 6350 1500
F 0 "#PWR0132" H 6350 1250 50  0001 C CNN
F 1 "AGND" V 6355 1373 50  0000 R CNN
F 2 "" H 6350 1500 50  0000 C CNN
F 3 "" H 6350 1500 50  0000 C CNN
	1    6350 1500
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0134
U 1 1 5F7C71F2
P 6350 1600
F 0 "#PWR0134" H 6350 1350 50  0001 C CNN
F 1 "AGND" V 6355 1473 50  0000 R CNN
F 2 "" H 6350 1600 50  0000 C CNN
F 3 "" H 6350 1600 50  0000 C CNN
	1    6350 1600
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0138
U 1 1 5F7C71FC
P 6350 1700
F 0 "#PWR0138" H 6350 1450 50  0001 C CNN
F 1 "AGND" V 6355 1573 50  0000 R CNN
F 2 "" H 6350 1700 50  0000 C CNN
F 3 "" H 6350 1700 50  0000 C CNN
	1    6350 1700
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0139
U 1 1 5F7C7206
P 6350 1800
F 0 "#PWR0139" H 6350 1550 50  0001 C CNN
F 1 "AGND" V 6355 1673 50  0000 R CNN
F 2 "" H 6350 1800 50  0000 C CNN
F 3 "" H 6350 1800 50  0000 C CNN
	1    6350 1800
	0    1    1    0   
$EndComp
Text Label 4200 2100 2    50   ~ 0
b_a
$Comp
L tinkerforge:AGND #PWR0140
U 1 1 5F7CA809
P 4200 2000
F 0 "#PWR0140" H 4200 1750 50  0001 C CNN
F 1 "AGND" V 4205 1873 50  0000 R CNN
F 2 "" H 4200 2000 50  0000 C CNN
F 3 "" H 4200 2000 50  0000 C CNN
	1    4200 2000
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0141
U 1 1 5F7CA813
P 4200 1500
F 0 "#PWR0141" H 4200 1250 50  0001 C CNN
F 1 "AGND" V 4205 1373 50  0000 R CNN
F 2 "" H 4200 1500 50  0000 C CNN
F 3 "" H 4200 1500 50  0000 C CNN
	1    4200 1500
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0142
U 1 1 5F7CA81D
P 4200 1600
F 0 "#PWR0142" H 4200 1350 50  0001 C CNN
F 1 "AGND" V 4205 1473 50  0000 R CNN
F 2 "" H 4200 1600 50  0000 C CNN
F 3 "" H 4200 1600 50  0000 C CNN
	1    4200 1600
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0143
U 1 1 5F7CA827
P 4200 1700
F 0 "#PWR0143" H 4200 1450 50  0001 C CNN
F 1 "AGND" V 4205 1573 50  0000 R CNN
F 2 "" H 4200 1700 50  0000 C CNN
F 3 "" H 4200 1700 50  0000 C CNN
	1    4200 1700
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0145
U 1 1 5F7CA831
P 4200 1800
F 0 "#PWR0145" H 4200 1550 50  0001 C CNN
F 1 "AGND" V 4205 1673 50  0000 R CNN
F 2 "" H 4200 1800 50  0000 C CNN
F 3 "" H 4200 1800 50  0000 C CNN
	1    4200 1800
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0149
U 1 1 5F7CEA77
P 2050 2000
F 0 "#PWR0149" H 2050 1750 50  0001 C CNN
F 1 "AGND" V 2055 1873 50  0000 R CNN
F 2 "" H 2050 2000 50  0000 C CNN
F 3 "" H 2050 2000 50  0000 C CNN
	1    2050 2000
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0150
U 1 1 5F7CEA81
P 2050 1500
F 0 "#PWR0150" H 2050 1250 50  0001 C CNN
F 1 "AGND" V 2055 1373 50  0000 R CNN
F 2 "" H 2050 1500 50  0000 C CNN
F 3 "" H 2050 1500 50  0000 C CNN
	1    2050 1500
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0151
U 1 1 5F7CEA8B
P 2050 1600
F 0 "#PWR0151" H 2050 1350 50  0001 C CNN
F 1 "AGND" V 2055 1473 50  0000 R CNN
F 2 "" H 2050 1600 50  0000 C CNN
F 3 "" H 2050 1600 50  0000 C CNN
	1    2050 1600
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0152
U 1 1 5F7CEA95
P 2050 1700
F 0 "#PWR0152" H 2050 1450 50  0001 C CNN
F 1 "AGND" V 2055 1573 50  0000 R CNN
F 2 "" H 2050 1700 50  0000 C CNN
F 3 "" H 2050 1700 50  0000 C CNN
	1    2050 1700
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0153
U 1 1 5F7CEA9F
P 2050 1800
F 0 "#PWR0153" H 2050 1550 50  0001 C CNN
F 1 "AGND" V 2055 1673 50  0000 R CNN
F 2 "" H 2050 1800 50  0000 C CNN
F 3 "" H 2050 1800 50  0000 C CNN
	1    2050 1800
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:AGND #PWR0154
U 1 1 5F7D1C0D
P 3150 2000
F 0 "#PWR0154" H 3150 1750 50  0001 C CNN
F 1 "AGND" V 3155 1873 50  0000 R CNN
F 2 "" H 3150 2000 50  0000 C CNN
F 3 "" H 3150 2000 50  0000 C CNN
	1    3150 2000
	0    1    1    0   
$EndComp
Connection ~ 3150 2000
$Comp
L tinkerforge:AGND #PWR0158
U 1 1 5F7D2093
P 5300 2000
F 0 "#PWR0158" H 5300 1750 50  0001 C CNN
F 1 "AGND" V 5305 1873 50  0000 R CNN
F 2 "" H 5300 2000 50  0000 C CNN
F 3 "" H 5300 2000 50  0000 C CNN
	1    5300 2000
	0    1    1    0   
$EndComp
Connection ~ 5300 2000
$Comp
L tinkerforge:AGND #PWR0160
U 1 1 5F7D2550
P 7450 2000
F 0 "#PWR0160" H 7450 1750 50  0001 C CNN
F 1 "AGND" V 7455 1873 50  0000 R CNN
F 2 "" H 7450 2000 50  0000 C CNN
F 3 "" H 7450 2000 50  0000 C CNN
	1    7450 2000
	0    1    1    0   
$EndComp
Connection ~ 7450 2000
$Comp
L tinkerforge:AGND #PWR0161
U 1 1 5F7D29C9
P 9600 2000
F 0 "#PWR0161" H 9600 1750 50  0001 C CNN
F 1 "AGND" V 9605 1873 50  0000 R CNN
F 2 "" H 9600 2000 50  0000 C CNN
F 3 "" H 9600 2000 50  0000 C CNN
	1    9600 2000
	0    1    1    0   
$EndComp
Connection ~ 9600 2000
$Comp
L tinkerforge:AGND #PWR0164
U 1 1 5F7D34AE
P 1050 4200
F 0 "#PWR0164" H 1050 3950 50  0001 C CNN
F 1 "AGND" H 1055 4027 50  0000 C CNN
F 2 "" H 1050 4200 50  0000 C CNN
F 3 "" H 1050 4200 50  0000 C CNN
	1    1050 4200
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:AGND #PWR0166
U 1 1 5F7D3BEA
P 1050 5250
F 0 "#PWR0166" H 1050 5000 50  0001 C CNN
F 1 "AGND" H 1055 5077 50  0000 C CNN
F 2 "" H 1050 5250 50  0000 C CNN
F 3 "" H 1050 5250 50  0000 C CNN
	1    1050 5250
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:AGND #PWR0168
U 1 1 5F7D4091
P 1050 6300
F 0 "#PWR0168" H 1050 6050 50  0001 C CNN
F 1 "AGND" H 1055 6127 50  0000 C CNN
F 2 "" H 1050 6300 50  0000 C CNN
F 3 "" H 1050 6300 50  0000 C CNN
	1    1050 6300
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:AGND #PWR0170
U 1 1 5F7D43F5
P 1050 7350
F 0 "#PWR0170" H 1050 7100 50  0001 C CNN
F 1 "AGND" H 1055 7177 50  0000 C CNN
F 2 "" H 1050 7350 50  0000 C CNN
F 3 "" H 1050 7350 50  0000 C CNN
	1    1050 7350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0172
U 1 1 5F7D60DE
P 4650 3300
F 0 "#PWR0172" H 4650 3150 50  0001 C CNN
F 1 "VCC" H 4667 3473 50  0000 C CNN
F 2 "" H 4650 3300 50  0001 C CNN
F 3 "" H 4650 3300 50  0001 C CNN
	1    4650 3300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0183
U 1 1 5F7D847C
P 4050 4350
F 0 "#PWR0183" H 4050 4200 50  0001 C CNN
F 1 "VCC" V 4068 4477 50  0000 L CNN
F 2 "" H 4050 4350 50  0001 C CNN
F 3 "" H 4050 4350 50  0001 C CNN
	1    4050 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0188
U 1 1 5F7D934D
P 3500 5350
F 0 "#PWR0188" H 3500 5200 50  0001 C CNN
F 1 "VCC" V 3518 5477 50  0000 L CNN
F 2 "" H 3500 5350 50  0001 C CNN
F 3 "" H 3500 5350 50  0001 C CNN
	1    3500 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0193
U 1 1 5F7DA340
P 3500 6650
F 0 "#PWR0193" H 3500 6500 50  0001 C CNN
F 1 "VCC" V 3518 6777 50  0000 L CNN
F 2 "" H 3500 6650 50  0001 C CNN
F 3 "" H 3500 6650 50  0001 C CNN
	1    3500 6650
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0198
U 1 1 5F7DAD6E
P 8100 4450
F 0 "#PWR0198" H 8100 4300 50  0001 C CNN
F 1 "VCC" H 8117 4623 50  0000 C CNN
F 2 "" H 8100 4450 50  0001 C CNN
F 3 "" H 8100 4450 50  0001 C CNN
	1    8100 4450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0203
U 1 1 5F7DB0E0
P 8600 4450
F 0 "#PWR0203" H 8600 4300 50  0001 C CNN
F 1 "VCC" H 8617 4623 50  0000 C CNN
F 2 "" H 8600 4450 50  0001 C CNN
F 3 "" H 8600 4450 50  0001 C CNN
	1    8600 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0205
U 1 1 5F7DBF14
P 8200 6250
F 0 "#PWR0205" H 8200 6000 50  0001 C CNN
F 1 "GND" H 8205 6077 50  0000 C CNN
F 2 "" H 8200 6250 50  0001 C CNN
F 3 "" H 8200 6250 50  0001 C CNN
	1    8200 6250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0206
U 1 1 5F7DD24A
P 8700 5350
F 0 "#PWR0206" H 8700 5200 50  0001 C CNN
F 1 "VCC" H 8717 5523 50  0000 C CNN
F 2 "" H 8700 5350 50  0001 C CNN
F 3 "" H 8700 5350 50  0001 C CNN
	1    8700 5350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0207
U 1 1 5F7DE58C
P 7850 2750
F 0 "#PWR0207" H 7850 2600 50  0001 C CNN
F 1 "VCC" H 7867 2923 50  0000 C CNN
F 2 "" H 7850 2750 50  0001 C CNN
F 3 "" H 7850 2750 50  0001 C CNN
	1    7850 2750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0210
U 1 1 5F7DEC2B
P 9350 2800
F 0 "#PWR0210" H 9350 2650 50  0001 C CNN
F 1 "VCC" H 9367 2973 50  0000 C CNN
F 2 "" H 9350 2800 50  0001 C CNN
F 3 "" H 9350 2800 50  0001 C CNN
	1    9350 2800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0219
U 1 1 5F7DF4FF
P 10800 2800
F 0 "#PWR0219" H 10800 2650 50  0001 C CNN
F 1 "VCC" H 10817 2973 50  0000 C CNN
F 2 "" H 10800 2800 50  0001 C CNN
F 3 "" H 10800 2800 50  0001 C CNN
	1    10800 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0220
U 1 1 5F7DFF80
P 8150 -700
F 0 "#PWR0220" H 8150 -850 50  0001 C CNN
F 1 "+5V" H 8165 -527 50  0000 C CNN
F 2 "" H 8150 -700 50  0001 C CNN
F 3 "" H 8150 -700 50  0001 C CNN
	1    8150 -700
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB4
U 1 1 5F7E02E3
P 8300 -700
F 0 "FB4" V 8050 -800 50  0000 C CNN
F 1 "Ferrite_Bead" V 8150 -850 50  0000 C CNN
F 2 "Inductor_SMD:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8230 -700 50  0001 C CNN
F 3 "~" H 8300 -700 50  0001 C CNN
	1    8300 -700
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0221
U 1 1 5F7E28C0
P 8450 -700
F 0 "#PWR0221" H 8450 -850 50  0001 C CNN
F 1 "VCC" H 8467 -527 50  0000 C CNN
F 2 "" H 8450 -700 50  0001 C CNN
F 3 "" H 8450 -700 50  0001 C CNN
	1    8450 -700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0222
U 1 1 5F7E3DCC
P 1150 2450
F 0 "#PWR0222" H 1150 2300 50  0001 C CNN
F 1 "VCC" H 1167 2623 50  0000 C CNN
F 2 "" H 1150 2450 50  0001 C CNN
F 3 "" H 1150 2450 50  0001 C CNN
	1    1150 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J25
U 1 1 5F7E5C09
P 9250 -800
F 0 "J25" H 9330 -808 50  0000 L CNN
F 1 "Doepfer" H 9330 -899 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 9250 -800 50  0001 C CNN
F 3 "~" H 9250 -800 50  0001 C CNN
	1    9250 -800
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0223
U 1 1 5F7E83B9
P 9050 -300
F 0 "#PWR0223" H 9050 -200 50  0001 C CNN
F 1 "-12V" V 9065 -172 50  0000 L CNN
F 2 "" H 9050 -300 50  0001 C CNN
F 3 "" H 9050 -300 50  0001 C CNN
	1    9050 -300
	0    -1   -1   0   
$EndComp
$Comp
L power:-12V #PWR0224
U 1 1 5F7E89FD
P 9050 -400
F 0 "#PWR0224" H 9050 -300 50  0001 C CNN
F 1 "-12V" V 9065 -272 50  0000 L CNN
F 2 "" H 9050 -400 50  0001 C CNN
F 3 "" H 9050 -400 50  0001 C CNN
	1    9050 -400
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0225
U 1 1 5F7E9D66
P 9050 -1200
F 0 "#PWR0225" H 9050 -1350 50  0001 C CNN
F 1 "+12V" V 9065 -1072 50  0000 L CNN
F 2 "" H 9050 -1200 50  0001 C CNN
F 3 "" H 9050 -1200 50  0001 C CNN
	1    9050 -1200
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0226
U 1 1 5F7EA2EC
P 9050 -1100
F 0 "#PWR0226" H 9050 -1250 50  0001 C CNN
F 1 "+12V" V 9065 -972 50  0000 L CNN
F 2 "" H 9050 -1100 50  0001 C CNN
F 3 "" H 9050 -1100 50  0001 C CNN
	1    9050 -1100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0227
U 1 1 5F7EABBB
P 9050 -1000
F 0 "#PWR0227" H 9050 -1250 50  0001 C CNN
F 1 "GND" V 9050 -1100 50  0000 R CNN
F 2 "" H 9050 -1000 50  0001 C CNN
F 3 "" H 9050 -1000 50  0001 C CNN
	1    9050 -1000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0228
U 1 1 5F7EBA06
P 9050 -900
F 0 "#PWR0228" H 9050 -1150 50  0001 C CNN
F 1 "GND" V 9050 -1000 50  0000 R CNN
F 2 "" H 9050 -900 50  0001 C CNN
F 3 "" H 9050 -900 50  0001 C CNN
	1    9050 -900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0229
U 1 1 5F7EBB19
P 9050 -800
F 0 "#PWR0229" H 9050 -1050 50  0001 C CNN
F 1 "GND" V 9050 -900 50  0000 R CNN
F 2 "" H 9050 -800 50  0001 C CNN
F 3 "" H 9050 -800 50  0001 C CNN
	1    9050 -800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0230
U 1 1 5F7EBD80
P 9050 -700
F 0 "#PWR0230" H 9050 -950 50  0001 C CNN
F 1 "GND" V 9050 -800 50  0000 R CNN
F 2 "" H 9050 -700 50  0001 C CNN
F 3 "" H 9050 -700 50  0001 C CNN
	1    9050 -700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0231
U 1 1 5F7EC009
P 9050 -600
F 0 "#PWR0231" H 9050 -850 50  0001 C CNN
F 1 "GND" V 9050 -700 50  0000 R CNN
F 2 "" H 9050 -600 50  0001 C CNN
F 3 "" H 9050 -600 50  0001 C CNN
	1    9050 -600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0232
U 1 1 5F7EC1B5
P 9050 -500
F 0 "#PWR0232" H 9050 -750 50  0001 C CNN
F 1 "GND" V 9050 -600 50  0000 R CNN
F 2 "" H 9050 -500 50  0001 C CNN
F 3 "" H 9050 -500 50  0001 C CNN
	1    9050 -500
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:L7805 U12
U 1 1 5F7EDDF3
P 11450 -950
F 0 "U12" H 11450 -708 50  0000 C CNN
F 1 "L7805" H 11450 -799 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 11475 -1100 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 11450 -1000 50  0001 C CNN
	1    11450 -950
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0233
U 1 1 5F7EEC61
P 11150 -950
F 0 "#PWR0233" H 11150 -1100 50  0001 C CNN
F 1 "+12V" V 11165 -822 50  0000 L CNN
F 2 "" H 11150 -950 50  0001 C CNN
F 3 "" H 11150 -950 50  0001 C CNN
	1    11150 -950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0234
U 1 1 5F7EF7CB
P 11750 -950
F 0 "#PWR0234" H 11750 -1100 50  0001 C CNN
F 1 "+5V" H 11765 -777 50  0000 C CNN
F 2 "" H 11750 -950 50  0001 C CNN
F 3 "" H 11750 -950 50  0001 C CNN
	1    11750 -950
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0235
U 1 1 5F7F0A65
P 10250 -1000
F 0 "#PWR0235" H 10250 -1150 50  0001 C CNN
F 1 "+12V" H 10265 -827 50  0000 C CNN
F 2 "" H 10250 -1000 50  0001 C CNN
F 3 "" H 10250 -1000 50  0001 C CNN
	1    10250 -1000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C25
U 1 1 5F7F24F4
P 10250 -850
F 0 "C25" H 10368 -804 50  0000 L CNN
F 1 "CP" H 10368 -895 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 10288 -1000 50  0001 C CNN
F 3 "~" H 10250 -850 50  0001 C CNN
	1    10250 -850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0236
U 1 1 5F7F3C56
P 10600 -1000
F 0 "#PWR0236" H 10600 -1150 50  0001 C CNN
F 1 "+12V" H 10615 -827 50  0000 C CNN
F 2 "" H 10600 -1000 50  0001 C CNN
F 3 "" H 10600 -1000 50  0001 C CNN
	1    10600 -1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C27
U 1 1 5F7FA0C5
P 10600 -850
F 0 "C27" H 10715 -804 50  0000 L CNN
F 1 "C" H 10715 -895 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10638 -1000 50  0001 C CNN
F 3 "~" H 10600 -850 50  0001 C CNN
	1    10600 -850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C29
U 1 1 5F7FAAEF
P 12200 -850
F 0 "C29" H 12315 -804 50  0000 L CNN
F 1 "C" H 12315 -895 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 12238 -1000 50  0001 C CNN
F 3 "~" H 12200 -850 50  0001 C CNN
	1    12200 -850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0237
U 1 1 5F7FB109
P 12200 -1000
F 0 "#PWR0237" H 12200 -1150 50  0001 C CNN
F 1 "+5V" H 12215 -827 50  0000 C CNN
F 2 "" H 12200 -1000 50  0001 C CNN
F 3 "" H 12200 -1000 50  0001 C CNN
	1    12200 -1000
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7905 U13
U 1 1 5F7FD4DD
P 11450 -350
F 0 "U13" H 11450 -499 50  0000 C CNN
F 1 "L7905" H 11450 -590 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 11450 -550 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/c9/16/86/41/c7/2b/45/f2/CD00000450.pdf/files/CD00000450.pdf/jcr:content/translations/en.CD00000450.pdf" H 11450 -350 50  0001 C CNN
	1    11450 -350
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0238
U 1 1 5F808D00
P 11150 -350
F 0 "#PWR0238" H 11150 -250 50  0001 C CNN
F 1 "-12V" V 11165 -222 50  0000 L CNN
F 2 "" H 11150 -350 50  0001 C CNN
F 3 "" H 11150 -350 50  0001 C CNN
	1    11150 -350
	0    -1   -1   0   
$EndComp
$Comp
L power:-5V #PWR0239
U 1 1 5F809203
P 11750 -350
F 0 "#PWR0239" H 11750 -250 50  0001 C CNN
F 1 "-5V" H 11765 -177 50  0000 C CNN
F 2 "" H 11750 -350 50  0001 C CNN
F 3 "" H 11750 -350 50  0001 C CNN
	1    11750 -350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0240
U 1 1 5F80C3CA
P 11450 -650
F 0 "#PWR0240" H 11450 -900 50  0001 C CNN
F 1 "GND" V 11450 -750 50  0000 R CNN
F 2 "" H 11450 -650 50  0001 C CNN
F 3 "" H 11450 -650 50  0001 C CNN
	1    11450 -650
	0    1    1    0   
$EndComp
Connection ~ 11450 -650
$Comp
L Device:C C30
U 1 1 5F80E268
P 12200 -550
F 0 "C30" H 12315 -504 50  0000 L CNN
F 1 "C" H 12315 -595 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 12238 -700 50  0001 C CNN
F 3 "~" H 12200 -550 50  0001 C CNN
	1    12200 -550
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0241
U 1 1 5F80E3D5
P 12200 -400
F 0 "#PWR0241" H 12200 -300 50  0001 C CNN
F 1 "-5V" H 12215 -227 50  0000 C CNN
F 2 "" H 12200 -400 50  0001 C CNN
F 3 "" H 12200 -400 50  0001 C CNN
	1    12200 -400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0242
U 1 1 5F80F0E8
P 12200 -700
F 0 "#PWR0242" H 12200 -950 50  0001 C CNN
F 1 "GND" V 12200 -800 50  0000 R CNN
F 2 "" H 12200 -700 50  0001 C CNN
F 3 "" H 12200 -700 50  0001 C CNN
	1    12200 -700
	0    1    1    0   
$EndComp
Connection ~ 12200 -700
$Comp
L Device:CP C26
U 1 1 5F810456
P 10250 -550
F 0 "C26" H 10368 -504 50  0000 L CNN
F 1 "CP" H 10368 -595 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 10288 -700 50  0001 C CNN
F 3 "~" H 10250 -550 50  0001 C CNN
	1    10250 -550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C28
U 1 1 5F81088B
P 10600 -550
F 0 "C28" H 10715 -504 50  0000 L CNN
F 1 "C" H 10715 -595 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10638 -700 50  0001 C CNN
F 3 "~" H 10600 -550 50  0001 C CNN
	1    10600 -550
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0243
U 1 1 5F811270
P 10250 -400
F 0 "#PWR0243" H 10250 -300 50  0001 C CNN
F 1 "-12V" H 10265 -227 50  0000 C CNN
F 2 "" H 10250 -400 50  0001 C CNN
F 3 "" H 10250 -400 50  0001 C CNN
	1    10250 -400
	-1   0    0    1   
$EndComp
$Comp
L power:-12V #PWR0244
U 1 1 5F811928
P 10600 -400
F 0 "#PWR0244" H 10600 -300 50  0001 C CNN
F 1 "-12V" H 10615 -227 50  0000 C CNN
F 2 "" H 10600 -400 50  0001 C CNN
F 3 "" H 10600 -400 50  0001 C CNN
	1    10600 -400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0245
U 1 1 5F81527B
P 10600 -700
F 0 "#PWR0245" H 10600 -950 50  0001 C CNN
F 1 "GND" V 10600 -800 50  0000 R CNN
F 2 "" H 10600 -700 50  0001 C CNN
F 3 "" H 10600 -700 50  0001 C CNN
	1    10600 -700
	0    1    1    0   
$EndComp
Connection ~ 10600 -700
$Comp
L power:GND #PWR0246
U 1 1 5F81587B
P 10250 -700
F 0 "#PWR0246" H 10250 -950 50  0001 C CNN
F 1 "GND" V 10250 -800 50  0000 R CNN
F 2 "" H 10250 -700 50  0001 C CNN
F 3 "" H 10250 -700 50  0001 C CNN
	1    10250 -700
	0    1    1    0   
$EndComp
Connection ~ 10250 -700
$Comp
L power:VCC #PWR0180
U 1 1 5F9A4C26
P 4600 -1000
F 0 "#PWR0180" H 4600 -1150 50  0001 C CNN
F 1 "VCC" H 4617 -827 50  0000 C CNN
F 2 "" H 4600 -1000 50  0001 C CNN
F 3 "" H 4600 -1000 50  0001 C CNN
	1    4600 -1000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0182
U 1 1 5F9A55CE
P 4950 -1000
F 0 "#PWR0182" H 4950 -1150 50  0001 C CNN
F 1 "VCC" H 4967 -827 50  0000 C CNN
F 2 "" H 4950 -1000 50  0001 C CNN
F 3 "" H 4950 -1000 50  0001 C CNN
	1    4950 -1000
	1    0    0    -1  
$EndComp
Text Label 3500 6750 2    50   ~ 0
button_latch
Text Label 2050 2100 2    50   ~ 0
a_a
Text Label 5250 4000 0    50   ~ 0
b_a
Text Label 5250 4100 0    50   ~ 0
b_b
Text Label 5250 4200 0    50   ~ 0
b_c
$Comp
L synkie_symbols:Conn_01x04 J24
U 1 1 600411E8
P 6650 6200
F 0 "J24" H 6730 6192 50  0000 L CNN
F 1 "Conn_01x04" H 6730 6101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6650 6200 50  0001 C CNN
F 3 "~" H 6650 6200 50  0001 C CNN
	1    6650 6200
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0247
U 1 1 60041D73
P 6450 6400
F 0 "#PWR0247" H 6450 6500 50  0001 C CNN
F 1 "-5V" H 6465 6573 50  0000 C CNN
F 2 "" H 6450 6400 50  0001 C CNN
F 3 "" H 6450 6400 50  0001 C CNN
	1    6450 6400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
