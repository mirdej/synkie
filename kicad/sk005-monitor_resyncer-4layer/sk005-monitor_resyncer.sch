EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "sk002-output"
Date "2021-09-24"
Rev ""
Comp "[ a n y m a ]"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5F79495D
P 10900 4650
F 0 "J5" H 10928 4676 50  0000 L CNN
F 1 "gnd" H 10928 4585 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 10900 4650 50  0001 C CNN
F 3 "~" H 10900 4650 50  0001 C CNN
	1    10900 4650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR028
U 1 1 5F795277
P 10700 4650
F 0 "#PWR028" H 10700 4400 50  0001 C CNN
F 1 "GND" H 10705 4477 50  0000 C CNN
F 2 "" H 10700 4650 50  0001 C CNN
F 3 "" H 10700 4650 50  0001 C CNN
	1    10700 4650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x03 J7
U 1 1 5DCAB59D
P 10150 5750
F 0 "J7" H 10068 5425 50  0000 C CNN
F 1 "Power" H 10068 5516 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 10150 5750 50  0001 C CNN
F 3 "~" H 10150 5750 50  0001 C CNN
	1    10150 5750
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR033
U 1 1 5DCB58DB
P 10750 5300
F 0 "#PWR033" H 10750 5150 50  0001 C CNN
F 1 "+5V" H 10750 5450 50  0000 C CNN
F 2 "" H 10750 5300 50  0001 C CNN
F 3 "" H 10750 5300 50  0001 C CNN
	1    10750 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10750 5300 10750 5650
Connection ~ 10750 5650
Connection ~ 10750 5850
Wire Wire Line
	10750 6150 10750 5850
Wire Wire Line
	10950 5750 11050 5750
$Comp
L synkie_symbols:-5V #PWR038
U 1 1 5DCB6075
P 10750 6150
F 0 "#PWR038" H 10750 6250 50  0001 C CNN
F 1 "-5V" H 10750 6300 50  0000 C CNN
F 2 "" H 10750 6150 50  0001 C CNN
F 3 "" H 10750 6150 50  0001 C CNN
	1    10750 6150
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR037
U 1 1 5DCB53A6
P 11050 5750
F 0 "#PWR037" H 11050 5500 50  0001 C CNN
F 1 "GND" H 11055 5577 50  0000 C CNN
F 2 "" H 11050 5750 50  0001 C CNN
F 3 "" H 11050 5750 50  0001 C CNN
	1    11050 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10950 5750 10950 5850
Connection ~ 10950 5750
Wire Wire Line
	10950 5650 10950 5750
$Comp
L synkie_symbols:CP_Small C14
U 1 1 5DCB0A0D
P 10850 5850
F 0 "C14" V 10700 5850 50  0000 C CNN
F 1 "10u" V 10600 5850 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 10850 5850 50  0001 C CNN
F 3 "~" H 10850 5850 50  0001 C CNN
	1    10850 5850
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB1
U 1 1 5DCAC6DA
P 10600 5650
F 0 "FB1" V 10326 5650 50  0000 C CNN
F 1 "330u" V 10417 5650 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10530 5650 50  0001 C CNN
F 3 "~" H 10600 5650 50  0001 C CNN
	1    10600 5650
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB2
U 1 1 5DCAD10D
P 10600 5850
F 0 "FB2" V 10750 5850 50  0000 C CNN
F 1 "330u" V 10850 5850 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10530 5850 50  0001 C CNN
F 3 "~" H 10600 5850 50  0001 C CNN
	1    10600 5850
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C13
U 1 1 5DCABC45
P 10850 5650
F 0 "C13" V 10625 5650 50  0000 C CNN
F 1 "10u" V 10716 5650 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 10850 5650 50  0001 C CNN
F 3 "~" H 10850 5650 50  0001 C CNN
	1    10850 5650
	0    -1   1    0   
$EndComp
Text Label 10450 5650 1    50   ~ 0
supply+
Text Label 10450 5850 3    50   ~ 0
supply-
Wire Wire Line
	10350 5650 10450 5650
Wire Wire Line
	10350 5850 10450 5850
$Comp
L synkie_symbols:GND #PWR036
U 1 1 60210B40
P 10350 5750
F 0 "#PWR036" H 10350 5500 50  0001 C CNN
F 1 "GND" H 10355 5577 50  0000 C CNN
F 2 "" H 10350 5750 50  0001 C CNN
F 3 "" H 10350 5750 50  0001 C CNN
	1    10350 5750
	0    -1   1    0   
$EndComp
$Comp
L 4xxx:4053 U2
U 1 1 5FEF2495
P 7900 2250
AR Path="/5FEF2495" Ref="U2"  Part="1" 
AR Path="/5FED65BF/5FEF2495" Ref="U?"  Part="1" 
F 0 "U2" H 7700 3000 50  0000 C CNN
F 1 "4053" H 8100 3000 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 7900 2250 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 7900 2250 50  0001 C CNN
	1    7900 2250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR023
U 1 1 5FEF24CF
P 7900 3150
AR Path="/5FEF24CF" Ref="#PWR023"  Part="1" 
AR Path="/5FED65BF/5FEF24CF" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 7900 2900 50  0001 C CNN
F 1 "GND" H 7905 2977 50  0000 C CNN
F 2 "" H 7900 3150 50  0001 C CNN
F 3 "" H 7900 3150 50  0001 C CNN
	1    7900 3150
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR024
U 1 1 5FEF24D5
P 8000 3150
AR Path="/5FEF24D5" Ref="#PWR024"  Part="1" 
AR Path="/5FED65BF/5FEF24D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR024" H 8000 3250 50  0001 C CNN
F 1 "-5V" H 8015 3323 50  0000 C CNN
F 2 "" H 8000 3150 50  0001 C CNN
F 3 "" H 8000 3150 50  0001 C CNN
	1    8000 3150
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR05
U 1 1 5FEF24DB
P 7900 1350
AR Path="/5FEF24DB" Ref="#PWR05"  Part="1" 
AR Path="/5FED65BF/5FEF24DB" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 7900 1200 50  0001 C CNN
F 1 "+5V" H 7915 1523 50  0000 C CNN
F 2 "" H 7900 1350 50  0001 C CNN
F 3 "" H 7900 1350 50  0001 C CNN
	1    7900 1350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U3
U 2 1 5FEF24E7
P 9550 2350
AR Path="/5FEF24E7" Ref="U3"  Part="2" 
AR Path="/5FED65BF/5FEF24E7" Ref="U?"  Part="2" 
F 0 "U3" H 9550 2717 50  0000 C CNN
F 1 "LMH6643" H 9550 2626 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 9550 2350 50  0001 C CNN
F 3 "~" H 9550 2350 50  0001 C CNN
	2    9550 2350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R10
