EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L Connector:Conn_01x01_Female J104
U 1 1 5F79495D
P 1050 6000
F 0 "J104" H 1078 6026 50  0000 L CNN
F 1 "gnd" H 1078 5935 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 1050 6000 50  0001 C CNN
F 3 "~" H 1050 6000 50  0001 C CNN
	1    1050 6000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0111
U 1 1 5F795277
P 850 6000
F 0 "#PWR0111" H 850 5750 50  0001 C CNN
F 1 "GND" H 855 5827 50  0000 C CNN
F 2 "" H 850 6000 50  0001 C CNN
F 3 "" H 850 6000 50  0001 C CNN
	1    850  6000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x03 J103
U 1 1 5DCAB59D
P 1500 5050
F 0 "J103" H 1418 4725 50  0000 C CNN
F 1 "Power" H 1418 4816 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 1500 5050 50  0001 C CNN
F 3 "~" H 1500 5050 50  0001 C CNN
	1    1500 5050
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0101
U 1 1 5DCB58DB
P 2100 4600
F 0 "#PWR0101" H 2100 4450 50  0001 C CNN
F 1 "+5V" H 2100 4750 50  0000 C CNN
F 2 "" H 2100 4600 50  0001 C CNN
F 3 "" H 2100 4600 50  0001 C CNN
	1    2100 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2100 4600 2100 4950
Connection ~ 2100 4950
Connection ~ 2100 5150
Wire Wire Line
	2100 5450 2100 5150
Wire Wire Line
	2300 5050 2400 5050
$Comp
L synkie_symbols:-5V #PWR0105
U 1 1 5DCB6075
P 2100 5450
F 0 "#PWR0105" H 2100 5550 50  0001 C CNN
F 1 "-5V" H 2100 5600 50  0000 C CNN
F 2 "" H 2100 5450 50  0001 C CNN
F 3 "" H 2100 5450 50  0001 C CNN
	1    2100 5450
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0103
U 1 1 5DCB53A6
P 2400 5050
F 0 "#PWR0103" H 2400 4800 50  0001 C CNN
F 1 "GND" H 2405 4877 50  0000 C CNN
F 2 "" H 2400 5050 50  0001 C CNN
F 3 "" H 2400 5050 50  0001 C CNN
	1    2400 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 5050 2300 5150
Connection ~ 2300 5050
Wire Wire Line
	2300 4950 2300 5050
$Comp
L synkie_symbols:CP_Small C102
U 1 1 5DCB0A0D
P 2200 5150
F 0 "C102" V 2050 5150 50  0000 C CNN
F 1 "10u" V 1950 5150 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2200 5150 50  0001 C CNN
F 3 "~" H 2200 5150 50  0001 C CNN
	1    2200 5150
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB101
U 1 1 5DCAC6DA
P 1950 4950
F 0 "FB101" V 1676 4950 50  0000 C CNN
F 1 "330u" V 1767 4950 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1880 4950 50  0001 C CNN
F 3 "~" H 1950 4950 50  0001 C CNN
	1    1950 4950
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB102
U 1 1 5DCAD10D
P 1950 5150
F 0 "FB102" V 2100 5150 50  0000 C CNN
F 1 "330u" V 2200 5150 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1880 5150 50  0001 C CNN
F 3 "~" H 1950 5150 50  0001 C CNN
	1    1950 5150
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C101
U 1 1 5DCABC45
P 2200 4950
F 0 "C101" V 1975 4950 50  0000 C CNN
F 1 "10u" V 2066 4950 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2200 4950 50  0001 C CNN
F 3 "~" H 2200 4950 50  0001 C CNN
	1    2200 4950
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J105
U 1 1 5FA506A0
P 950 2800
F 0 "J105" H 1030 2792 50  0000 L CNN
F 1 "SYNC-BUS" H 1030 2701 50  0000 L CNN
F 2 "synkie_footprints:IDC-Header_2x05_P2.54mm_Vertical" H 950 2800 50  0001 C CNN
F 3 "~" H 950 2800 50  0001 C CNN
	1    950  2800
	-1   0    0    -1  
$EndComp
Text GLabel 1150 2500 2    50   Input ~ 0
hsync
Text GLabel 1150 2700 2    50   Input ~ 0
porch
Text GLabel 1150 3200 2    50   Input ~ 0
vsync
Text Label 1800 4950 1    50   ~ 0
supply+
Text Label 1800 5150 3    50   ~ 0
supply-
Wire Wire Line
	1700 4950 1800 4950
Wire Wire Line
	1700 5150 1800 5150
$Comp
L synkie_symbols:R R109
U 1 1 5FFD7BB1
P 5050 2600
AR Path="/5FFD7BB1" Ref="R109"  Part="1" 
AR Path="/5FD30D96/5FFD7BB1" Ref="R408"  Part="1" 
F 0 "R109" V 5150 2650 50  0000 C CNN
F 1 "5.1k" V 5050 2600 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 2600 50  0001 C CNN
F 3 "~" H 5050 2600 50  0001 C CNN
	1    5050 2600
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:R R113
U 1 1 5FFD7BB2
P 6550 3050
AR Path="/5FFD7BB2" Ref="R113"  Part="1" 
AR Path="/5FD30D96/5FFD7BB2" Ref="R411"  Part="1" 
F 0 "R113" V 6650 3050 50  0000 C CNN
F 1 "3k3" V 6550 3050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 3050 50  0001 C CNN
F 3 "~" H 6550 3050 50  0001 C CNN
	1    6550 3050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R112
U 1 1 5FD5CA83
P 6200 3000
AR Path="/5FD5CA83" Ref="R112"  Part="1" 
AR Path="/5FD30D96/5FD5CA83" Ref="R410"  Part="1" 
F 0 "R112" V 6300 3000 50  0000 C CNN
F 1 "5k" V 6100 3000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 3000 50  0001 C CNN
F 3 "~" H 6200 3000 50  0001 C CNN
	1    6200 3000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R103
U 1 1 5FFD7BB4
P 6200 2400
AR Path="/5FFD7BB4" Ref="R103"  Part="1" 
AR Path="/5FD30D96/5FFD7BB4" Ref="R403"  Part="1" 
F 0 "R103" V 6300 2400 50  0000 C CNN
F 1 "5k" V 6200 2400 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 2400 50  0001 C CNN
F 3 "~" H 6200 2400 50  0001 C CNN
	1    6200 2400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0102
