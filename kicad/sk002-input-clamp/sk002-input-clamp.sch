EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "sk002-input-clamp"
Date "2021-09-24"
Rev ""
Comp "[ a n y m a ]"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L synkie_symbols:R R5
U 1 1 5FEA7A0E
P 1750 4600
F 0 "R5" H 1680 4554 50  0000 R CNN
F 1 "75" H 1680 4645 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1680 4600 50  0001 C CNN
F 3 "~" H 1750 4600 50  0001 C CNN
	1    1750 4600
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR013
U 1 1 5FEA7A14
P 1750 4750
F 0 "#PWR013" H 1750 4500 50  0001 C CNN
F 1 "GND" H 1755 4577 50  0000 C CNN
F 2 "" H 1750 4750 50  0001 C CNN
F 3 "" H 1750 4750 50  0001 C CNN
	1    1750 4750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R1
U 1 1 5FEA7A1B
P 2800 4050
F 0 "R1" V 3007 4050 50  0000 C CNN
F 1 "75" V 2916 4050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2730 4050 50  0001 C CNN
F 3 "~" H 2800 4050 50  0001 C CNN
	1    2800 4050
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:BAT54S D1
U 1 1 5FEA7A22
P 3100 4050
F 0 "D1" V 3146 3972 50  0000 R CNN
F 1 "BAT54S" V 3055 3972 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3175 4175 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 2980 4050 50  0001 C CNN
	1    3100 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 4050 3100 4050
$Comp
L synkie_symbols:+5V #PWR06
U 1 1 5FEA7A29
P 3100 3750
F 0 "#PWR06" H 3100 3600 50  0001 C CNN
F 1 "+5V" H 3115 3923 50  0000 C CNN
F 2 "" H 3100 3750 50  0001 C CNN
F 3 "" H 3100 3750 50  0001 C CNN
	1    3100 3750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR010
U 1 1 5FEA7A2F
P 3100 4350
F 0 "#PWR010" H 3100 4450 50  0001 C CNN
F 1 "-5V" H 3115 4523 50  0000 C CNN
F 2 "" H 3100 4350 50  0001 C CNN
F 3 "" H 3100 4350 50  0001 C CNN
	1    3100 4350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R2
U 1 1 5FEA7A35
P 3850 4050
F 0 "R2" V 4057 4050 50  0000 C CNN
F 1 "75" V 3966 4050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 4050 50  0001 C CNN
F 3 "~" H 3850 4050 50  0001 C CNN
	1    3850 4050
	0    -1   -1   0   
$EndComp
Connection ~ 3100 4050
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 1 1 5FEA7A3C
P 4300 4150
F 0 "U1" H 4300 4517 50  0000 C CNN
F 1 "LMH6643" H 4300 4426 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4300 4150 50  0001 C CNN
F 3 "~" H 4300 4150 50  0001 C CNN
	1    4300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4250 4000 4400
$Comp
L synkie_symbols:GND #PWR07
U 1 1 5FEA7A4B
P 6750 3800
F 0 "#PWR07" H 6750 3550 50  0001 C CNN
F 1 "GND" H 6755 3627 50  0000 C CNN
F 2 "" H 6750 3800 50  0001 C CNN
F 3 "" H 6750 3800 50  0001 C CNN
	1    6750 3800
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR05
U 1 1 5FEA7A51
P 6250 3500
F 0 "#PWR05" H 6250 3350 50  0001 C CNN
F 1 "+5V" H 6265 3673 50  0000 C CNN
F 2 "" H 6250 3500 50  0001 C CNN
F 3 "" H 6250 3500 50  0001 C CNN
	1    6250 3500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR018
U 1 1 5FEA7A57
P 6250 5300
F 0 "#PWR018" H 6250 5050 50  0001 C CNN
F 1 "GND" H 6255 5127 50  0000 C CNN
F 2 "" H 6250 5300 50  0001 C CNN
F 3 "" H 6250 5300 50  0001 C CNN
	1    6250 5300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR019