U 1 1 5FEF24F9
P 9550 2750
AR Path="/5FEF24F9" Ref="R10"  Part="1" 
AR Path="/5FED65BF/5FEF24F9" Ref="R?"  Part="1" 
F 0 "R10" V 9343 2750 50  0000 C CNN
F 1 "220" V 9434 2750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 2750 50  0001 C CNN
F 3 "~" H 9550 2750 50  0001 C CNN
	1    9550 2750
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R12
U 1 1 5FEF24FF
P 9250 2900
AR Path="/5FEF24FF" Ref="R12"  Part="1" 
AR Path="/5FED65BF/5FEF24FF" Ref="R?"  Part="1" 
F 0 "R12" H 9180 2854 50  0000 R CNN
F 1 "220" H 9180 2945 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9180 2900 50  0001 C CNN
F 3 "~" H 9250 2900 50  0001 C CNN
	1    9250 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 2450 9250 2750
Wire Wire Line
	9700 2750 9850 2750
Wire Wire Line
	9850 2750 9850 2350
$Comp
L synkie_symbols:GND #PWR021
U 1 1 5FEF2508
P 9250 3050
AR Path="/5FEF2508" Ref="#PWR021"  Part="1" 
AR Path="/5FED65BF/5FEF2508" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 9250 2800 50  0001 C CNN
F 1 "GND" H 9255 2877 50  0000 C CNN
F 2 "" H 9250 3050 50  0001 C CNN
F 3 "" H 9250 3050 50  0001 C CNN
	1    9250 3050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R2
U 1 1 5FEF2521
P 9850 1400
AR Path="/5FEF2521" Ref="R2"  Part="1" 
AR Path="/5FED65BF/5FEF2521" Ref="R?"  Part="1" 
F 0 "R2" V 10057 1400 50  0000 C CNN
F 1 "300" V 9966 1400 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9780 1400 50  0001 C CNN
F 3 "~" H 9850 1400 50  0001 C CNN
	1    9850 1400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR04
U 1 1 5FEF2527
P 9850 1250
AR Path="/5FEF2527" Ref="#PWR04"  Part="1" 
AR Path="/5FED65BF/5FEF2527" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 9850 1000 50  0001 C CNN
F 1 "GND" H 9855 1077 50  0000 C CNN
F 2 "" H 9850 1250 50  0001 C CNN
F 3 "" H 9850 1250 50  0001 C CNN
	1    9850 1250
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R3
U 1 1 5FEF252D
P 9850 1700
AR Path="/5FEF252D" Ref="R3"  Part="1" 
AR Path="/5FED65BF/5FEF252D" Ref="R?"  Part="1" 
F 0 "R3" V 10057 1700 50  0000 C CNN
F 1 "4k7" V 9966 1700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9780 1700 50  0001 C CNN
F 3 "~" H 9850 1700 50  0001 C CNN
	1    9850 1700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR011
U 1 1 6154F0F6
P 9850 1850
AR Path="/6154F0F6" Ref="#PWR011"  Part="1" 
AR Path="/5FED65BF/6154F0F6" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 9850 1950 50  0001 C CNN
F 1 "-5V" H 9865 2023 50  0000 C CNN
F 2 "" H 9850 1850 50  0001 C CNN
F 3 "" H 9850 1850 50  0001 C CNN
	1    9850 1850
	-1   0    0    1   
$EndComp
Text Label 10150 1550 0    50   ~ 0
synctip
$Comp
L synkie_symbols:-5V #PWR08
U 1 1 5FEF253F
P 4850 1500
AR Path="/5FEF253F" Ref="#PWR08"  Part="1" 
AR Path="/5FED65BF/5FEF253F" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 4850 1600 50  0001 C CNN
F 1 "-5V" H 4850 1650 50  0000 C CNN
F 2 "" H 4850 1500 50  0001 C CNN
F 3 "" H 4850 1500 50  0001 C CNN
	1    4850 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 1700 4500 1700
Connection ~ 4450 1700
Wire Wire Line
	4450 1950 4450 1700
Wire Wire Line
	4150 1950 4450 1950
Wire Wire Line
	4150 1900 4150 1950
$Comp
L synkie_symbols:R R6
U 1 1 5FEF254A
P 4150 2100
AR Path="/5FEF254A" Ref="R6"  Part="1" 
AR Path="/5FED65BF/5FEF254A" Ref="R?"  Part="1" 
F 0 "R6" H 4080 2054 50  0000 R CNN
F 1 "5k6" H 4080 2145 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4080 2100 50  0001 C CNN
F 3 "~" H 4150 2100 50  0001 C CNN
	1    4150 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 1700 4450 1700
$Comp
L synkie_symbols:-5V #PWR013
U 1 1 5FEF2551
P 4150 2250
AR Path="/5FEF2551" Ref="#PWR013"  Part="1" 
AR Path="/5FED65BF/5FEF2551" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 4150 2350 50  0001 C CNN
F 1 "-5V" H 4150 2400 50  0000 C CNN
F 2 "" H 4150 2250 50  0001 C CNN
F 3 "" H 4150 2250 50  0001 C CNN
	1    4150 2250
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR010
U 1 1 6154F0FA
P 3900 1850
AR Path="/6154F0FA" Ref="#PWR010"  Part="1" 
AR Path="/5FED65BF/6154F0FA" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 3900 1600 50  0001 C CNN
F 1 "GND" H 3905 1677 50  0001 C CNN
F 2 "" H 3900 1850 50  0001 C CNN
F 3 "" H 3900 1850 50  0001 C CNN
	1    3900 1850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR03
U 1 1 6154F0FB
P 3900 1200
AR Path="/6154F0FB" Ref="#PWR03"  Part="1" 
AR Path="/5FED65BF/6154F0FB" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 3900 1050 50  0001 C CNN
F 1 "+5V" H 3900 1350 50  0000 C CNN
F 2 "" H 3900 1200 50  0001 C CNN
F 3 "" H 3900 1200 50  0001 C CNN
	1    3900 1200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R1
U 1 1 6154F0FC
P 3900 1350
AR Path="/6154F0FC" Ref="R1"  Part="1" 
AR Path="/5FED65BF/6154F0FC" Ref="R?"  Part="1" 
F 0 "R1" H 3830 1304 50  0000 R CNN
F 1 "120" H 3830 1395 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3830 1350 50  0001 C CNN
F 3 "~" H 3900 1350 50  0001 C CNN
	1    3900 1350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:D D1
U 1 1 6154F0FD
P 3900 1700
AR Path="/6154F0FD" Ref="D1"  Part="1" 
AR Path="/5FED65BF/6154F0FD" Ref="D?"  Part="1" 
F 0 "D1" V 3946 1620 50  0000 R CNN
F 1 "D" V 3855 1620 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 3900 1700 50  0001 C CNN
F 3 "~" H 3900 1700 50  0001 C CNN
	1    3900 1700
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:PMBT3906YS Q1
U 1 1 6154F0FE
P 4200 1700
AR Path="/6154F0FE" Ref="Q1"  Part="1" 
AR Path="/5FED65BF/6154F0FE" Ref="Q?"  Part="1" 
F 0 "Q1" H 4000 1550 50  0000 L CNN
F 1 "PMBT3906YS" H 4338 1745 50  0001 L CNN
F 2 "synkie_footprints:SOT-363_SC-70-6_Handsoldering" H 4100 1725 50  0001 C CNN
F 3 "" H 4100 1725 50  0001 C CNN
	1    4200 1700
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:PMBT3906YS Q1
U 2 1 6154F0FF
P 4650 1700
AR Path="/6154F0FF" Ref="Q1"  Part="2" 
AR Path="/5FED65BF/6154F0FF" Ref="Q?"  Part="2" 
F 0 "Q1" H 4450 1850 50  0000 L CNN
F 1 "PMBT3906YS" H 4800 1500 50  0000 L CNN
F 2 "synkie_footprints:SOT-363_SC-70-6_Handsoldering" H 4550 1725 50  0001 C CNN
F 3 "" H 4550 1725 50  0001 C CNN
	2    4650 1700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R11