U 1 1 5FD5CA8F
P 6550 3200
AR Path="/5FD5CA8F" Ref="#PWR0102"  Part="1" 
AR Path="/5FD30D96/5FD5CA8F" Ref="#PWR0409"  Part="1" 
F 0 "#PWR0102" H 6550 3300 50  0001 C CNN
F 1 "-5V" H 6565 3373 50  0000 C CNN
F 2 "" H 6550 3200 50  0001 C CNN
F 3 "" H 6550 3200 50  0001 C CNN
	1    6550 3200
	1    0    0    1   
$EndComp
Connection ~ 6550 3200
$Comp
L synkie_symbols:GND #PWR0104
U 1 1 5FD5CA9A
P 6400 2300
AR Path="/5FD5CA9A" Ref="#PWR0104"  Part="1" 
AR Path="/5FD30D96/5FD5CA9A" Ref="#PWR0403"  Part="1" 
F 0 "#PWR0104" H 6400 2050 50  0001 C CNN
F 1 "GND" H 6405 2127 50  0000 C CNN
F 2 "" H 6400 2300 50  0001 C CNN
F 3 "" H 6400 2300 50  0001 C CNN
	1    6400 2300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Trans_PNP_Generic Q101
U 1 1 5FD5CAA1
P 6500 2100
AR Path="/5FD5CAA1" Ref="Q101"  Part="1" 
AR Path="/5FD30D96/5FD5CAA1" Ref="Q401"  Part="1" 
F 0 "Q101" H 6638 2146 50  0000 L CNN
F 1 "PNP" H 6638 2055 50  0000 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 6500 2100 50  0001 C CNN
F 3 "" H 6500 2100 50  0001 C CNN
	1    6500 2100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0106
U 1 1 5FD5CAA8
P 6550 1550
AR Path="/5FD5CAA8" Ref="#PWR0106"  Part="1" 
AR Path="/5FD30D96/5FD5CAA8" Ref="#PWR0401"  Part="1" 
F 0 "#PWR0106" H 6550 1400 50  0001 C CNN
F 1 "+5V" H 6565 1723 50  0000 C CNN
F 2 "" H 6550 1550 50  0001 C CNN
F 3 "" H 6550 1550 50  0001 C CNN
	1    6550 1550
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U101
U 2 1 5FD5CAAE
P 5950 2100
AR Path="/5FD5CAAE" Ref="U101"  Part="2" 
AR Path="/5FD30D96/5FD5CAAE" Ref="U401"  Part="2" 
F 0 "U101" H 5900 2350 50  0000 C CNN
F 1 "LMH6643" H 5900 2450 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5950 2100 50  0001 C CNN
F 3 "~" H 5950 2100 50  0001 C CNN
	2    5950 2100
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:R R101
U 1 1 5FD5CAB4
P 5900 1750
AR Path="/5FD5CAB4" Ref="R101"  Part="1" 
AR Path="/5FD30D96/5FD5CAB4" Ref="R401"  Part="1" 
F 0 "R101" V 6000 1750 50  0000 C CNN
F 1 "10k" V 5900 1750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5830 1750 50  0001 C CNN
F 3 "~" H 5900 1750 50  0001 C CNN
	1    5900 1750
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0107
U 1 1 5FD5CABA
P 5550 2250
AR Path="/5FD5CABA" Ref="#PWR0107"  Part="1" 
AR Path="/5FD30D96/5FD5CABA" Ref="#PWR0405"  Part="1" 
F 0 "#PWR0107" H 5550 2000 50  0001 C CNN
F 1 "GND" H 5555 2077 50  0000 C CNN
F 2 "" H 5550 2250 50  0001 C CNN
F 3 "" H 5550 2250 50  0001 C CNN
	1    5550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2250 5550 2200
Wire Wire Line
	5550 2200 5650 2200
Wire Wire Line
	6050 1750 6250 1750
Wire Wire Line
	6250 2100 6350 2100
Wire Wire Line
	5350 2000 5650 2000
$Comp
L synkie_symbols:-5V #PWR0108
U 1 1 5FD5CAC5
P 5350 2900
AR Path="/5FD5CAC5" Ref="#PWR0108"  Part="1" 
AR Path="/5FD30D96/5FD5CAC5" Ref="#PWR0408"  Part="1" 
F 0 "#PWR0108" H 5350 3000 50  0001 C CNN
F 1 "-5V" H 5365 3073 50  0000 C CNN
F 2 "" H 5350 2900 50  0001 C CNN
F 3 "" H 5350 2900 50  0001 C CNN
	1    5350 2900
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:R R111
U 1 1 5FD5CACB
P 5350 2750
AR Path="/5FD5CACB" Ref="R111"  Part="1" 
AR Path="/5FD30D96/5FD5CACB" Ref="R409"  Part="1" 
F 0 "R111" V 5450 2750 50  0000 C CNN
F 1 "15k" V 5350 2750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5280 2750 50  0001 C CNN
F 3 "~" H 5350 2750 50  0001 C CNN
	1    5350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2000 5350 2600
$Comp
L synkie_symbols:R R102
U 1 1 5FD5CAD2
P 6550 1750
AR Path="/5FD5CAD2" Ref="R102"  Part="1" 
AR Path="/5FD30D96/5FD5CAD2" Ref="R402"  Part="1" 
F 0 "R102" V 6450 1750 50  0000 C CNN
F 1 "3k3" V 6550 1750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 1750 50  0001 C CNN
F 3 "~" H 6550 1750 50  0001 C CNN
	1    6550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2600 5350 2600
Connection ~ 5350 2600
Wire Wire Line
	6550 1550 6550 1600
Wire Wire Line
	6550 1850 6550 1900
$Comp
L synkie_symbols:LT1228 U102
U 1 1 5FD5CADC
P 8450 2650
AR Path="/5FD5CADC" Ref="U102"  Part="1" 
AR Path="/5FD30D96/5FD5CADC" Ref="U402"  Part="1" 
F 0 "U102" H 8100 3000 50  0000 C CNN
F 1 "LT1228" H 8200 2350 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 8900 2950 50  0001 C CNN
F 3 "" H 8900 2950 50  0001 C CNN
	1    8450 2650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0109