U 1 1 5FEA7A5D
P 6350 5300
F 0 "#PWR019" H 6350 5400 50  0001 C CNN
F 1 "-5V" H 6365 5473 50  0000 C CNN
F 2 "" H 6350 5300 50  0001 C CNN
F 3 "" H 6350 5300 50  0001 C CNN
	1    6350 5300
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR012
U 1 1 5FEA7A64
P 5750 4700
F 0 "#PWR012" H 5750 4450 50  0001 C CNN
F 1 "GND" H 5755 4527 50  0000 C CNN
F 2 "" H 5750 4700 50  0001 C CNN
F 3 "" H 5750 4700 50  0001 C CNN
	1    5750 4700
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR08
U 1 1 5FEA7A6A
P 5750 3900
F 0 "#PWR08" H 5750 3650 50  0001 C CNN
F 1 "GND" H 5755 3727 50  0000 C CNN
F 2 "" H 5750 3900 50  0001 C CNN
F 3 "" H 5750 3900 50  0001 C CNN
	1    5750 3900
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R4
U 1 1 5FEA7A70
P 8850 4500
F 0 "R4" V 9057 4500 50  0000 C CNN
F 1 "75" V 8966 4500 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8780 4500 50  0001 C CNN
F 3 "~" H 8850 4500 50  0001 C CNN
	1    8850 4500
	0    -1   -1   0   
$EndComp
Connection ~ 8700 4500
$Comp
L synkie_symbols:GND #PWR011
U 1 1 5FEA7A8B
P 5750 4400
F 0 "#PWR011" H 5750 4150 50  0001 C CNN
F 1 "GND" H 5755 4227 50  0000 C CNN
F 2 "" H 5750 4400 50  0001 C CNN
F 3 "" H 5750 4400 50  0001 C CNN
	1    5750 4400
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R3
U 1 1 5FEA7A9E
P 4750 4150
F 0 "R3" H 4820 4196 50  0000 L CNN
F 1 "75" H 4820 4105 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4680 4150 50  0001 C CNN
F 3 "~" H 4750 4150 50  0001 C CNN
	1    4750 4150
	0    1    1    0   
$EndComp
Connection ~ 4600 4150
Wire Wire Line
	4600 4150 4600 4400
Wire Wire Line
	4000 4400 4600 4400
Wire Wire Line
	5350 3800 5750 3800
Wire Wire Line
	5350 4500 5750 4500
Wire Wire Line
	3100 4050 3700 4050
$Comp
L 4xxx:4053 U2
U 1 1 5FEA7AC1
P 6250 4400
F 0 "U2" H 6050 5200 50  0000 C CNN
F 1 "4053" H 6700 3750 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6250 4400 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 6250 4400 50  0001 C CNN
	1    6250 4400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 2 1 5FEA7AFD
P 8400 4500
F 0 "U1" H 8400 4867 50  0000 C CNN
F 1 "LMH6643" H 8400 4776 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 8400 4500 50  0001 C CNN
F 3 "~" H 8400 4500 50  0001 C CNN
	2    8400 4500
	1    0    0    -1  
$EndComp
Text Label 7050 4400 0    50   ~ 0
clamped
Wire Wire Line
	5350 3800 5350 4150
$Comp
L synkie_symbols:C_Small C3
U 1 1 5FEA7B4E
P 5200 4150
F 0 "C3" V 4948 4150 50  0000 C CNN
F 1 "1u" V 5039 4150 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5238 4000 50  0001 C CNN
F 3 "~" H 5200 4150 50  0001 C CNN
	1    5200 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 4150 5300 4150
Connection ~ 5350 4150
Wire Wire Line
	5350 4150 5350 4500
Wire Wire Line
	4900 4150 5100 4150