U 1 1 6154F100
P 4350 2900
AR Path="/6154F100" Ref="R11"  Part="1" 
AR Path="/5FED65BF/6154F100" Ref="R?"  Part="1" 
F 0 "R11" V 4143 2900 50  0000 C CNN
F 1 "330" V 4234 2900 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4280 2900 50  0001 C CNN
F 3 "~" H 4350 2900 50  0001 C CNN
	1    4350 2900
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U3
U 1 1 6154F101
P 5100 3000
AR Path="/6154F101" Ref="U3"  Part="1" 
AR Path="/5FED65BF/6154F101" Ref="U?"  Part="1" 
F 0 "U3" H 4900 3250 50  0000 C CNN
F 1 "LMH6643" H 5200 3200 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5100 3000 50  0001 C CNN
F 3 "~" H 5100 3000 50  0001 C CNN
	1    5100 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1500 3900 1500
Wire Wire Line
	3900 1500 3900 1550
Connection ~ 3900 1500
Connection ~ 4150 1950
Wire Wire Line
	4700 1500 4850 1500
Text Notes 1150 950  0    50   ~ 0
CLIPPER
Wire Wire Line
	9400 2750 9250 2750
Connection ~ 9250 2750
Wire Wire Line
	9850 1550 10150 1550
Connection ~ 9850 1550
Wire Notes Line
	6100 850  10700 850 
Text Notes 6150 950  0    50   ~ 0
RESYNCER
Wire Notes Line
	6100 3700 10700 3700
Wire Notes Line
	10700 850  10700 3700
$Comp
L synkie_symbols:R R7
U 1 1 6154F102
P 8550 2250
AR Path="/6154F102" Ref="R7"  Part="1" 
AR Path="/5FED65BF/6154F102" Ref="R?"  Part="1" 
F 0 "R7" V 8343 2250 50  0000 C CNN
F 1 "120" V 8434 2250 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8480 2250 50  0001 C CNN
F 3 "~" H 8550 2250 50  0001 C CNN
	1    8550 2250
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C3
U 1 1 6154F103
P 8700 2350
AR Path="/6154F103" Ref="C3"  Part="1" 
AR Path="/5FED65BF/6154F103" Ref="C?"  Part="1" 
F 0 "C3" H 8800 2350 50  0000 L CNN
F 1 "120p" H 8450 2250 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8738 2200 50  0001 C CNN
F 3 "~" H 8700 2350 50  0001 C CNN
	1    8700 2350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR015
U 1 1 6154F104
P 8700 2450
AR Path="/6154F104" Ref="#PWR015"  Part="1" 
AR Path="/5FED65BF/6154F104" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 8700 2200 50  0001 C CNN
F 1 "GND" H 8705 2277 50  0000 C CNN
F 2 "" H 8700 2450 50  0001 C CNN
F 3 "" H 8700 2450 50  0001 C CNN
	1    8700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2250 8700 2250
Connection ~ 8700 2250
$Comp
L synkie_symbols:Opamp_Dual_Generic U3
U 3 1 6154F105
P 1650 3150
AR Path="/6154F105" Ref="U3"  Part="3" 
AR Path="/5FED65BF/6154F105" Ref="U?"  Part="3" 
F 0 "U3" H 1650 3400 50  0000 L CNN
F 1 "LMH6643" H 1650 3300 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 1650 3150 50  0001 C CNN
F 3 "~" H 1650 3150 50  0001 C CNN
	3    1650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3150 1350 3050
Wire Wire Line
	1350 3250 1350 3150
Connection ~ 1350 3150
$Comp
L synkie_symbols:GND #PWR022
U 1 1 6154F106
P 1350 3150
AR Path="/6154F106" Ref="#PWR022"  Part="1" 
AR Path="/5FED65BF/6154F106" Ref="#PWR?"  Part="1" 
F 0 "#PWR022" H 1350 2900 50  0001 C CNN
F 1 "GND" H 1355 2977 50  0001 C CNN
F 2 "" H 1350 3150 50  0001 C CNN
F 3 "" H 1350 3150 50  0001 C CNN
	1    1350 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 2850 1550 2850
Wire Wire Line
	1350 2850 1450 2850
Connection ~ 1450 2850
$Comp
L synkie_symbols:+5V #PWR018
U 1 1 5FEFEC24
P 1450 2850
AR Path="/5FEFEC24" Ref="#PWR018"  Part="1" 
AR Path="/5FED65BF/5FEFEC24" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 1450 2700 50  0001 C CNN
F 1 "+5V" H 1450 3000 50  0000 C CNN
F 2 "" H 1450 2850 50  0001 C CNN
F 3 "" H 1450 2850 50  0001 C CNN
	1    1450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3450 1550 3450
Wire Wire Line
	1350 3450 1450 3450
Connection ~ 1450 3450
$Comp
L synkie_symbols:-5V #PWR026
U 1 1 5FEFEC2D
P 1450 3450
AR Path="/5FEFEC2D" Ref="#PWR026"  Part="1" 
AR Path="/5FED65BF/5FEFEC2D" Ref="#PWR?"  Part="1" 
F 0 "#PWR026" H 1450 3550 50  0001 C CNN
F 1 "-5V" H 1450 3600 50  0000 C CNN
F 2 "" H 1450 3450 50  0001 C CNN
F 3 "" H 1450 3450 50  0001 C CNN
	1    1450 3450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C8
U 1 1 5FEFEC33
P 1350 3350
AR Path="/5FEFEC33" Ref="C8"  Part="1" 
AR Path="/5FED65BF/5FEFEC33" Ref="C?"  Part="1" 
F 0 "C8" V 1450 3350 50  0000 C CNN
F 1 "100n" V 1212 3350 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1350 3350 50  0001 C CNN
F 3 "~" H 1350 3350 50  0001 C CNN
	1    1350 3350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C5
U 1 1 5FEFEC39
P 1350 2950
AR Path="/5FEFEC39" Ref="C5"  Part="1" 
AR Path="/5FED65BF/5FEFEC39" Ref="C?"  Part="1" 
F 0 "C5" V 1450 2950 50  0000 C CNN
F 1 "100n" V 1212 2950 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1350 2950 50  0001 C CNN
F 3 "~" H 1350 2950 50  0001 C CNN
	1    1350 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	11000 3250 11000 3150
Wire Wire Line
	11000 3350 11000 3250