U 1 1 5FFD7BC0
P 8450 3350
AR Path="/5FFD7BC0" Ref="#PWR0109"  Part="1" 
AR Path="/5FD30D96/5FFD7BC0" Ref="#PWR0412"  Part="1" 
F 0 "#PWR0109" H 8450 3450 50  0001 C CNN
F 1 "-5V" H 8465 3523 50  0000 C CNN
F 2 "" H 8450 3350 50  0001 C CNN
F 3 "" H 8450 3350 50  0001 C CNN
	1    8450 3350
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0110
U 1 1 5FFD7BC1
P 8450 1800
AR Path="/5FFD7BC1" Ref="#PWR0110"  Part="1" 
AR Path="/5FD30D96/5FFD7BC1" Ref="#PWR0402"  Part="1" 
F 0 "#PWR0110" H 8450 1650 50  0001 C CNN
F 1 "+5V" H 8465 1973 50  0000 C CNN
F 2 "" H 8450 1800 50  0001 C CNN
F 3 "" H 8450 1800 50  0001 C CNN
	1    8450 1800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:CP_Small C103
U 1 1 5FFD7BC2
P 8650 1900
AR Path="/5FFD7BC2" Ref="C103"  Part="1" 
AR Path="/5FD30D96/5FFD7BC2" Ref="C401"  Part="1" 
F 0 "C103" V 8700 2000 50  0000 C CNN
F 1 "4u7" V 8750 1900 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 8650 1900 50  0001 C CNN
F 3 "~" H 8650 1900 50  0001 C CNN
	1    8650 1900
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:CP_Small C107
U 1 1 5FFD7BC3
P 8650 3100
AR Path="/5FFD7BC3" Ref="C107"  Part="1" 
AR Path="/5FD30D96/5FFD7BC3" Ref="C403"  Part="1" 
F 0 "C107" V 8600 3000 50  0000 C CNN
F 1 "4u7" V 8516 3100 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 8650 3100 50  0001 C CNN
F 3 "~" H 8650 3100 50  0001 C CNN
	1    8650 3100
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C104
U 1 1 5FD5CAFA
P 8650 2100
AR Path="/5FD5CAFA" Ref="C104"  Part="1" 
AR Path="/5FD30D96/5FD5CAFA" Ref="C402"  Part="1" 
F 0 "C104" V 8600 2000 50  0000 C CNN
F 1 "100n" V 8750 2100 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8650 2100 50  0001 C CNN
F 3 "~" H 8650 2100 50  0001 C CNN
	1    8650 2100
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C108
U 1 1 5FD5CB00
P 8650 3250
AR Path="/5FD5CB00" Ref="C108"  Part="1" 
AR Path="/5FD30D96/5FD5CB00" Ref="C404"  Part="1" 
F 0 "C108" V 8600 3150 50  0000 C CNN
F 1 "100n" V 8750 3250 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8650 3250 50  0001 C CNN
F 3 "~" H 8650 3250 50  0001 C CNN
	1    8650 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 3000 8450 3100
$Comp
L synkie_symbols:GND #PWR0112
U 1 1 5FD5CB07
P 8800 2200
AR Path="/5FD5CB07" Ref="#PWR0112"  Part="1" 
AR Path="/5FD30D96/5FD5CB07" Ref="#PWR0404"  Part="1" 
F 0 "#PWR0112" H 8800 1950 50  0001 C CNN
F 1 "GND" H 8805 2027 50  0000 C CNN
F 2 "" H 8800 2200 50  0001 C CNN
F 3 "" H 8800 2200 50  0001 C CNN
	1    8800 2200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0113
U 1 1 5FD5CB0D
P 8800 3350
AR Path="/5FD5CB0D" Ref="#PWR0113"  Part="1" 
AR Path="/5FD30D96/5FD5CB0D" Ref="#PWR0413"  Part="1" 
F 0 "#PWR0113" H 8800 3100 50  0001 C CNN
F 1 "GND" H 8805 3177 50  0000 C CNN
F 2 "" H 8800 3350 50  0001 C CNN
F 3 "" H 8800 3350 50  0001 C CNN
	1    8800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2100 8800 2100
Wire Wire Line
	8800 2100 8800 2200
Wire Wire Line
	8750 1900 8800 1900
Wire Wire Line
	8800 1900 8800 2100
Connection ~ 8800 2100
Wire Wire Line
	8450 1800 8450 1900
Wire Wire Line
	8550 2100 8450 2100
Connection ~ 8450 2100
Wire Wire Line
	8450 2100 8450 2250
Wire Wire Line
	8550 1900 8450 1900
Connection ~ 8450 1900
Wire Wire Line
	8450 1900 8450 2100
Wire Wire Line
	8750 3100 8800 3100
Wire Wire Line
	8800 3100 8800 3250
Wire Wire Line
	8750 3250 8800 3250
Connection ~ 8800 3250
Wire Wire Line
	8800 3250 8800 3350
Wire Wire Line
	8550 3100 8450 3100
Connection ~ 8450 3100
Wire Wire Line
	8450 3100 8450 3250
Wire Wire Line
	8550 3250 8450 3250
Connection ~ 8450 3250
Wire Wire Line
	8450 3250 8450 3350
$Comp
L synkie_symbols:R R107
U 1 1 5FFD7BC8
P 9050 2550
AR Path="/5FFD7BC8" Ref="R107"  Part="1" 
AR Path="/5FD30D96/5FFD7BC8" Ref="R406"  Part="1" 
F 0 "R107" V 8950 2650 50  0000 R CNN
F 1 "1k" V 9050 2600 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8980 2550 50  0001 C CNN
F 3 "~" H 9050 2550 50  0001 C CNN
	1    9050 2550
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0114
U 1 1 5FFD7BC9
P 9250 2700
AR Path="/5FFD7BC9" Ref="#PWR0114"  Part="1" 
AR Path="/5FD30D96/5FFD7BC9" Ref="#PWR0407"  Part="1" 
F 0 "#PWR0114" H 9250 2450 50  0001 C CNN
F 1 "GND" H 9255 2527 50  0000 C CNN
F 2 "" H 9250 2700 50  0001 C CNN
F 3 "" H 9250 2700 50  0001 C CNN
	1    9250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2400 9050 2400
Wire Wire Line
	8950 2650 8950 2700
Wire Wire Line
	8950 2700 9050 2700
$Comp
L synkie_symbols:R R108
U 1 1 5FFD7BCA
P 9250 2550
AR Path="/5FFD7BCA" Ref="R108"  Part="1" 
AR Path="/5FD30D96/5FFD7BCA" Ref="R407"  Part="1" 
F 0 "R108" V 9150 2650 50  0000 R CNN
F 1 "100" V 9250 2600 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9180 2550 50  0001 C CNN
F 3 "~" H 9250 2550 50  0001 C CNN
	1    9250 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 2400 9050 2400
