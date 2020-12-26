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
L synkie_symbols:GND #PWR?
U 1 1 5DCB53A6
P 10150 1250
F 0 "#PWR?" H 10150 1000 50  0001 C CNN
F 1 "GND" H 10155 1077 50  0000 C CNN
F 2 "" H 10150 1250 50  0001 C CNN
F 3 "" H 10150 1250 50  0001 C CNN
	1    10150 1250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5DCB6075
P 10450 1650
F 0 "#PWR?" H 10450 1750 50  0001 C CNN
F 1 "-5V" H 10450 1800 50  0000 C CNN
F 2 "" H 10450 1650 50  0001 C CNN
F 3 "" H 10450 1650 50  0001 C CNN
	1    10450 1650
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:PWR_FLAG #FLG?
U 1 1 5DCB6C6B
P 10550 1650
F 0 "#FLG?" H 10550 1725 50  0001 C CNN
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
L synkie_symbols:PWR_FLAG #FLG?
U 1 1 5DCB6B02
P 10550 800
F 0 "#FLG?" H 10550 875 50  0001 C CNN
F 1 "PWR_FLAG" H 10750 950 50  0000 C CNN
F 2 "" H 10550 800 50  0001 C CNN
F 3 "~" H 10550 800 50  0001 C CNN
	1    10550 800 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5DCB58DB
P 10450 800
F 0 "#PWR?" H 10450 650 50  0001 C CNN
F 1 "+5V" H 10450 950 50  0000 C CNN
F 2 "" H 10450 800 50  0001 C CNN
F 3 "" H 10450 800 50  0001 C CNN
	1    10450 800 
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:PWR_FLAG #FLG?
U 1 1 5DCB666B
P 10150 1250
F 0 "#FLG?" H 10150 1325 50  0001 C CNN
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
L synkie_symbols:Conn_01x01 J?
U 1 1 5DCC5C28
P 3350 3300
F 0 "J?" H 3268 3517 50  0000 C CNN
F 1 "Conn_01x01" H 3268 3426 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 3350 3300 50  0001 C CNN
F 3 "~" H 3350 3300 50  0001 C CNN
	1    3350 3300
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5DCC6769
P 3800 3300
F 0 "R?" V 3593 3300 50  0000 C CNN
F 1 "75" V 3684 3300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3730 3300 50  0001 C CNN
F 3 "~" H 3800 3300 50  0001 C CNN
	1    3800 3300
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5DCC7045
P 3600 3500
F 0 "R?" H 3530 3454 50  0000 R CNN
F 1 "10k" H 3530 3545 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3530 3500 50  0001 C CNN
F 3 "~" H 3600 3500 50  0001 C CNN
	1    3600 3500
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5DCC82F8
P 3600 3650
F 0 "#PWR?" H 3600 3400 50  0001 C CNN
F 1 "GND" H 3605 3477 50  0000 C CNN
F 2 "" H 3600 3650 50  0001 C CNN
F 3 "" H 3600 3650 50  0001 C CNN
	1    3600 3650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:BAT54S D?
U 1 1 5DCC8AC0
P 4050 3300
F 0 "D?" V 3900 3150 50  0000 L CNN
F 1 "BAT54S" V 3800 3000 50  0000 L CNN
F 2 "synkie_footprints:SOT-23" H 4125 3425 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 3930 3300 50  0001 C CNN
	1    4050 3300
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5DCC9B0B
P 4050 3000
F 0 "#PWR?" H 4050 2850 50  0001 C CNN
F 1 "+5V" H 4050 3150 50  0000 C CNN
F 2 "" H 4050 3000 50  0001 C CNN
F 3 "" H 4050 3000 50  0001 C CNN
	1    4050 3000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5DCCA031
P 4050 3600
F 0 "#PWR?" H 4050 3700 50  0001 C CNN
F 1 "-5V" H 4050 3750 50  0000 C CNN
F 2 "" H 4050 3600 50  0001 C CNN
F 3 "" H 4050 3600 50  0001 C CNN
	1    4050 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 3300 3600 3300
Wire Wire Line
	3600 3350 3600 3300
Connection ~ 3600 3300
Wire Wire Line
	3600 3300 3650 3300
Wire Wire Line
	3950 3300 4050 3300
$Comp
L synkie_symbols:R R?
U 1 1 5DCB0590
P 4300 3300
F 0 "R?" V 4093 3300 50  0000 C CNN
F 1 "?" V 4184 3300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 3300 50  0001 C CNN
F 3 "~" H 4300 3300 50  0001 C CNN
	1    4300 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 3300 4050 3300
Connection ~ 4050 3300
$EndSCHEMATC