Connection ~ 11000 3250
$Comp
L synkie_symbols:GND #PWR025
U 1 1 5FEFEC42
P 11000 3250
AR Path="/5FEFEC42" Ref="#PWR025"  Part="1" 
AR Path="/5FED65BF/5FEFEC42" Ref="#PWR?"  Part="1" 
F 0 "#PWR025" H 11000 3000 50  0001 C CNN
F 1 "GND" H 11005 3077 50  0001 C CNN
F 2 "" H 11000 3250 50  0001 C CNN
F 3 "" H 11000 3250 50  0001 C CNN
	1    11000 3250
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C9
U 1 1 6154F10C
P 11000 3450
AR Path="/6154F10C" Ref="C9"  Part="1" 
AR Path="/5FED65BF/6154F10C" Ref="C?"  Part="1" 
F 0 "C9" V 11100 3450 50  0000 C CNN
F 1 "100n" V 10862 3450 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 11000 3450 50  0001 C CNN
F 3 "~" H 11000 3450 50  0001 C CNN
	1    11000 3450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C7
U 1 1 5FEFEC4E
P 11000 3050
AR Path="/5FEFEC4E" Ref="C7"  Part="1" 
AR Path="/5FED65BF/5FEFEC4E" Ref="C?"  Part="1" 
F 0 "C7" V 11100 3050 50  0000 C CNN
F 1 "100n" V 10862 3050 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 11000 3050 50  0001 C CNN
F 3 "~" H 11000 3050 50  0001 C CNN
	1    11000 3050
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR019
U 1 1 5FEFEC54
P 11000 2950
AR Path="/5FEFEC54" Ref="#PWR019"  Part="1" 
AR Path="/5FED65BF/5FEFEC54" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 11000 2800 50  0001 C CNN
F 1 "+5V" H 11000 3100 50  0000 C CNN
F 2 "" H 11000 2950 50  0001 C CNN
F 3 "" H 11000 2950 50  0001 C CNN
	1    11000 2950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR027
U 1 1 5FEFEC5A
P 11000 3550
AR Path="/5FEFEC5A" Ref="#PWR027"  Part="1" 
AR Path="/5FED65BF/5FEFEC5A" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 11000 3650 50  0001 C CNN
F 1 "-5V" H 11000 3700 50  0000 C CNN
F 2 "" H 11000 3550 50  0001 C CNN
F 3 "" H 11000 3550 50  0001 C CNN
	1    11000 3550
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 3 1 5FEFEC60
P 11100 1150
AR Path="/5FEFEC60" Ref="U1"  Part="3" 
AR Path="/5FED65BF/5FEFEC60" Ref="U?"  Part="3" 
F 0 "U1" H 11100 1517 50  0000 C CNN
F 1 "LMH6643" H 11100 1426 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 11100 1150 50  0001 C CNN
F 3 "~" H 11100 1150 50  0001 C CNN
	3    11100 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 1150 10900 1050
Wire Wire Line
	10900 1250 10900 1150
Connection ~ 10900 1150
$Comp
L synkie_symbols:GND #PWR02
U 1 1 6154F111
P 10900 1150
AR Path="/6154F111" Ref="#PWR02"  Part="1" 
AR Path="/5FED65BF/6154F111" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 10900 900 50  0001 C CNN
F 1 "GND" H 10905 977 50  0001 C CNN
F 2 "" H 10900 1150 50  0001 C CNN
F 3 "" H 10900 1150 50  0001 C CNN
	1    10900 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	10900 1450 11000 1450
Connection ~ 11000 1450
$Comp
L synkie_symbols:-5V #PWR06
U 1 1 6154F113
P 11000 1450
AR Path="/6154F113" Ref="#PWR06"  Part="1" 
AR Path="/5FED65BF/6154F113" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 11000 1550 50  0001 C CNN
F 1 "-5V" H 11000 1600 50  0000 C CNN
F 2 "" H 11000 1450 50  0001 C CNN
F 3 "" H 11000 1450 50  0001 C CNN
	1    11000 1450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C2
U 1 1 6154F114
P 10900 1350
AR Path="/6154F114" Ref="C2"  Part="1" 
AR Path="/5FED65BF/6154F114" Ref="C?"  Part="1" 
F 0 "C2" V 11000 1350 50  0000 C CNN
F 1 "100n" V 10762 1350 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10900 1350 50  0001 C CNN
F 3 "~" H 10900 1350 50  0001 C CNN
	1    10900 1350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C1
U 1 1 6154F115
P 10900 950
AR Path="/6154F115" Ref="C1"  Part="1" 
AR Path="/5FED65BF/6154F115" Ref="C?"  Part="1" 
F 0 "C1" V 11000 950 50  0000 C CNN
F 1 "100n" V 10762 950 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10900 950 50  0001 C CNN
F 3 "~" H 10900 950 50  0001 C CNN
	1    10900 950 
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR017
U 1 1 5FEF24E1
P 7400 2550
AR Path="/5FEF24E1" Ref="#PWR017"  Part="1" 
AR Path="/5FED65BF/5FEF24E1" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 7400 2300 50  0001 C CNN
F 1 "GND" H 7405 2377 50  0001 C CNN
F 2 "" H 7400 2550 50  0001 C CNN
F 3 "" H 7400 2550 50  0001 C CNN
	1    7400 2550
	0    1    1    0   
$EndComp
Text GLabel 7400 2650 0    50   Input ~ 0
porch
Text GLabel 7400 2850 0    50   Input ~ 0
hsync
Text Label 7400 2250 2    50   ~ 0
synctip
Text Label 7400 1750 2    50   ~ 0
clipper_out
Wire Wire Line
	6700 2350 7400 2350
Wire Wire Line
	8400 1950 8650 1950
Text Label 5550 3000 0    50   ~ 0
clipper_out
Wire Wire Line
	4800 2900 4700 2900
Wire Wire Line
	5400 3000 5450 3000
Wire Wire Line
	5450 3000 5450 3400
Wire Wire Line
	5450 3400 4750 3400
Wire Wire Line
	4750 3400 4750 3100
Wire Wire Line
	4750 3100 4800 3100
Connection ~ 5450 3000
Wire Wire Line
	5450 3000 5550 3000
$Comp
L synkie_symbols:R R5
U 1 1 6154F0E9
P 2000 2000
AR Path="/6154F0E9" Ref="R5"  Part="1" 
AR Path="/5FED65BF/6154F0E9" Ref="R?"  Part="1" 
F 0 "R5" V 1793 2000 50  0000 C CNN
F 1 "75" V 1884 2000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1930 2000 50  0001 C CNN
F 3 "~" H 2000 2000 50  0001 C CNN
	1    2000 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 2900 4700 2900
Connection ~ 4700 2900
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 1 1 6154F116
P 2550 1900
F 0 "U1" H 2550 2267 50  0000 C CNN
F 1 "LMH6643" H 2550 2176 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2550 1900 50  0001 C CNN
F 3 "~" H 2550 1900 50  0001 C CNN
	1    2550 1900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 2 1 6154F117
P 3800 2900
F 0 "U1" H 3800 3267 50  0000 C CNN
F 1 "LMH6643" H 3800 3176 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3800 2900 50  0001 C CNN
F 3 "~" H 3800 2900 50  0001 C CNN
	2    3800 2900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R13