Connection ~ 9050 2400
Wire Wire Line
	9050 3050 9050 2700
Connection ~ 9050 2700
$Comp
L synkie_symbols:R R104
U 1 1 5FFD7BCB
P 7700 2400
AR Path="/5FFD7BCB" Ref="R104"  Part="1" 
AR Path="/5FD30D96/5FFD7BCB" Ref="R404"  Part="1" 
F 0 "R104" V 7750 2250 50  0000 C CNN
F 1 "300" V 7700 2400 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7630 2400 50  0001 C CNN
F 3 "~" H 7700 2400 50  0001 C CNN
	1    7700 2400
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0115
U 1 1 5FFD7BCC
P 7500 2600
AR Path="/5FFD7BCC" Ref="#PWR0115"  Part="1" 
AR Path="/5FD30D96/5FFD7BCC" Ref="#PWR0406"  Part="1" 
F 0 "#PWR0115" H 7500 2350 50  0001 C CNN
F 1 "GND" H 7505 2427 50  0000 C CNN
F 2 "" H 7500 2600 50  0001 C CNN
F 3 "" H 7500 2600 50  0001 C CNN
	1    7500 2600
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R106
U 1 1 5FD5CB56
P 7700 2550
AR Path="/5FD5CB56" Ref="R106"  Part="1" 
AR Path="/5FD30D96/5FD5CB56" Ref="R405"  Part="1" 
F 0 "R106" V 7750 2400 50  0000 C CNN
F 1 "560" V 7700 2550 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7630 2550 50  0001 C CNN
F 3 "~" H 7700 2550 50  0001 C CNN
	1    7700 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 2400 7500 2400
Wire Wire Line
	7500 2400 7500 2550
Wire Wire Line
	7550 2550 7500 2550
Connection ~ 7500 2550
Wire Wire Line
	7500 2550 7500 2600
Wire Wire Line
	7850 2550 7950 2550
$Comp
L synkie_symbols:R R117
U 1 1 5FD5CB62
P 7500 3050
AR Path="/5FD5CB62" Ref="R117"  Part="1" 
AR Path="/5FD30D96/5FD5CB62" Ref="R414"  Part="1" 
F 0 "R117" V 7400 3100 50  0000 R CNN
F 1 "1k" V 7500 3100 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 3050 50  0001 C CNN
F 3 "~" H 7500 3050 50  0001 C CNN
	1    7500 3050
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0116
U 1 1 5FD5CB68
P 7500 3300
AR Path="/5FD5CB68" Ref="#PWR0116"  Part="1" 
AR Path="/5FD30D96/5FD5CB68" Ref="#PWR0410"  Part="1" 
F 0 "#PWR0116" H 7500 3050 50  0001 C CNN
F 1 "GND" H 7505 3127 50  0000 C CNN
F 2 "" H 7500 3300 50  0001 C CNN
F 3 "" H 7500 3300 50  0001 C CNN
	1    7500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3200 7500 3300
Wire Wire Line
	7450 2850 7500 2850
Wire Wire Line
	7500 2850 7500 2900
Wire Wire Line
	7950 2650 7600 2650
Wire Wire Line
	7600 2650 7600 2850
Wire Wire Line
	7600 2850 7500 2850
Connection ~ 7500 2850
$Comp
L synkie_symbols:R R116
U 1 1 5FD5CB75
P 7900 3000
AR Path="/5FD5CB75" Ref="R116"  Part="1" 
AR Path="/5FD30D96/5FD5CB75" Ref="R413"  Part="1" 
F 0 "R116" V 7800 3050 50  0000 C CNN
F 1 "1k" V 7900 3000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7830 3000 50  0001 C CNN
F 3 "~" H 7900 3000 50  0001 C CNN
	1    7900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2400 7900 2400
Connection ~ 7900 2400
Wire Wire Line
	7900 2400 7950 2400
Wire Wire Line
	7950 2800 7900 2800
Wire Wire Line
	7900 2800 7900 2850
$Comp
L synkie_symbols:Opamp_Dual_Generic U101
U 3 1 5FFD7BD1
P 10650 4500
AR Path="/5FFD7BD1" Ref="U101"  Part="3" 
AR Path="/5FD30D96/5FFD7BD1" Ref="U401"  Part="3" 
F 0 "U101" H 10700 4650 50  0000 C CNN
F 1 "LMH6643" H 10750 4350 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 10650 4500 50  0001 C CNN
F 3 "~" H 10650 4500 50  0001 C CNN
	3    10650 4500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0118
U 1 1 5FD5CBC2
P 10550 4100
AR Path="/5FD5CBC2" Ref="#PWR0118"  Part="1" 
AR Path="/5FD30D96/5FD5CBC2" Ref="#PWR0417"  Part="1" 
F 0 "#PWR0118" H 10550 3950 50  0001 C CNN
F 1 "+5V" H 10565 4273 50  0000 C CNN
F 2 "" H 10550 4100 50  0001 C CNN
F 3 "" H 10550 4100 50  0001 C CNN
	1    10550 4100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0119
U 1 1 5FD5CBC8
P 10550 4900
AR Path="/5FD5CBC8" Ref="#PWR0119"  Part="1" 
AR Path="/5FD30D96/5FD5CBC8" Ref="#PWR0419"  Part="1" 
F 0 "#PWR0119" H 10550 5000 50  0001 C CNN
F 1 "-5V" H 10565 5073 50  0000 C CNN
F 2 "" H 10550 4900 50  0001 C CNN
F 3 "" H 10550 4900 50  0001 C CNN
	1    10550 4900
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C112
U 1 1 5FD5CBCE
P 10400 4850
AR Path="/5FD5CBCE" Ref="C112"  Part="1" 
AR Path="/5FD30D96/5FD5CBCE" Ref="C406"  Part="1" 
F 0 "C112" V 10350 4750 50  0000 C CNN
F 1 "100n" V 10500 4850 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10400 4850 50  0001 C CNN
F 3 "~" H 10400 4850 50  0001 C CNN
	1    10400 4850
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:C_Small C111
U 1 1 5FD5CBD4
P 10400 4150
AR Path="/5FD5CBD4" Ref="C111"  Part="1" 
AR Path="/5FD30D96/5FD5CBD4" Ref="C405"  Part="1" 
F 0 "C111" V 10350 4050 50  0000 C CNN
F 1 "100n" V 10500 4150 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10400 4150 50  0001 C CNN
F 3 "~" H 10400 4150 50  0001 C CNN
	1    10400 4150
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0120
U 1 1 5FD5CBDA
P 10250 4900
AR Path="/5FD5CBDA" Ref="#PWR0120"  Part="1" 
AR Path="/5FD30D96/5FD5CBDA" Ref="#PWR0418"  Part="1" 
F 0 "#PWR0120" H 10250 4650 50  0001 C CNN
F 1 "GND" H 10255 4727 50  0000 C CNN
F 2 "" H 10250 4900 50  0001 C CNN
F 3 "" H 10250 4900 50  0001 C CNN
	1    10250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 4100 10550 4150