$Comp
L synkie_symbols:Opamp_Dual_Generic U1
U 3 1 5FEB9428
P 2550 5300
AR Path="/5FEB9428" Ref="U1"  Part="3" 
AR Path="/5FE939A9/5FEB9428" Ref="U?"  Part="3" 
F 0 "U1" H 2550 5550 50  0000 L CNN
F 1 "LMH6643" H 2550 5450 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2550 5300 50  0001 C CNN
F 3 "~" H 2550 5300 50  0001 C CNN
	3    2550 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5300 2250 5200
Wire Wire Line
	2250 5400 2250 5300
Connection ~ 2250 5300
$Comp
L synkie_symbols:GND #PWR016
U 1 1 5FEB9431
P 2250 5300
AR Path="/5FEB9431" Ref="#PWR016"  Part="1" 
AR Path="/5FE939A9/5FEB9431" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 2250 5050 50  0001 C CNN
F 1 "GND" H 2255 5127 50  0001 C CNN
F 2 "" H 2250 5300 50  0001 C CNN
F 3 "" H 2250 5300 50  0001 C CNN
	1    2250 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 5000 2450 5000
Wire Wire Line
	2250 5000 2350 5000
Connection ~ 2350 5000
$Comp
L synkie_symbols:+5V #PWR014
U 1 1 5FEB943A
P 2350 5000
AR Path="/5FEB943A" Ref="#PWR014"  Part="1" 
AR Path="/5FE939A9/5FEB943A" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 2350 4850 50  0001 C CNN
F 1 "+5V" H 2350 5150 50  0000 C CNN
F 2 "" H 2350 5000 50  0001 C CNN
F 3 "" H 2350 5000 50  0001 C CNN
	1    2350 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 5600 2450 5600
Wire Wire Line
	2250 5600 2350 5600
Connection ~ 2350 5600
$Comp
L synkie_symbols:-5V #PWR020
U 1 1 5FEB9443
P 2350 5600
AR Path="/5FEB9443" Ref="#PWR020"  Part="1" 
AR Path="/5FE939A9/5FEB9443" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 2350 5700 50  0001 C CNN
F 1 "-5V" H 2350 5750 50  0000 C CNN
F 2 "" H 2350 5600 50  0001 C CNN
F 3 "" H 2350 5600 50  0001 C CNN
	1    2350 5600
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C6
U 1 1 5FEB9449
P 2250 5500
AR Path="/5FEB9449" Ref="C6"  Part="1" 
AR Path="/5FE939A9/5FEB9449" Ref="C?"  Part="1" 
F 0 "C6" V 2350 5500 50  0000 C CNN
F 1 "100n" V 2112 5500 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2250 5500 50  0001 C CNN
F 3 "~" H 2250 5500 50  0001 C CNN
	1    2250 5500
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C4
U 1 1 5FEB944F
P 2250 5100
AR Path="/5FEB944F" Ref="C4"  Part="1" 
AR Path="/5FE939A9/5FEB944F" Ref="C?"  Part="1" 
F 0 "C4" V 2350 5100 50  0000 C CNN
F 1 "100n" V 2112 5100 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2250 5100 50  0001 C CNN
F 3 "~" H 2250 5100 50  0001 C CNN
	1    2250 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 5300 4500 5200
Wire Wire Line
	4500 5400 4500 5300