U 1 1 6154F118
P 3250 3000
AR Path="/6154F118" Ref="R13"  Part="1" 
AR Path="/5FED65BF/6154F118" Ref="R?"  Part="1" 
F 0 "R13" V 3043 3000 50  0000 C CNN
F 1 "75" V 3134 3000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3180 3000 50  0001 C CNN
F 3 "~" H 3250 3000 50  0001 C CNN
	1    3250 3000
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R14
U 1 1 6154F119
P 3700 3350
AR Path="/6154F119" Ref="R14"  Part="1" 
AR Path="/5FED65BF/6154F119" Ref="R?"  Part="1" 
F 0 "R14" V 3493 3350 50  0000 C CNN
F 1 "75" V 3584 3350 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3630 3350 50  0001 C CNN
F 3 "~" H 3700 3350 50  0001 C CNN
	1    3700 3350
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:D D4
U 1 1 5FF1B317
P 2800 2500
F 0 "D4" H 2800 2283 50  0000 C CNN
F 1 "BAT54" H 2800 2374 50  0000 C CNN
F 2 "synkie_footprints:D_SOT-23_ANK" H 2800 2500 50  0001 C CNN
F 3 "~" H 2800 2500 50  0001 C CNN
	1    2800 2500
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R9
U 1 1 6154F11B
P 2400 2500
AR Path="/6154F11B" Ref="R9"  Part="1" 
AR Path="/5FED65BF/6154F11B" Ref="R?"  Part="1" 
F 0 "R9" V 2193 2500 50  0000 C CNN
F 1 "75" V 2284 2500 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 2500 50  0001 C CNN
F 3 "~" H 2400 2500 50  0001 C CNN
	1    2400 2500
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:D D3
U 1 1 5FF3D57A
P 2550 2250
F 0 "D3" H 2550 2467 50  0000 C CNN
F 1 "BAT54" H 2550 2376 50  0000 C CNN
F 2 "synkie_footprints:D_SOT-23_ANK" H 2550 2250 50  0001 C CNN
F 3 "~" H 2550 2250 50  0001 C CNN
	1    2550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2900 4150 2900
Wire Wire Line
	3850 3350 4150 3350
Wire Wire Line
	4150 3350 4150 2900
Connection ~ 4150 2900
Wire Wire Line
	4150 2900 4200 2900
Wire Wire Line
	3400 3000 3450 3000
Wire Wire Line
	3450 3000 3450 3350
Wire Wire Line
	3450 3350 3550 3350
Connection ~ 3450 3000
Wire Wire Line
	3450 3000 3500 3000
Wire Wire Line
	2200 1800 2250 1800
Wire Wire Line
	2150 2000 2200 2000
Wire Wire Line
	2400 2250 2200 2250
Wire Wire Line
	2200 2250 2200 2000
Connection ~ 2200 2000
Wire Wire Line
	2200 2000 2250 2000
Wire Wire Line
	2700 2250 3000 2250
Wire Wire Line
	3000 2250 3000 1900
Wire Wire Line
	3000 1900 2850 1900
Wire Wire Line
	2950 2500 3000 2500
Wire Wire Line
	3000 2500 3000 2250
Connection ~ 3000 2250
Wire Wire Line
	2250 2500 2200 2500
Wire Wire Line
	2200 2500 2200 2250
Connection ~ 2200 2250
Wire Wire Line
	2550 2500 2600 2500
Wire Wire Line
	2600 3000 3100 3000
Connection ~ 2600 2500
Wire Wire Line
	2600 2500 2650 2500
Wire Wire Line
	3500 2800 3250 2800
Wire Notes Line
	1100 850  6050 850 
Wire Notes Line
	1100 3700 6050 3700
Wire Wire Line
	4700 1900 4700 2900
$Comp
L synkie_symbols:C_Small C4
U 1 1 6005F63E
P 2800 2850
F 0 "C4" V 2571 2850 50  0000 C CNN
F 1 "1n" V 2662 2850 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2800 2850 50  0001 C CNN
F 3 "~" H 2800 2850 50  0001 C CNN
	1    2800 2850
	0    1    1    0   
$EndComp
Connection ~ 3000 2500
Wire Wire Line
	2200 1500 2200 1800
Wire Wire Line
	2200 1500 3250 1500
Wire Wire Line
	3250 1500 3250 2800
Connection ~ 2200 1500
Wire Wire Line
	2600 2500 2600 2850
Wire Wire Line
	3000 2850 2900 2850
Wire Wire Line
	3000 2500 3000 2850
Wire Wire Line
	2700 2850 2600 2850
Connection ~ 2600 2850
Wire Wire Line
	2600 2850 2600 3000
$Comp
L synkie_symbols:R R8
U 1 1 6154F11D
P 10000 2350
AR Path="/6154F11D" Ref="R8"  Part="1" 
AR Path="/5FED65BF/6154F11D" Ref="R?"  Part="1" 
F 0 "R8" V 10100 2350 50  0000 C CNN
F 1 "75" V 9900 2350 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9930 2350 50  0001 C CNN
F 3 "~" H 10000 2350 50  0001 C CNN
	1    10000 2350
	0    -1   -1   0   
$EndComp
Connection ~ 9850 2350
$Comp
L synkie_symbols:C_Small C6
U 1 1 6154F120
P 9050 2950
AR Path="/6154F120" Ref="C6"  Part="1" 
AR Path="/5FED65BF/6154F120" Ref="C?"  Part="1" 
F 0 "C6" H 8750 2950 50  0000 L CNN
F 1 "10p" H 8800 2850 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9088 2800 50  0001 C CNN
F 3 "~" H 9050 2950 50  0001 C CNN
	1    9050 2950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR020
U 1 1 60037792
P 9050 3050
AR Path="/60037792" Ref="#PWR020"  Part="1" 
AR Path="/5FED65BF/60037792" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 9050 2800 50  0001 C CNN
F 1 "GND" H 9055 2877 50  0000 C CNN
F 2 "" H 9050 3050 50  0001 C CNN
F 3 "" H 9050 3050 50  0001 C CNN
	1    9050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2750 9050 2750
Wire Wire Line
	9050 2750 9050 2850
$Comp
L Anyma_Library:LOGO U5
U 1 1 6154F126
P 6500 7350
F 0 "U5" H 6578 7471 50  0000 L CNN
F 1 "LOGO" H 6578 7380 50  0000 L CNN
F 2 "anyma_footprints:logo_anyma" H 6500 7350 50  0001 C CNN
F 3 "" H 6500 7350 50  0001 C CNN
	1    6500 7350
	1    0    0    -1  
$EndComp
$Comp
L Anyma_Library:LOGO U6
U 1 1 6154F127
P 6500 7600
F 0 "U6" H 6578 7721 50  0000 L CNN
F 1 "LOGO" H 6578 7630 50  0000 L CNN
F 2 "Symbol:OSHW-Logo2_9.8x8mm_SilkScreen" H 6500 7600 50  0001 C CNN
F 3 "" H 6500 7600 50  0001 C CNN
	1    6500 7600
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR07
U 1 1 6154F123
P 1850 1500
AR Path="/6154F123" Ref="#PWR07"  Part="1" 
AR Path="/5FED65BF/6154F123" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 1850 1250 50  0001 C CNN
F 1 "GND" H 1855 1327 50  0000 C CNN
F 2 "" H 1850 1500 50  0001 C CNN
F 3 "" H 1850 1500 50  0001 C CNN
	1    1850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1500 2200 1500