Wire Wire Line
	10550 4800 10550 4850
Wire Wire Line
	10500 4850 10550 4850
Connection ~ 10550 4850
Wire Wire Line
	10550 4850 10550 4900
Wire Wire Line
	10500 4150 10550 4150
Connection ~ 10550 4150
Wire Wire Line
	10550 4150 10550 4200
Wire Wire Line
	10300 4150 10250 4150
Wire Wire Line
	10250 4150 10250 4850
Wire Wire Line
	10300 4850 10250 4850
Connection ~ 10250 4850
Wire Wire Line
	10250 4850 10250 4900
$Comp
L synkie_symbols:Trans_NPN_Generic Q102
U 1 1 5FFD7BDF
P 6500 2700
AR Path="/5FFD7BDF" Ref="Q102"  Part="1" 
AR Path="/5FD30D96/5FFD7BDF" Ref="Q402"  Part="1" 
F 0 "Q102" H 6638 2746 50  0000 L CNN
F 1 "BC847" H 6638 2655 50  0000 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 6500 2700 50  0001 C CNN
F 3 "" H 6500 2700 50  0001 C CNN
	1    6500 2700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R114
U 1 1 5FFD7BE2
P 7300 2850
AR Path="/5FFD7BE2" Ref="R114"  Part="1" 
AR Path="/5FD30D96/5FFD7BE2" Ref="R412"  Part="1" 
F 0 "R114" V 7400 2850 50  0000 C CNN
F 1 "10k" V 7300 2850 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7230 2850 50  0001 C CNN
F 3 "~" H 7300 2850 50  0001 C CNN
	1    7300 2850
	0    -1   -1   0   
$EndComp
Connection ~ 6550 1900
Connection ~ 6550 2300
Connection ~ 5350 2000
Wire Wire Line
	5300 1750 5350 1750
Wire Wire Line
	5750 1750 5350 1750
Connection ~ 5350 1750
Wire Wire Line
	5350 1750 5350 2000
Connection ~ 6250 2100
Wire Wire Line
	6250 1750 6250 2100
Wire Wire Line
	6550 2300 7900 2300
Wire Wire Line
	7900 2300 7900 2400
Text GLabel 4900 2600 0    50   Input ~ 0
bias_cv
Text GLabel 5650 4850 0    50   Input ~ 0
scale_cv
Text Label 6750 3750 2    50   ~ 0
scabi_in
Text Label 9500 3050 0    50   ~ 0
scabi-out
Wire Wire Line
	9050 3050 9950 3050
$Comp
L Connector_Generic:Conn_01x04 J102
U 1 1 60018F23
P 950 1800
F 0 "J102" H 868 2117 50  0000 C CNN
F 1 "FROM-MASTERFADERS" H 868 2026 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 950 1800 50  0001 C CNN
F 3 "~" H 950 1800 50  0001 C CNN
	1    950  1800
	-1   0    0    -1  
$EndComp
Text GLabel 1150 1900 2    50   Input ~ 0
bias_cv
Text GLabel 1150 2000 2    50   Input ~ 0
scale_cv
Wire Wire Line
	9100 4700 9050 4700
$Comp
L synkie_symbols:GND #PWR?
U 1 1 6017B694
P 9100 4900
AR Path="/5FA6FAA9/6017B694" Ref="#PWR?"  Part="1" 
AR Path="/5FA6A4E8/6017B694" Ref="#PWR?"  Part="1" 
AR Path="/5FA97FCE/6017B694" Ref="#PWR?"  Part="1" 
AR Path="/5FA999AE/6017B694" Ref="#PWR?"  Part="1" 
AR Path="/5FA8FC53/6017B694" Ref="#PWR?"  Part="1" 
AR Path="/5FA9040E/6017B694" Ref="#PWR?"  Part="1" 
AR Path="/5FA7B673/6017B694" Ref="#PWR?"  Part="1" 
AR Path="/5FA81498/6017B694" Ref="#PWR?"  Part="1" 
AR Path="/6017B694" Ref="#PWR0132"  Part="1" 
AR Path="/5FA7E734/6017B694" Ref="#PWR?"  Part="1" 
AR Path="/5FA82020/6017B694" Ref="#PWR?"  Part="1" 
AR Path="/5FA8A96F/6017B694" Ref="#PWR?"  Part="1" 
F 0 "#PWR0132" H 9100 4650 50  0001 C CNN
F 1 "GND" H 9350 4750 50  0000 C CNN
F 2 "" H 9100 4900 50  0001 C CNN
F 3 "" H 9100 4900 50  0001 C CNN
	1    9100 4900
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0135
U 1 1 60210B40
P 1700 5050
F 0 "#PWR0135" H 1700 4800 50  0001 C CNN
F 1 "GND" H 1705 4877 50  0000 C CNN
F 2 "" H 1700 5050 50  0001 C CNN
F 3 "" H 1700 5050 50  0001 C CNN
	1    1700 5050
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:UMCC J106
U 1 1 5FF37F16
P 4100 3300
F 0 "J106" H 4628 3253 60  0000 L CNN
F 1 "INPUT from Mixbus" H 4628 3147 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 4500 3140 60  0001 C CNN
F 3 "" H 4100 3300 60  0000 C CNN
	1    4100 3300
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:UMCC J109
U 1 1 5FF4409A
P 1450 3700
F 0 "J109" H 1978 3653 60  0000 L CNN
F 1 "INPUT from Masterfaders" H 1978 3547 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 1850 3540 60  0001 C CNN
F 3 "" H 1450 3700 60  0000 C CNN
	1    1450 3700
	1    0    0    -1  