Connection ~ 4500 5300
$Comp
L synkie_symbols:GND #PWR017
U 1 1 5FEB9485
P 4500 5300
AR Path="/5FEB9485" Ref="#PWR017"  Part="1" 
AR Path="/5FE939A9/5FEB9485" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 4500 5050 50  0001 C CNN
F 1 "GND" H 4505 5127 50  0001 C CNN
F 2 "" H 4500 5300 50  0001 C CNN
F 3 "" H 4500 5300 50  0001 C CNN
	1    4500 5300
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C7
U 1 1 5FEB948B
P 4500 5500
AR Path="/5FEB948B" Ref="C7"  Part="1" 
AR Path="/5FE939A9/5FEB948B" Ref="C?"  Part="1" 
F 0 "C7" V 4600 5500 50  0000 C CNN
F 1 "100n" V 4362 5500 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4500 5500 50  0001 C CNN
F 3 "~" H 4500 5500 50  0001 C CNN
	1    4500 5500
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C5
U 1 1 5FEB9491
P 4500 5100
AR Path="/5FEB9491" Ref="C5"  Part="1" 
AR Path="/5FE939A9/5FEB9491" Ref="C?"  Part="1" 
F 0 "C5" V 4600 5100 50  0000 C CNN
F 1 "100n" V 4362 5100 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4500 5100 50  0001 C CNN
F 3 "~" H 4500 5100 50  0001 C CNN
	1    4500 5100
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR015
U 1 1 5FEB9497
P 4500 5000
AR Path="/5FEB9497" Ref="#PWR015"  Part="1" 
AR Path="/5FE939A9/5FEB9497" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 4500 4850 50  0001 C CNN
F 1 "+5V" H 4500 5150 50  0000 C CNN
F 2 "" H 4500 5000 50  0001 C CNN
F 3 "" H 4500 5000 50  0001 C CNN
	1    4500 5000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR021
U 1 1 5FEB949D
P 4500 5600
AR Path="/5FEB949D" Ref="#PWR021"  Part="1" 
AR Path="/5FE939A9/5FEB949D" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 4500 5700 50  0001 C CNN
F 1 "-5V" H 4500 5750 50  0000 C CNN
F 2 "" H 4500 5600 50  0001 C CNN
F 3 "" H 4500 5600 50  0001 C CNN
	1    4500 5600
	-1   0    0    1   
$EndComp
Text GLabel 5750 5000 0    50   Input ~ 0
hsync
Text GLabel 5750 4800 0    50   Input ~ 0
porch
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5C6ACCC5
P 2300 2000
F 0 "J1" H 2400 2000 50  0000 C CNN
F 1 "Supply" H 2450 2250 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 2300 2000 50  0001 C CNN
F 3 "~" H 2300 2000 50  0001 C CNN
	1    2300 2000
	-1   0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB1
U 1 1 5C6ACEE4
P 2650 1900
F 0 "FB1" V 2400 1800 50  0000 C CNN
F 1 "Ferrite_Bead" V 2500 1750 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2580 1900 50  0001 C CNN
F 3 "~" H 2650 1900 50  0001 C CNN
	1    2650 1900
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead FB2
U 1 1 5C6ACF86
P 2650 2100
F 0 "FB2" V 2900 2100 50  0000 C CNN
F 1 "Ferrite_Bead" V 2800 2050 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2580 2100 50  0001 C CNN
F 3 "~" H 2650 2100 50  0001 C CNN
	1    2650 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C6AD007
P 3100 2000
F 0 "#PWR02" H 3100 1750 50  0001 C CNN
F 1 "GND" V 3100 1900 50  0000 R CNN
F 2 "" H 3100 2000 50  0001 C CNN
F 3 "" H 3100 2000 50  0001 C CNN
	1    3100 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5C6AD4FF
P 3100 1700
F 0 "#PWR01" H 3100 1550 50  0001 C CNN
F 1 "+5V" H 3115 1873 50  0000 C CNN
F 2 "" H 3100 1700 50  0001 C CNN
F 3 "" H 3100 1700 50  0001 C CNN
	1    3100 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5C6AD59C
P 3100 1850
F 0 "C1" H 3218 1896 50  0000 L CNN
F 1 "10u" H 3218 1805 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 3138 1700 50  0001 C CNN
F 3 "~" H 3100 1850 50  0001 C CNN
	1    3100 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5C6AD7CD
P 3100 2150
F 0 "C2" H 3218 2196 50  0000 L CNN
F 1 "10u" H 3218 2105 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 3138 2000 50  0001 C CNN
F 3 "~" H 3100 2150 50  0001 C CNN
	1    3100 2150
	1    0    0    -1  