$Comp
L synkie_symbols:Opamp_Dual_Generic U4
U 2 1 5CEFE5D2
P 3750 4750
F 0 "U4" H 3750 5117 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 3750 5026 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3750 4750 50  0001 C CNN
F 3 "~" H 3750 4750 50  0001 C CNN
	2    3750 4750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U4
U 1 1 5CEFF9E5
P 3700 6650
F 0 "U4" H 3700 7017 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 3700 6926 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3700 6650 50  0001 C CNN
F 3 "~" H 3700 6650 50  0001 C CNN
	1    3700 6650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U4
U 3 1 5CF016E8
P 5450 5200
F 0 "U4" H 5408 5246 50  0000 L CNN
F 1 "Opamp_Dual_Generic" H 5408 5155 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5450 5200 50  0001 C CNN
F 3 "~" H 5450 5200 50  0001 C CNN
	3    5450 5200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R15
U 1 1 5CF0371B
P 3050 5400
F 0 "R15" V 2843 5400 50  0000 C CNN
F 1 "220" V 2934 5400 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2980 5400 50  0001 C CNN
F 3 "~" H 3050 5400 50  0001 C CNN
	1    3050 5400
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R16
U 1 1 5CF077C1
P 3700 5400
F 0 "R16" V 3493 5400 50  0000 C CNN
F 1 "220" V 3584 5400 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3630 5400 50  0001 C CNN
F 3 "~" H 3700 5400 50  0001 C CNN
	1    3700 5400
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R17
U 1 1 5CF07F29
P 3050 7350
F 0 "R17" V 2843 7350 50  0000 C CNN
F 1 "220" V 2934 7350 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2980 7350 50  0001 C CNN
F 3 "~" H 3050 7350 50  0001 C CNN
	1    3050 7350
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R18
U 1 1 5CF09288
P 3600 7350
F 0 "R18" V 3393 7350 50  0000 C CNN
F 1 "220" V 3484 7350 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3530 7350 50  0001 C CNN
F 3 "~" H 3600 7350 50  0001 C CNN
	1    3600 7350
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C10
U 1 1 5CF09A6F
P 3100 4900
F 0 "C10" H 3215 4946 50  0000 L CNN
F 1 "10p" H 3215 4855 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3138 4750 50  0001 C CNN
F 3 "~" H 3100 4900 50  0001 C CNN
	1    3100 4900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C15
U 1 1 5CF0BC3B
P 3100 6850
F 0 "C15" H 3215 6896 50  0000 L CNN
F 1 "10p" H 3215 6805 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3138 6700 50  0001 C CNN
F 3 "~" H 3100 6850 50  0001 C CNN
	1    3100 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5CF13127
P 3100 5050
F 0 "#PWR032" H 3100 4800 50  0001 C CNN
F 1 "GND" H 3105 4877 50  0000 C CNN
F 2 "" H 3100 5050 50  0001 C CNN
F 3 "" H 3100 5050 50  0001 C CNN
	1    3100 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5CF13ABB
P 3100 7000
F 0 "#PWR040" H 3100 6750 50  0001 C CNN
F 1 "GND" H 3105 6827 50  0000 C CNN
F 2 "" H 3100 7000 50  0001 C CNN
F 3 "" H 3100 7000 50  0001 C CNN
	1    3100 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR030
U 1 1 5CF16C13
P 5350 4750
F 0 "#PWR030" H 5350 4600 50  0001 C CNN
F 1 "+5V" H 5365 4923 50  0000 C CNN
F 2 "" H 5350 4750 50  0001 C CNN
F 3 "" H 5350 4750 50  0001 C CNN
	1    5350 4750
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR035
U 1 1 5CF17585
P 5350 5700
F 0 "#PWR035" H 5350 5800 50  0001 C CNN
F 1 "-5V" H 5365 5873 50  0000 C CNN
F 2 "" H 5350 5700 50  0001 C CNN
F 3 "" H 5350 5700 50  0001 C CNN
	1    5350 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 4750 5350 4900
$Comp
L power:GND #PWR034
U 1 1 5CF1D48A
P 5050 5700
F 0 "#PWR034" H 5050 5450 50  0001 C CNN
F 1 "GND" H 5055 5527 50  0000 C CNN
F 2 "" H 5050 5700 50  0001 C CNN
F 3 "" H 5050 5700 50  0001 C CNN
	1    5050 5700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C11
U 1 1 5CF1DF6E
P 5200 4900
F 0 "C11" V 4948 4900 50  0000 C CNN
F 1 "100n" V 5039 4900 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5238 4750 50  0001 C CNN
F 3 "~" H 5200 4900 50  0001 C CNN
	1    5200 4900
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C12
U 1 1 5CF1EF18
P 5200 5550
F 0 "C12" V 4948 5550 50  0000 C CNN
F 1 "100n" V 5039 5550 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5238 5400 50  0001 C CNN
F 3 "~" H 5200 5550 50  0001 C CNN
	1    5200 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 4750 4100 4750
Wire Wire Line
	3450 4650 3100 4650
Connection ~ 3100 4650
Wire Wire Line
	3850 5400 4100 5400
Wire Wire Line
	4100 5400 4100 4750
Connection ~ 4100 4750
Wire Wire Line
	4100 4750 4250 4750
Wire Wire Line
	3450 4850 3450 5400
Wire Wire Line
	3200 5400 3450 5400
Connection ~ 3450 5400
Wire Wire Line
	3450 5400 3550 5400
Wire Wire Line
	4000 6650 4050 6650
Wire Wire Line
	3400 6550 3250 6550
Wire Wire Line
	3200 7350 3400 7350
Wire Wire Line
	3750 7350 4050 7350
Wire Wire Line
	4050 7350 4050 6650
Connection ~ 4050 6650
Wire Wire Line
	3400 6750 3400 7350
Connection ~ 3400 7350
Wire Wire Line
	3400 7350 3450 7350
Wire Wire Line
	5350 5500 5350 5550
Wire Wire Line
	5050 4900 5050 5550
Wire Wire Line
	3100 4650 3100 4800
Wire Wire Line
	3100 5000 3100 5050
Wire Wire Line
	5050 4900 5100 4900
Wire Wire Line
	5300 4900 5350 4900
Connection ~ 5350 4900
Wire Wire Line
	5100 5550 5050 5550
Connection ~ 5050 5550
Wire Wire Line
	5050 5550 5050 5700
Wire Wire Line
	5300 5550 5350 5550
Connection ~ 5350 5550
Wire Wire Line
	5350 5550 5350 5700
Wire Wire Line
	3100 6550 3100 6750
Wire Wire Line
	3100 6950 3100 7000