$EndComp
Text GLabel 1450 3700 0    50   Input ~ 0
genlock_delayed
$Comp
L Connector_Generic:Conn_01x01 J101
U 1 1 5FF4BF83
P 3200 2700
F 0 "J101" H 3118 2475 50  0000 C CNN
F 1 "Input" H 3118 2566 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 3200 2700 50  0001 C CNN
F 3 "~" H 3200 2700 50  0001 C CNN
	1    3200 2700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J107
U 1 1 5FF51A79
P 9400 3800
F 0 "J107" V 9364 3712 50  0000 R CNN
F 1 "AFL-OUT" V 9273 3712 50  0000 R CNN
F 2 "synkie_footprints:Solderpad_1mm" H 9400 3800 50  0001 C CNN
F 3 "~" H 9400 3800 50  0001 C CNN
	1    9400 3800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:UMCC J108
U 1 1 5FF590E0
P 9100 4700
F 0 "J108" H 9342 4987 60  0000 C CNN
F 1 "AFL-OUT" H 9342 4881 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 9500 4540 60  0001 C CNN
F 3 "" H 9100 4700 60  0000 C CNN
	1    9100 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4800 9100 4900
Connection ~ 9100 4900
$Comp
L synkie_symbols:R R?
U 1 1 5DCFB76E
P 6650 5300
AR Path="/5FA6FAA9/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FA6A4E8/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FA97FCE/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FA999AE/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FA8FC53/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FA9040E/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FA7B673/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FA81498/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5DCFB76E" Ref="R3"  Part="1" 
AR Path="/5FA7E734/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FA82020/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FA8A96F/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FA6FAA9/5DCFB76E" Ref="R1014"  Part="1" 
AR Path="/5FECEEFB/5FA7E734/5DCFB76E" Ref="R714"  Part="1" 
AR Path="/5FECEEFB/5FA82020/5DCFB76E" Ref="R814"  Part="1" 
AR Path="/5FECEEFB/5FA8A96F/5DCFB76E" Ref="R914"  Part="1" 
AR Path="/5FECEEFB/5FEF8D28/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D2E/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D34/5DCFB76E" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D3A/5DCFB76E" Ref="R?"  Part="1" 
F 0 "R3" V 6443 5300 50  0000 C CNN
F 1 "20k" V 6550 5500 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6580 5300 50  0001 C CNN
F 3 "~" H 6650 5300 50  0001 C CNN
	1    6650 5300
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5DCFBE0A
P 6100 5100
AR Path="/5FA6FAA9/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FA6A4E8/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FA97FCE/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FA999AE/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FA8FC53/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FA9040E/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FA7B673/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FA81498/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5DCFBE0A" Ref="R2"  Part="1" 
AR Path="/5FA7E734/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FA82020/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FA8A96F/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FA6FAA9/5DCFBE0A" Ref="R1013"  Part="1" 
AR Path="/5FECEEFB/5FA7E734/5DCFBE0A" Ref="R713"  Part="1" 
AR Path="/5FECEEFB/5FA82020/5DCFBE0A" Ref="R813"  Part="1" 
AR Path="/5FECEEFB/5FA8A96F/5DCFBE0A" Ref="R913"  Part="1" 
AR Path="/5FECEEFB/5FEF8D28/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D2E/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D34/5DCFBE0A" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D3A/5DCFBE0A" Ref="R?"  Part="1" 
F 0 "R2" V 5893 5100 50  0000 C CNN
F 1 "12K" V 5984 5100 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6030 5100 50  0001 C CNN
F 3 "~" H 6100 5100 50  0001 C CNN
	1    6100 5100
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:Trans_PNP_Generic Q?
U 1 1 5DCB5482
P 7150 5550
AR Path="/5FA6FAA9/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FA6A4E8/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FA97FCE/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FA999AE/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FA8FC53/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FA9040E/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FA7B673/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FA81498/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5DCB5482" Ref="Q1"  Part="1" 
AR Path="/5FA7E734/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FA82020/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FA8A96F/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FECEEFB/5FA6FAA9/5DCB5482" Ref="Q1001"  Part="1" 
AR Path="/5FECEEFB/5FA7E734/5DCB5482" Ref="Q701"  Part="1" 
AR Path="/5FECEEFB/5FA82020/5DCB5482" Ref="Q801"  Part="1" 
AR Path="/5FECEEFB/5FA8A96F/5DCB5482" Ref="Q901"  Part="1" 
AR Path="/5FECEEFB/5FEF8D28/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D2E/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D34/5DCB5482" Ref="Q?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D3A/5DCB5482" Ref="Q?"  Part="1" 
F 0 "Q1" H 7288 5596 50  0000 L CNN
F 1 "PNP" H 7288 5505 50  0000 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 7150 5550 50  0001 C CNN
F 3 "" H 7150 5550 50  0001 C CNN
	1    7150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5450 6100 5300
$Comp
L synkie_symbols:R R?
U 1 1 5DCE719B
P 7200 5050
AR Path="/5FA6FAA9/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FA6A4E8/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FA97FCE/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FA999AE/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FA8FC53/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FA9040E/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FA7B673/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FA81498/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5DCE719B" Ref="R1"  Part="1" 
AR Path="/5FA7E734/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FA82020/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FA8A96F/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FA6FAA9/5DCE719B" Ref="R1012"  Part="1" 
AR Path="/5FECEEFB/5FA7E734/5DCE719B" Ref="R712"  Part="1" 
AR Path="/5FECEEFB/5FA82020/5DCE719B" Ref="R812"  Part="1" 
AR Path="/5FECEEFB/5FA8A96F/5DCE719B" Ref="R912"  Part="1" 
AR Path="/5FECEEFB/5FEF8D28/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D2E/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D34/5DCE719B" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D3A/5DCE719B" Ref="R?"  Part="1" 
F 0 "R1" H 7130 5004 50  0000 R CNN
F 1 "2k2" H 7130 5095 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7130 5050 50  0001 C CNN
F 3 "~" H 7200 5050 50  0001 C CNN
	1    7200 5050
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5DCE76FE
P 7200 4850
AR Path="/5FA6FAA9/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FA6A4E8/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FA97FCE/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FA999AE/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FA8FC53/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FA9040E/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FA7B673/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FA81498/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5DCE76FE" Ref="#PWR0117"  Part="1" 
AR Path="/5FA7E734/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FA82020/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FA8A96F/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FECEEFB/5FA6FAA9/5DCE76FE" Ref="#PWR01015"  Part="1" 
AR Path="/5FECEEFB/5FA7E734/5DCE76FE" Ref="#PWR0715"  Part="1" 
AR Path="/5FECEEFB/5FA82020/5DCE76FE" Ref="#PWR0815"  Part="1" 
AR Path="/5FECEEFB/5FA8A96F/5DCE76FE" Ref="#PWR0915"  Part="1" 
AR Path="/5FECEEFB/5FEF8D28/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D2E/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D34/5DCE76FE" Ref="#PWR?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D3A/5DCE76FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 7200 4700 50  0001 C CNN
F 1 "+5V" H 7200 5000 50  0000 C CNN
F 2 "" H 7200 4850 50  0001 C CNN
F 3 "" H 7200 4850 50  0001 C CNN
	1    7200 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4850 7200 4900