$EndComp
Connection ~ 3100 2000
Wire Wire Line
	2500 2000 3100 2000
Wire Wire Line
	2800 2100 2900 2100
Wire Wire Line
	2900 2100 2900 2300
Wire Wire Line
	2900 2300 3100 2300
Wire Wire Line
	2800 1900 2900 1900
Wire Wire Line
	2900 1900 2900 1700
Wire Wire Line
	2900 1700 3100 1700
Connection ~ 3100 1700
$Comp
L power:-5V #PWR03
U 1 1 5C6AE342
P 3100 2300
F 0 "#PWR03" H 3100 2400 50  0001 C CNN
F 1 "-5V" H 3115 2473 50  0000 C CNN
F 2 "" H 3100 2300 50  0001 C CNN
F 3 "" H 3100 2300 50  0001 C CNN
	1    3100 2300
	-1   0    0    1   
$EndComp
Connection ~ 3100 2300
$Comp
L Connector_Generic:Conn_01x10 J2
U 1 1 5FA506A0
P 4900 2000
F 0 "J2" H 4980 1992 50  0000 L CNN
F 1 "SYNC-BUS" H 4980 1901 50  0000 L CNN
F 2 "synkie_footprints:IDC-Header_2x05_P2.54mm_Vertical" H 4900 2000 50  0001 C CNN
F 3 "~" H 4900 2000 50  0001 C CNN
	1    4900 2000
	-1   0    0    -1  
$EndComp
Text GLabel 5100 1700 2    50   Input ~ 0
hsync
Text GLabel 5100 1900 2    50   Input ~ 0
porch
Text GLabel 5100 2400 2    50   Input ~ 0
vsync
Text GLabel 5100 2100 2    50   Input ~ 0
synkietxt
Text GLabel 5100 2200 2    50   Input ~ 0
synkietxt_enable
Wire Wire Line
	5100 1600 5850 1600
Wire Wire Line
	5850 2500 5100 2500
Wire Wire Line
	5100 2300 5850 2300
Connection ~ 5850 2300
Wire Wire Line
	5850 2300 5850 2500
Wire Wire Line
	5100 2000 5850 2000
Connection ~ 5850 2000
Wire Wire Line
	5850 2000 5850 2300
Wire Wire Line
	5100 1800 5850 1800
Wire Wire Line
	5850 1600 5850 1800
Connection ~ 5850 1800
Wire Wire Line
	5850 1800 5850 2000
$Comp
L synkie_symbols:GND #PWR04
U 1 1 603C1641
P 5850 2500
F 0 "#PWR04" H 5850 2250 50  0001 C CNN
F 1 "GND" H 5855 2327 50  0000 C CNN
F 2 "" H 5850 2500 50  0001 C CNN
F 3 "" H 5850 2500 50  0001 C CNN
	1    5850 2500
	-1   0    0    -1  
$EndComp
Connection ~ 5850 2500
$Comp
L Connector:Conn_Coaxial J4
U 1 1 6158DCF4
P 1500 4050
F 0 "J4" H 1428 4288 50  0000 C CNN
F 1 "Conn_Coaxial" H 1428 4197 50  0000 C CNN
F 2 "synkie_footprints:BNC_MOLEX_0731000080_Horizontal" H 1500 4050 50  0001 C CNN
F 3 " ~" H 1500 4050 50  0001 C CNN
	1    1500 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 4050 1750 4050
$Comp
L Switch:SW_SPST SW1
U 1 1 6159188A
P 1750 4250
F 0 "SW1" V 1704 4348 50  0000 L CNN
F 1 "SW_SPST" V 1795 4348 50  0000 L CNN
F 2 "synkie_footprints:PinHeader_1x02_P2.54mm_Vertical" H 1750 4250 50  0001 C CNN
F 3 "~" H 1750 4250 50  0001 C CNN
	1    1750 4250
	0    1    1    0   
$EndComp
Connection ~ 1750 4050
Wire Wire Line
	1750 4050 1700 4050