$Comp
L Device:R_POT_Dual RV1
U 1 1 5DD36098
P 2850 5850
F 0 "RV1" V 2896 5662 50  0000 R CNN
F 1 "R_POT_Dual" V 2805 5662 50  0000 R CNN
F 2 "synkie_footprints:RK12L123" H 3100 5775 50  0001 C CNN
F 3 "~" H 3100 5775 50  0001 C CNN
	1    2850 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5400 2900 5400
Wire Wire Line
	2600 5750 2600 5650
Wire Wire Line
	2600 5650 2400 5650
Wire Wire Line
	2400 5650 2400 5950
Wire Wire Line
	2400 5950 2450 5950
Wire Wire Line
	2400 5400 2400 5650
Connection ~ 2400 5650
Wire Wire Line
	2750 5950 2750 4650
Wire Wire Line
	2750 4650 3100 4650
Wire Wire Line
	4250 4750 4250 6100
Wire Wire Line
	4250 6100 2950 6100
Wire Wire Line
	2950 6100 2950 5950
Wire Wire Line
	2950 5950 2950 5750
Wire Wire Line
	2950 5750 3100 5750
Connection ~ 2950 5950
Wire Wire Line
	3250 5950 3250 6550
Connection ~ 3250 6550
Wire Wire Line
	3250 6550 3100 6550
Wire Wire Line
	2950 6100 2700 6100
Wire Wire Line
	2700 6100 2700 7350
Connection ~ 2950 6100
Wire Wire Line
	2700 7350 2900 7350
$Comp
L power:GND #PWR031
U 1 1 5DD60488
P 1600 4850
F 0 "#PWR031" H 1600 4600 50  0001 C CNN
F 1 "GND" H 1605 4677 50  0000 C CNN
F 2 "" H 1600 4850 50  0001 C CNN
F 3 "" H 1600 4850 50  0001 C CNN
	1    1600 4850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:UMCC J4
U 1 1 615DC29A
P 1600 4650
F 0 "J4" H 1842 4937 60  0000 C CNN
F 1 "Burst-Thru" H 1842 4831 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 2000 4490 60  0001 C CNN
F 3 "" H 1600 4650 60  0000 C CNN
	1    1600 4650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 615E0175
P 1600 4750
F 0 "#PWR029" H 1600 4500 50  0001 C CNN
F 1 "GND" H 1605 4577 50  0000 C CNN
F 2 "" H 1600 4750 50  0001 C CNN
F 3 "" H 1600 4750 50  0001 C CNN
	1    1600 4750
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 615ED2CD
P 8350 6150
F 0 "H3" H 8450 6199 50  0000 L CNN
F 1 "MountingHole_Pad" H 8450 6108 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 8350 6150 50  0001 C CNN
F 3 "~" H 8350 6150 50  0001 C CNN
	1    8350 6150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 615ED43C
P 7900 6150
F 0 "H2" H 8000 6199 50  0000 L CNN
F 1 "MountingHole_Pad" H 8000 6108 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 7900 6150 50  0001 C CNN
F 3 "~" H 7900 6150 50  0001 C CNN
	1    7900 6150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 615ED6A2
P 7450 6150
F 0 "H1" H 7550 6199 50  0000 L CNN
F 1 "MountingHole_Pad" H 7550 6108 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 7450 6150 50  0001 C CNN
F 3 "~" H 7450 6150 50  0001 C CNN
	1    7450 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 615EDEB7
P 8350 6250
F 0 "#PWR043" H 8350 6000 50  0001 C CNN
F 1 "GND" H 8355 6077 50  0000 C CNN
F 2 "" H 8350 6250 50  0001 C CNN
F 3 "" H 8350 6250 50  0001 C CNN
	1    8350 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 615EE23B
P 7900 6250
F 0 "#PWR042" H 7900 6000 50  0001 C CNN
F 1 "GND" H 7905 6077 50  0000 C CNN
F 2 "" H 7900 6250 50  0001 C CNN
F 3 "" H 7900 6250 50  0001 C CNN
	1    7900 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 615EE559
P 7450 6250
F 0 "#PWR041" H 7450 6000 50  0001 C CNN
F 1 "GND" H 7455 6077 50  0000 C CNN
F 2 "" H 7450 6250 50  0001 C CNN
F 3 "" H 7450 6250 50  0001 C CNN
	1    7450 6250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R4
U 1 1 61633178
P 1100 2000
AR Path="/61633178" Ref="R4"  Part="1" 
AR Path="/5FED65BF/61633178" Ref="R?"  Part="1" 
F 0 "R4" V 893 2000 50  0000 C CNN
F 1 "75" V 984 2000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1030 2000 50  0001 C CNN
F 3 "~" H 1100 2000 50  0001 C CNN
	1    1100 2000
	0    1    1    0   
$EndComp
$Comp
L Diode:BAT54S D2
U 1 1 6163445C
P 1500 2000
F 0 "D2" V 1600 1800 50  0000 L CNN
F 1 "BAT54S" V 1400 1700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1575 2125 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 1380 2000 50  0001 C CNN
	1    1500 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 2000 1850 2000
Wire Wire Line
	1700 2000 1300 2000
Connection ~ 1700 2000
$Comp
L synkie_symbols:+5V #PWR09
U 1 1 61644AF7
P 1500 1700
AR Path="/61644AF7" Ref="#PWR09"  Part="1" 
AR Path="/5FED65BF/61644AF7" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 1500 1550 50  0001 C CNN
F 1 "+5V" H 1500 1850 50  0000 C CNN
F 2 "" H 1500 1700 50  0001 C CNN
F 3 "" H 1500 1700 50  0001 C CNN
	1    1500 1700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR014
U 1 1 61645054
P 1500 2300
AR Path="/61645054" Ref="#PWR014"  Part="1" 
AR Path="/5FED65BF/61645054" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 1500 2400 50  0001 C CNN
F 1 "-5V" H 1500 2450 50  0000 C CNN
F 2 "" H 1500 2300 50  0001 C CNN
F 3 "" H 1500 2300 50  0001 C CNN
	1    1500 2300
	-1   0    0    1   
$EndComp
Text Label 4400 6650 0    50   ~ 0
local_delayed_burst
Wire Wire Line
	1500 6750 1500 6950
Wire Wire Line
	1500 6650 1500 6750
Connection ~ 1500 6750
$Comp
L synkie_symbols:UMCC J9
U 1 1 5FF4409A
P 1500 6550
F 0 "J9" H 2028 6503 60  0000 L CNN
F 1 "Delayed_burst_in" H 2028 6397 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 1900 6390 60  0001 C CNN
F 3 "" H 1500 6550 60  0000 C CNN
	1    1500 6550
	1    0    0    -1  
$EndComp
Text Label 1500 6550 2    50   ~ 0
pre_delayed_burst
$Comp
L synkie_symbols:+5V #PWR01
U 1 1 6154F112
P 11000 850
AR Path="/6154F112" Ref="#PWR01"  Part="1" 
AR Path="/5FED65BF/6154F112" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 11000 700 50  0001 C CNN
F 1 "+5V" H 11000 1000 50  0000 C CNN
F 2 "" H 11000 850 50  0001 C CNN
F 3 "" H 11000 850 50  0001 C CNN
	1    11000 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 850  10900 850 