Wire Wire Line
	6300 5450 6100 5450
Connection ~ 6100 5450
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5DCF050F
P 6250 5700
AR Path="/5FA6FAA9/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FA6A4E8/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FA97FCE/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FA999AE/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FA8FC53/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FA9040E/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FA7B673/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FA81498/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5DCF050F" Ref="#PWR0121"  Part="1" 
AR Path="/5FA7E734/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FA82020/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FA8A96F/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FECEEFB/5FA6FAA9/5DCF050F" Ref="#PWR01017"  Part="1" 
AR Path="/5FECEEFB/5FA7E734/5DCF050F" Ref="#PWR0717"  Part="1" 
AR Path="/5FECEEFB/5FA82020/5DCF050F" Ref="#PWR0817"  Part="1" 
AR Path="/5FECEEFB/5FA8A96F/5DCF050F" Ref="#PWR0917"  Part="1" 
AR Path="/5FECEEFB/5FEF8D28/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D2E/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D34/5DCF050F" Ref="#PWR?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D3A/5DCF050F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 6250 5450 50  0001 C CNN
F 1 "GND" H 6255 5527 50  0000 C CNN
F 2 "" H 6250 5700 50  0001 C CNN
F 3 "" H 6250 5700 50  0001 C CNN
	1    6250 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5700 6250 5650
Wire Wire Line
	6250 5650 6300 5650
Wire Wire Line
	7200 5750 7200 5850
Wire Wire Line
	7200 5850 7900 5850
Wire Wire Line
	6900 5550 6950 5550
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5DE341EF
P 6100 5850
AR Path="/5FA6FAA9/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FA6A4E8/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FA97FCE/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FA999AE/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FA8FC53/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FA9040E/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FA7B673/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FA81498/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5DE341EF" Ref="#PWR0122"  Part="1" 
AR Path="/5FA7E734/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FA82020/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FA8A96F/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FECEEFB/5FA6FAA9/5DE341EF" Ref="#PWR01020"  Part="1" 
AR Path="/5FECEEFB/5FA7E734/5DE341EF" Ref="#PWR0720"  Part="1" 
AR Path="/5FECEEFB/5FA82020/5DE341EF" Ref="#PWR0820"  Part="1" 
AR Path="/5FECEEFB/5FA8A96F/5DE341EF" Ref="#PWR0920"  Part="1" 
AR Path="/5FECEEFB/5FEF8D28/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D2E/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D34/5DE341EF" Ref="#PWR?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D3A/5DE341EF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0122" H 6100 5950 50  0001 C CNN
F 1 "-5V" H 6100 6000 50  0000 C CNN
F 2 "" H 6100 5850 50  0001 C CNN
F 3 "" H 6100 5850 50  0001 C CNN
	1    6100 5850
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5DE34830
P 6100 5650
AR Path="/5FA6FAA9/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FA6A4E8/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FA97FCE/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FA999AE/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FA8FC53/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FA9040E/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FA7B673/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FA81498/5DE34830" Ref="R?"  Part="1" 
AR Path="/5DE34830" Ref="R4"  Part="1" 
AR Path="/5FA7E734/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FA82020/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FA8A96F/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FA6FAA9/5DE34830" Ref="R1018"  Part="1" 
AR Path="/5FECEEFB/5FA7E734/5DE34830" Ref="R718"  Part="1" 
AR Path="/5FECEEFB/5FA82020/5DE34830" Ref="R818"  Part="1" 
AR Path="/5FECEEFB/5FA8A96F/5DE34830" Ref="R918"  Part="1" 
AR Path="/5FECEEFB/5FEF8D28/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D2E/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D34/5DE34830" Ref="R?"  Part="1" 
AR Path="/5FECEEFB/5FEF8D3A/5DE34830" Ref="R?"  Part="1" 
F 0 "R4" H 6250 5700 50  0000 R CNN
F 1 "22k" H 6250 5800 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6030 5650 50  0001 C CNN
F 3 "~" H 6100 5650 50  0001 C CNN
	1    6100 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 5500 6100 5450
Wire Wire Line
	6100 5800 6100 5850
Wire Wire Line
	6500 5300 6100 5300
Wire Wire Line
	6100 5250 6100 5300
Connection ~ 6100 5300
Wire Wire Line
	6100 4850 6100 4950
Wire Wire Line
	7200 5200 7200 5350
Wire Wire Line
	6800 5300 6950 5300
Wire Wire Line
	6950 5300 6950 5550
Connection ~ 6950 5550
Wire Wire Line
	6950 5550 7000 5550
Wire Notes Line
	4500 4350 7500 4350
Wire Notes Line
	7500 4350 7500 6200
Wire Notes Line
	7500 6200 4500 6200
Wire Notes Line
	4500 6200 4500 4350
Text Notes 7000 6150 0    50   ~ 0
gain control
Wire Wire Line
	7900 3150 7900 5850
Wire Wire Line
	6100 4850 5650 4850
$Comp
L synkie_symbols:LMH6643 U101
U 1 1 602CC07F
P 6600 5550
F 0 "U101" H 6550 5850 50  0000 C CNN
F 1 "LMH6643" H 6700 5750 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 6600 5550 50  0001 C CNN
F 3 "~" H 6600 5550 50  0001 C CNN
	1    6600 5550
	1    0    0    1   
$EndComp
Text GLabel 1150 2900 2    50   Input ~ 0
synkietxt
Text GLabel 1150 3000 2    50   Input ~ 0
synkietxt_enable
Text Label 9200 3800 2    50   ~ 0
scabi-out
Text Label 9050 4700 2    50   ~ 0
scabi-out
Text Label 4100 3300 0    50   ~ 0
scabi_in
Text Label 3400 2700 0    50   ~ 0
scabi_in
$Comp
L Device:R_POT_TRIM RV1
U 1 1 60381907
P 6200 2700
F 0 "RV1" H 6130 2746 50  0000 R CNN
F 1 "10k" H 6130 2655 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Bourns_3296Y_Vertical" H 6200 2700 50  0001 C CNN
F 3 "~" H 6200 2700 50  0001 C CNN
	1    6200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2250 6400 2250