$Comp
L synkie_symbols:GND #PWR09
U 1 1 61593F44
P 1500 4250
F 0 "#PWR09" H 1500 4000 50  0001 C CNN
F 1 "GND" H 1505 4077 50  0000 C CNN
F 2 "" H 1500 4250 50  0001 C CNN
F 3 "" H 1500 4250 50  0001 C CNN
	1    1500 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 615A67E9
P 6600 2100
F 0 "J3" H 6518 2417 50  0000 C CNN
F 1 "Conn_01x04" H 6518 2326 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 6600 2100 50  0001 C CNN
F 3 "~" H 6600 2100 50  0001 C CNN
	1    6600 2100
	-1   0    0    -1  
$EndComp
Text GLabel 6800 2000 2    50   Input ~ 0
hsync
Text GLabel 6800 2200 2    50   Input ~ 0
porch
Text GLabel 6800 2100 2    50   Input ~ 0
vsync
Wire Wire Line
	6750 4400 8100 4400
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 615B8C52
P 9800 4500
F 0 "J5" H 9880 4542 50  0000 L CNN
F 1 "OUT" H 9880 4451 50  0000 L CNN
F 2 "synkie_footprints:TestPoint_THTPad_D4.0mm_Drill2.0mm" H 9800 4500 50  0001 C CNN
F 3 "~" H 9800 4500 50  0001 C CNN
	1    9800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4500 9600 4500
$Comp
L synkie_symbols:GND #PWR0101
U 1 1 615C19CF
P 5750 4100
F 0 "#PWR0101" H 5750 3850 50  0001 C CNN
F 1 "GND" H 5755 3927 50  0000 C CNN
F 2 "" H 5750 4100 50  0001 C CNN
F 3 "" H 5750 4100 50  0001 C CNN
	1    5750 4100
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0102
U 1 1 615C226B
P 5750 4200
F 0 "#PWR0102" H 5750 3950 50  0001 C CNN
F 1 "GND" H 5755 4027 50  0000 C CNN
F 2 "" H 5750 4200 50  0001 C CNN
F 3 "" H 5750 4200 50  0001 C CNN
	1    5750 4200
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0103
U 1 1 615C23CB
P 5750 4900
F 0 "#PWR0103" H 5750 4650 50  0001 C CNN
F 1 "GND" H 5755 4727 50  0000 C CNN
F 2 "" H 5750 4900 50  0001 C CNN
F 3 "" H 5750 4900 50  0001 C CNN
	1    5750 4900
	0    1    1    0   
$EndComp
Text Notes 8350 5500 0    50   ~ 0
ADD GAIN OF 1V/0.7V = 1.428
Text Notes 8350 5350 0    50   ~ 0
So Signal is true 0-1V
$Comp
L synkie_symbols:R R6
U 1 1 6154900F
P 8400 5000
F 0 "R6" V 8607 5000 50  0000 C CNN
F 1 "680" V 8516 5000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8330 5000 50  0001 C CNN
F 3 "~" H 8400 5000 50  0001 C CNN
	1    8400 5000
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:R R7
U 1 1 6154967B
P 8100 5150
F 0 "R7" V 8307 5150 50  0000 C CNN
F 1 "1k6" V 8216 5150 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8030 5150 50  0001 C CNN
F 3 "~" H 8100 5150 50  0001 C CNN
	1    8100 5150
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0104
U 1 1 61549BEC
P 8100 5300
F 0 "#PWR0104" H 8100 5050 50  0001 C CNN
F 1 "GND" H 8105 5127 50  0000 C CNN
F 2 "" H 8100 5300 50  0001 C CNN
F 3 "" H 8100 5300 50  0001 C CNN
	1    8100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5000 8700 5000
Wire Wire Line
	8250 5000 8100 5000
Wire Wire Line
	8100 4600 8100 5000
Wire Wire Line
	8700 4500 8700 5000
Connection ~ 8100 5000
$EndSCHEMATC