Connection ~ 11000 850 
Wire Wire Line
	8650 1950 8650 1050
Wire Wire Line
	8650 1050 7100 1050
Wire Wire Line
	7100 1050 7100 1650
Wire Wire Line
	7100 1650 7400 1650
Wire Wire Line
	8400 1650 8400 1100
Wire Wire Line
	8400 1100 6700 1100
Wire Wire Line
	6700 1100 6700 2350
Text Label 7400 2050 2    50   ~ 0
pre_delayed_burst
Text Label 7400 1950 2    50   ~ 0
local_delayed_burst
Text Label 7400 2750 2    50   ~ 0
burst_select
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 6175CDB3
P 8100 5150
F 0 "J6" H 8180 5142 50  0000 L CNN
F 1 "SYNC" H 8180 5051 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 8100 5150 50  0001 C CNN
F 3 "~" H 8100 5150 50  0001 C CNN
	1    8100 5150
	1    0    0    -1  
$EndComp
Text GLabel 7900 5050 0    50   Input ~ 0
hsync
Text GLabel 7900 5250 0    50   Input ~ 0
porch
$Comp
L Switch:SW_SPDT SW1
U 1 1 61766636
P 7950 4300
F 0 "SW1" H 7950 4585 50  0000 C CNN
F 1 "SW_SPDT" H 7950 4494 50  0000 C CNN
F 2 "synkie_footprints:PinHeader_1x03_P2.54mm_Vertical" H 7950 4300 50  0001 C CNN
F 3 "~" H 7950 4300 50  0001 C CNN
	1    7950 4300
	1    0    0    -1  
$EndComp
Text Label 7750 4300 2    50   ~ 0
burst_select
$Comp
L synkie_symbols:GND #PWR0101
U 1 1 61767269
P 8150 4400
F 0 "#PWR0101" H 8150 4150 50  0001 C CNN
F 1 "GND" H 8155 4227 50  0000 C CNN
F 2 "" H 8150 4400 50  0001 C CNN
F 3 "" H 8150 4400 50  0001 C CNN
	1    8150 4400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0102
U 1 1 61767A96
P 8150 4200
AR Path="/61767A96" Ref="#PWR0102"  Part="1" 
AR Path="/5FED65BF/61767A96" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 8150 4050 50  0001 C CNN
F 1 "+5V" H 8150 4350 50  0000 C CNN
F 2 "" H 8150 4200 50  0001 C CNN
F 3 "" H 8150 4200 50  0001 C CNN
	1    8150 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J10
U 1 1 617688D8
P 8950 5150
F 0 "J10" H 9030 5142 50  0000 L CNN
F 1 "SYNC" H 9030 5051 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 8950 5150 50  0001 C CNN
F 3 "~" H 8950 5150 50  0001 C CNN
	1    8950 5150
	1    0    0    -1  
$EndComp
Text GLabel 8750 5050 0    50   Input ~ 0
hsync
Text GLabel 8750 5250 0    50   Input ~ 0
porch
$Comp
L synkie_symbols:Conn_01x03 J11
U 1 1 6176EB71
P 9600 5750
F 0 "J11" H 9518 5425 50  0000 C CNN
F 1 "Power" H 9518 5516 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 9600 5750 50  0001 C CNN
F 3 "~" H 9600 5750 50  0001 C CNN
	1    9600 5750
	-1   0    0    -1  
$EndComp
Text Label 9800 5850 3    50   ~ 0
supply-
Text Label 9800 5650 1    50   ~ 0
supply+
$Comp
L synkie_symbols:GND #PWR0103
U 1 1 61770190
P 9800 5750
F 0 "#PWR0103" H 9800 5500 50  0001 C CNN
F 1 "GND" H 9805 5577 50  0000 C CNN
F 2 "" H 9800 5750 50  0001 C CNN
F 3 "" H 9800 5750 50  0001 C CNN
	1    9800 5750
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 61780095
P 750 2000
F 0 "J1" H 668 1775 50  0000 C CNN
F 1 "IN" H 668 1866 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 750 2000 50  0001 C CNN
F 3 "~" H 750 2000 50  0001 C CNN
	1    750  2000
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 61780E02
P 10350 2350
F 0 "J2" H 10430 2392 50  0000 L CNN
F 1 "OUT" H 10430 2301 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 10350 2350 50  0001 C CNN
F 3 "~" H 10350 2350 50  0001 C CNN
	1    10350 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6650 4400 6650
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 617CDBFA
P 10000 4100
F 0 "J3" H 10080 4142 50  0000 L CNN
F 1 "5V" H 10080 4051 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 10000 4100 50  0001 C CNN
F 3 "~" H 10000 4100 50  0001 C CNN
	1    10000 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 617CEC9A
P 10000 4350
F 0 "J8" H 10080 4392 50  0000 L CNN
F 1 "gnd" H 10080 4301 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 10000 4350 50  0001 C CNN
F 3 "~" H 10000 4350 50  0001 C CNN
	1    10000 4350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0105
U 1 1 617CEF02
P 9800 4350
F 0 "#PWR0105" H 9800 4100 50  0001 C CNN
F 1 "GND" H 9805 4177 50  0000 C CNN
F 2 "" H 9800 4350 50  0001 C CNN
F 3 "" H 9800 4350 50  0001 C CNN
	1    9800 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6155A616
P 1500 6950
F 0 "#PWR0106" H 1500 6700 50  0001 C CNN
F 1 "GND" H 1505 6777 50  0000 C CNN
F 2 "" H 1500 6950 50  0001 C CNN
F 3 "" H 1500 6950 50  0001 C CNN
	1    1500 6950
	1    0    0    -1  
$EndComp
Text Label 9800 4100 1    50   ~ 0
supply+
Text Label 1600 4650 0    50   ~ 0
pre_delayed_burst
Text Label 2400 5650 2    50   ~ 0
pre_delayed_burst
Text Notes 650  1350 0    50   ~ 0
Shouldn’t we reduce gain by 0.7 before clipping???
$Comp
L synkie_symbols:R R19
U 1 1 615571A1
P 1300 2150
AR Path="/615571A1" Ref="R19"  Part="1" 
AR Path="/5FED65BF/615571A1" Ref="R?"  Part="1" 
F 0 "R19" V 1300 2150 50  0000 C CNN
F 1 "(180?)" V 1400 2200 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 2150 50  0001 C CNN
F 3 "~" H 1300 2150 50  0001 C CNN
	1    1300 2150
	-1   0    0    1   
$EndComp
Connection ~ 1300 2000
Wire Wire Line
	1300 2000 1250 2000
$Comp
L synkie_symbols:GND #PWR0104
U 1 1 615580B0
P 1300 2300
AR Path="/615580B0" Ref="#PWR0104"  Part="1" 
AR Path="/5FED65BF/615580B0" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 1300 2050 50  0001 C CNN
F 1 "GND" H 1305 2127 50  0001 C CNN
F 2 "" H 1300 2300 50  0001 C CNN
F 3 "" H 1300 2300 50  0001 C CNN
	1    1300 2300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