Wire Wire Line
	6400 2250 6400 2300
Wire Wire Line
	6200 3200 6200 3150
Wire Wire Line
	6200 3200 6550 3200
Wire Wire Line
	6550 2300 6550 2500
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 603A7424
P 1550 1800
F 0 "JP1" H 1550 2012 50  0000 C CNN
F 1 "Jumper_NC_Small" H 1550 1921 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 1550 1800 50  0001 C CNN
F 3 "~" H 1550 1800 50  0001 C CNN
	1    1550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1800 1450 1800
$Comp
L synkie_symbols:GND #PWR0124
U 1 1 603AAD74
P 1650 1800
F 0 "#PWR0124" H 1650 1550 50  0001 C CNN
F 1 "GND" H 1655 1627 50  0000 C CNN
F 2 "" H 1650 1800 50  0001 C CNN
F 3 "" H 1650 1800 50  0001 C CNN
	1    1650 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP4
U 1 1 603AB571
P 1050 4100
F 0 "JP4" H 1050 4312 50  0000 C CNN
F 1 "Jumper_NC_Small" H 1050 4221 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 1050 4100 50  0001 C CNN
F 3 "~" H 1050 4100 50  0001 C CNN
	1    1050 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3800 1450 3900
Wire Wire Line
	1450 3900 1450 4100
Wire Wire Line
	1450 4100 1150 4100
Connection ~ 1450 3900
$Comp
L synkie_symbols:GND #PWR0125
U 1 1 603B2292
P 950 4100
F 0 "#PWR0125" H 950 3850 50  0001 C CNN
F 1 "GND" H 955 3927 50  0000 C CNN
F 2 "" H 950 4100 50  0001 C CNN
F 3 "" H 950 4100 50  0001 C CNN
	1    950  4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2400 1900 2400
Wire Wire Line
	1900 3300 1150 3300
Wire Wire Line
	1150 3100 1900 3100
Connection ~ 1900 3100
Wire Wire Line
	1900 3100 1900 3300
Wire Wire Line
	1150 2800 1900 2800
Connection ~ 1900 2800
Wire Wire Line
	1900 2800 1900 3100
Wire Wire Line
	1150 2600 1900 2600
Wire Wire Line
	1900 2400 1900 2600
Connection ~ 1900 2600
Wire Wire Line
	1900 2600 1900 2800
$Comp
L Device:Jumper_NC_Small JP2
U 1 1 603C1636
P 2300 3300
F 0 "JP2" H 2300 3512 50  0000 C CNN
F 1 "Jumper_NC_Small" H 2300 3421 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 2300 3300 50  0001 C CNN
F 3 "~" H 2300 3300 50  0001 C CNN
	1    2300 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1900 3300 2200 3300
$Comp
L synkie_symbols:GND #PWR0126
U 1 1 603C1641
P 2400 3300
F 0 "#PWR0126" H 2400 3050 50  0001 C CNN
F 1 "GND" H 2405 3127 50  0000 C CNN
F 2 "" H 2400 3300 50  0001 C CNN
F 3 "" H 2400 3300 50  0001 C CNN
	1    2400 3300
	-1   0    0    -1  
$EndComp
Connection ~ 1900 3300
$Comp
L Device:Jumper_NC_Small JP3
U 1 1 603C7DDA
P 4500 3500
F 0 "JP3" H 4500 3712 50  0000 C CNN
F 1 "Jumper_NC_Small" H 4500 3621 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4500 3500 50  0001 C CNN
F 3 "~" H 4500 3500 50  0001 C CNN
	1    4500 3500
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0127
U 1 1 603C7DE4
P 4600 3500
F 0 "#PWR0127" H 4600 3250 50  0001 C CNN
F 1 "GND" H 4605 3327 50  0000 C CNN
F 2 "" H 4600 3500 50  0001 C CNN
F 3 "" H 4600 3500 50  0001 C CNN
	1    4600 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 3500 4100 3500
Wire Wire Line
	4100 3500 4100 3400
Connection ~ 4100 3500
$Comp
L synkie_symbols:R R7
U 1 1 614F6F8E
P 6900 3750
AR Path="/614F6F8E" Ref="R7"  Part="1" 
AR Path="/5FD30D96/614F6F8E" Ref="R?"  Part="1" 
F 0 "R7" V 6950 3600 50  0000 C CNN
F 1 "75" V 6900 3750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6830 3750 50  0001 C CNN
F 3 "~" H 6900 3750 50  0001 C CNN
	1    6900 3750
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:BAT54S D3
U 1 1 614F80A3
P 7050 3750
F 0 "D3" V 7096 3672 50  0000 R CNN
F 1 "BAT54S" V 7005 3672 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7125 3875 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 6930 3750 50  0001 C CNN
	1    7050 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 3750 7150 3750
Wire Wire Line
	7150 3750 7150 2850
Connection ~ 7050 3750
$Comp
L synkie_symbols:-5V #PWR0128
U 1 1 6150093B
P 7050 4050
AR Path="/6150093B" Ref="#PWR0128"  Part="1" 
AR Path="/5FD30D96/6150093B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0128" H 7050 4150 50  0001 C CNN
F 1 "-5V" H 7065 4223 50  0000 C CNN
F 2 "" H 7050 4050 50  0001 C CNN
F 3 "" H 7050 4050 50  0001 C CNN
	1    7050 4050
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0129
U 1 1 6150114E
P 7050 3450
AR Path="/6150114E" Ref="#PWR0129"  Part="1" 
AR Path="/5FD30D96/6150114E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0129" H 7050 3300 50  0001 C CNN
F 1 "+5V" H 7065 3623 50  0000 C CNN
F 2 "" H 7050 3450 50  0001 C CNN
F 3 "" H 7050 3450 50  0001 C CNN
	1    7050 3450
	1    0    0    -1  
$EndComp
$Sheet
S 9950 2650 1050 800 
U 5FED65BF
F0 "Resyncer" 50
F1 "sk003-resync.sch" 50
F2 "INPUT" I L 9950 3050 50 
F3 "OUTPUT" I R 11000 3050 50 
$EndSheet
$EndSCHEMATC
