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
L Anyma_Library:VEML3328 U5
U 1 1 6119A928
P 6650 4650
F 0 "U5" H 6828 4676 50  0000 L CNN
F 1 "VEML3328" H 6828 4585 50  0000 L CNN
F 2 "anyma_footprints:VEML3328SL" H 6700 4350 50  0001 C CNN
F 3 "" H 6700 4350 50  0001 C CNN
	1    6650 4650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX5741 U4
U 1 1 6119AE9F
P 5550 3700
F 0 "U4" H 5550 3211 50  0000 C CNN
F 1 "MAX5741" H 5550 3120 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 5550 3000 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX5741.pdf" H 6300 4350 50  0001 C CNN
	1    5550 3700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:ADR510 U3
U 1 1 6119BB6D
P 6350 3000
F 0 "U3" H 6578 3046 50  0000 L CNN
F 1 "ADR510" H 6578 2955 50  0000 L CNN
F 2 "synkie_footprints:SOT-23" H 5900 2900 50  0001 C CNN
F 3 "" H 5900 2900 50  0001 C CNN
	1    6350 3000
	1    0    0    -1  
$EndComp
Text Label 2550 2250 0    50   ~ 0
sck
Text Label 5050 3700 2    50   ~ 0
sck
$Comp
L Anyma_Library:AnymaISP U7
U 1 1 6119C984
P 3150 5550
F 0 "U7" H 3478 5746 50  0000 L CNN
F 1 "AnymaISP" H 3478 5655 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3150 5550 50  0001 C CNN
F 3 "" H 3150 5550 50  0001 C CNN
	1    3150 5550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AZ1117-3.3 U1
U 1 1 6119D794
P 4750 1150
F 0 "U1" H 4750 1392 50  0000 C CNN
F 1 "AZ1117-3.3" H 4750 1301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4750 1400 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 4750 1150 50  0001 C CNN
	1    4750 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 6119E599
P 4450 1150
F 0 "#PWR0101" H 4450 1000 50  0001 C CNN
F 1 "+5V" H 4465 1323 50  0000 C CNN
F 2 "" H 4450 1150 50  0001 C CNN
F 3 "" H 4450 1150 50  0001 C CNN
	1    4450 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0102
U 1 1 6119EE45
P 5050 1150
F 0 "#PWR0102" H 5050 1000 50  0001 C CNN
F 1 "+3V3" H 5065 1323 50  0000 C CNN
F 2 "" H 5050 1150 50  0001 C CNN
F 3 "" H 5050 1150 50  0001 C CNN
	1    5050 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6119F471
P 4750 1450
F 0 "#PWR0103" H 4750 1200 50  0001 C CNN
F 1 "GND" H 4755 1277 50  0000 C CNN
F 2 "" H 4750 1450 50  0001 C CNN
F 3 "" H 4750 1450 50  0001 C CNN
	1    4750 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 6119FCE0
P 3250 950
F 0 "J1" H 3168 1267 50  0000 C CNN
F 1 "Conn_01x03" H 3168 1176 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 3250 950 50  0001 C CNN
F 3 "~" H 3250 950 50  0001 C CNN
	1    3250 950 
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 611A0C6A
P 3750 850
F 0 "#PWR0104" H 3750 700 50  0001 C CNN
F 1 "+5V" H 3765 1023 50  0000 C CNN
F 2 "" H 3750 850 50  0001 C CNN
F 3 "" H 3750 850 50  0001 C CNN
	1    3750 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 611A1170
P 3450 950
F 0 "#PWR0105" H 3450 700 50  0001 C CNN
F 1 "GND" V 3455 822 50  0000 R CNN
F 2 "" H 3450 950 50  0001 C CNN
F 3 "" H 3450 950 50  0001 C CNN
	1    3450 950 
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB1
U 1 1 611A2306
P 3600 850
F 0 "FB1" V 3326 850 50  0000 C CNN
F 1 "Ferrite_Bead" V 3417 850 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3530 850 50  0001 C CNN
F 3 "~" H 3600 850 50  0001 C CNN
	1    3600 850 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 611A3526
P 5900 950
F 0 "#PWR0106" H 5900 800 50  0001 C CNN
F 1 "+5V" H 5915 1123 50  0000 C CNN
F 2 "" H 5900 950 50  0001 C CNN
F 3 "" H 5900 950 50  0001 C CNN
	1    5900 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 611A3BA4
P 5900 1100
F 0 "C1" H 6018 1146 50  0000 L CNN
F 1 "10u" H 6018 1055 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 5938 950 50  0001 C CNN
F 3 "~" H 5900 1100 50  0001 C CNN
	1    5900 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 611A3E08
P 5900 1250
F 0 "#PWR0107" H 5900 1000 50  0001 C CNN
F 1 "GND" H 5905 1077 50  0000 C CNN
F 2 "" H 5900 1250 50  0001 C CNN
F 3 "" H 5900 1250 50  0001 C CNN
	1    5900 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0108
U 1 1 611A431B
P 6350 1000
F 0 "#PWR0108" H 6350 850 50  0001 C CNN
F 1 "+3V3" H 6365 1173 50  0000 C CNN
F 2 "" H 6350 1000 50  0001 C CNN
F 3 "" H 6350 1000 50  0001 C CNN
	1    6350 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 611A4A83
P 6350 1150
F 0 "C3" H 6468 1196 50  0000 L CNN
F 1 "10u" H 6468 1105 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 6388 1000 50  0001 C CNN
F 3 "~" H 6350 1150 50  0001 C CNN
	1    6350 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 611A4A8D
P 6350 1300
F 0 "#PWR0109" H 6350 1050 50  0001 C CNN
F 1 "GND" H 6355 1127 50  0000 C CNN
F 2 "" H 6350 1300 50  0001 C CNN
F 3 "" H 6350 1300 50  0001 C CNN
	1    6350 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 611A5709
P 5600 1000
F 0 "#PWR0110" H 5600 850 50  0001 C CNN
F 1 "+5V" H 5615 1173 50  0000 C CNN
F 2 "" H 5600 1000 50  0001 C CNN
F 3 "" H 5600 1000 50  0001 C CNN
	1    5600 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 611A5D26
P 5600 1150
F 0 "C2" H 5715 1196 50  0000 L CNN
F 1 "100n" H 5715 1105 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5638 1000 50  0001 C CNN
F 3 "~" H 5600 1150 50  0001 C CNN
	1    5600 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 611A627A
P 5600 1300
F 0 "#PWR0111" H 5600 1050 50  0001 C CNN
F 1 "GND" H 5605 1127 50  0000 C CNN
F 2 "" H 5600 1300 50  0001 C CNN
F 3 "" H 5600 1300 50  0001 C CNN
	1    5600 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 611A695F
P 6950 1150
F 0 "C4" H 7065 1196 50  0000 L CNN
F 1 "100n" H 7065 1105 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6988 1000 50  0001 C CNN
F 3 "~" H 6950 1150 50  0001 C CNN
	1    6950 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 611A6969
P 6950 1300
F 0 "#PWR0112" H 6950 1050 50  0001 C CNN
F 1 "GND" H 6955 1127 50  0000 C CNN
F 2 "" H 6950 1300 50  0001 C CNN
F 3 "" H 6950 1300 50  0001 C CNN
	1    6950 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0113
U 1 1 611A729C
P 6950 1000
F 0 "#PWR0113" H 6950 850 50  0001 C CNN
F 1 "+3V3" H 6965 1173 50  0000 C CNN
F 2 "" H 6950 1000 50  0001 C CNN
F 3 "" H 6950 1000 50  0001 C CNN
	1    6950 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 611A7A11
P 7350 1150
F 0 "C5" H 7465 1196 50  0000 L CNN
F 1 "100n" H 7465 1105 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7388 1000 50  0001 C CNN
F 3 "~" H 7350 1150 50  0001 C CNN
	1    7350 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 611A7A1B
P 7350 1300
F 0 "#PWR0114" H 7350 1050 50  0001 C CNN
F 1 "GND" H 7355 1127 50  0000 C CNN
F 2 "" H 7350 1300 50  0001 C CNN
F 3 "" H 7350 1300 50  0001 C CNN
	1    7350 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 611A7A25
P 7350 1000
F 0 "#PWR0115" H 7350 850 50  0001 C CNN
F 1 "+3V3" H 7365 1173 50  0000 C CNN
F 2 "" H 7350 1000 50  0001 C CNN
F 3 "" H 7350 1000 50  0001 C CNN
	1    7350 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0116
U 1 1 611A860C
P 6400 4500
F 0 "#PWR0116" H 6400 4350 50  0001 C CNN
F 1 "+3V3" H 6415 4673 50  0000 C CNN
F 2 "" H 6400 4500 50  0001 C CNN
F 3 "" H 6400 4500 50  0001 C CNN
	1    6400 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 611A8E21
P 6400 4600
F 0 "#PWR0117" H 6400 4350 50  0001 C CNN
F 1 "GND" V 6405 4472 50  0000 R CNN
F 2 "" H 6400 4600 50  0001 C CNN
F 3 "" H 6400 4600 50  0001 C CNN
	1    6400 4600
	0    1    1    0   
$EndComp
Text Label 6400 4750 2    50   ~ 0
sda
Text Label 6400 4850 2    50   ~ 0
scl
Text Label 4000 2000 2    50   ~ 0
sda_1
$Comp
L Device:R R1
U 1 1 611AA3AB
P 4050 1800
F 0 "R1" H 4120 1846 50  0000 L CNN
F 1 "4k7" H 4120 1755 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3980 1800 50  0001 C CNN
F 3 "~" H 4050 1800 50  0001 C CNN
	1    4050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0118
U 1 1 611AAB1F
P 4050 1650
F 0 "#PWR0118" H 4050 1500 50  0001 C CNN
F 1 "+3V3" H 4065 1823 50  0000 C CNN
F 2 "" H 4050 1650 50  0001 C CNN
F 3 "" H 4050 1650 50  0001 C CNN
	1    4050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1950 4050 2000
Wire Wire Line
	4050 2000 4000 2000
$Comp
L Device:R R2
U 1 1 611AB4AE
P 4400 1800
F 0 "R2" H 4470 1846 50  0000 L CNN
F 1 "4k7" H 4470 1755 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4330 1800 50  0001 C CNN
F 3 "~" H 4400 1800 50  0001 C CNN
	1    4400 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0119
U 1 1 611AB4B8
P 4400 1650
F 0 "#PWR0119" H 4400 1500 50  0001 C CNN
F 1 "+3V3" H 4415 1823 50  0000 C CNN
F 2 "" H 4400 1650 50  0001 C CNN
F 3 "" H 4400 1650 50  0001 C CNN
	1    4400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1950 4400 2000
Wire Wire Line
	4400 2000 4350 2000
Text Label 2550 3050 0    50   ~ 0
sda_1
$Comp
L synkie_symbols:ATmega88-20AU U2
U 1 1 611AC84A
P 1950 2950
F 0 "U2" H 1950 1361 50  0000 C CNN
F 1 "ATmega88-20AU" H 1950 1270 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 1950 2950 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-2545-8-bit-AVR-Microcontroller-ATmega48-88-168_Datasheet.pdf" H 1950 2950 50  0001 C CNN
	1    1950 2950
	1    0    0    -1  
$EndComp
Text Label 4350 2000 2    50   ~ 0
scl_1
Text Label 2550 3150 0    50   ~ 0
scl_1
Text Label 2550 2150 0    50   ~ 0
miso
Text Label 2550 2050 0    50   ~ 0
mosi
Text Label 2550 1950 0    50   ~ 0
cs
Text Label 5050 3500 2    50   ~ 0
cs
Text Label 5050 3800 2    50   ~ 0
mosi
$Comp
L power:+3V3 #PWR0120
U 1 1 611B0F34
P 5550 3300
F 0 "#PWR0120" H 5550 3150 50  0001 C CNN
F 1 "+3V3" H 5565 3473 50  0000 C CNN
F 2 "" H 5550 3300 50  0001 C CNN
F 3 "" H 5550 3300 50  0001 C CNN
	1    5550 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0121
U 1 1 611B1B0D
P 1950 1450
F 0 "#PWR0121" H 1950 1300 50  0001 C CNN
F 1 "+3V3" H 1965 1623 50  0000 C CNN
F 2 "" H 1950 1450 50  0001 C CNN
F 3 "" H 1950 1450 50  0001 C CNN
	1    1950 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0122
U 1 1 611B259B
P 2050 1450
F 0 "#PWR0122" H 2050 1300 50  0001 C CNN
F 1 "+3V3" H 2065 1623 50  0000 C CNN
F 2 "" H 2050 1450 50  0001 C CNN
F 3 "" H 2050 1450 50  0001 C CNN
	1    2050 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 611B2D1B
P 1200 1750
F 0 "C6" V 948 1750 50  0000 C CNN
F 1 "100n" V 1039 1750 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1238 1600 50  0001 C CNN
F 3 "~" H 1200 1750 50  0001 C CNN
	1    1200 1750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 611B36AC
P 1050 1750
F 0 "#PWR0123" H 1050 1500 50  0001 C CNN
F 1 "GND" H 1055 1577 50  0000 C CNN
F 2 "" H 1050 1750 50  0001 C CNN
F 3 "" H 1050 1750 50  0001 C CNN
	1    1050 1750
	1    0    0    -1  
$EndComp
Text Label 3050 5450 2    50   ~ 0
sck
Text Label 3050 5550 2    50   ~ 0
miso
Text Label 3050 5650 2    50   ~ 0
mosi
Text Label 3050 5350 2    50   ~ 0
reset
$Comp
L power:GND #PWR0124
U 1 1 611B4503
P 5550 4100
F 0 "#PWR0124" H 5550 3850 50  0001 C CNN
F 1 "GND" H 5555 3927 50  0000 C CNN
F 2 "" H 5550 4100 50  0001 C CNN
F 3 "" H 5550 4100 50  0001 C CNN
	1    5550 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 611B49F3
P 1950 4450
F 0 "#PWR0125" H 1950 4200 50  0001 C CNN
F 1 "GND" H 1955 4277 50  0000 C CNN
F 2 "" H 1950 4450 50  0001 C CNN
F 3 "" H 1950 4450 50  0001 C CNN
	1    1950 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 611B5071
P 3050 5150
F 0 "#PWR0126" H 3050 4900 50  0001 C CNN
F 1 "GND" V 3055 5022 50  0000 R CNN
F 2 "" H 3050 5150 50  0001 C CNN
F 3 "" H 3050 5150 50  0001 C CNN
	1    3050 5150
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0127
U 1 1 611B6F58
P 3050 5250
F 0 "#PWR0127" H 3050 5100 50  0001 C CNN
F 1 "+3V3" V 3065 5378 50  0000 L CNN
F 2 "" H 3050 5250 50  0001 C CNN
F 3 "" H 3050 5250 50  0001 C CNN
	1    3050 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 2900 5450 2900
Wire Wire Line
	5450 2900 5450 3300
$Comp
L power:GND #PWR0128
U 1 1 611B92A3
P 6050 3000
F 0 "#PWR0128" H 6050 2750 50  0001 C CNN
F 1 "GND" V 6055 2872 50  0000 R CNN
F 2 "" H 6050 3000 50  0001 C CNN
F 3 "" H 6050 3000 50  0001 C CNN
	1    6050 3000
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0129
U 1 1 611BB49C
P 5450 2600
F 0 "#PWR0129" H 5450 2450 50  0001 C CNN
F 1 "+3V3" H 5465 2773 50  0000 C CNN
F 2 "" H 5450 2600 50  0001 C CNN
F 3 "" H 5450 2600 50  0001 C CNN
	1    5450 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 611BBC17
P 5450 2750
F 0 "R3" H 5520 2796 50  0000 L CNN
F 1 "560" H 5520 2705 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5380 2750 50  0001 C CNN
F 3 "~" H 5450 2750 50  0001 C CNN
	1    5450 2750
	1    0    0    -1  
$EndComp
Connection ~ 5450 2900
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 611BD123
P 6250 3500
F 0 "J3" H 6330 3542 50  0000 L CNN
F 1 "Conn_01x01" H 6330 3451 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 6250 3500 50  0001 C CNN
F 3 "~" H 6250 3500 50  0001 C CNN
	1    6250 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 611BD4D6
P 6250 3600
F 0 "J5" H 6330 3642 50  0000 L CNN
F 1 "Conn_01x01" H 6330 3551 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 6250 3600 50  0001 C CNN
F 3 "~" H 6250 3600 50  0001 C CNN
	1    6250 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 611BD641
P 6250 3700
F 0 "J6" H 6330 3742 50  0000 L CNN
F 1 "Conn_01x01" H 6330 3651 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 6250 3700 50  0001 C CNN
F 3 "~" H 6250 3700 50  0001 C CNN
	1    6250 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 611BD7D6
P 6250 3800
F 0 "J7" H 6330 3842 50  0000 L CNN
F 1 "Conn_01x01" H 6330 3751 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 6250 3800 50  0001 C CNN
F 3 "~" H 6250 3800 50  0001 C CNN
	1    6250 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J8
U 1 1 611C035C
P 5750 5300
F 0 "J8" H 5830 5292 50  0000 L CNN
F 1 "int" H 5830 5201 50  0000 L CNN
F 2 "anyma_footprints:smd-4pin" H 5750 5300 50  0001 C CNN
F 3 "~" H 5750 5300 50  0001 C CNN
	1    5750 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0132
U 1 1 611C0FCE
P 5550 5200
F 0 "#PWR0132" H 5550 5050 50  0001 C CNN
F 1 "+3V3" H 5565 5373 50  0000 C CNN
F 2 "" H 5550 5200 50  0001 C CNN
F 3 "" H 5550 5200 50  0001 C CNN
	1    5550 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 611C16C0
P 5550 5300
F 0 "#PWR0133" H 5550 5050 50  0001 C CNN
F 1 "GND" V 5555 5172 50  0000 R CNN
F 2 "" H 5550 5300 50  0001 C CNN
F 3 "" H 5550 5300 50  0001 C CNN
	1    5550 5300
	0    1    1    0   
$EndComp
Text Label 5550 5400 2    50   ~ 0
sda_1
Text Label 5550 5500 2    50   ~ 0
scl_1
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 611C5019
P 6800 5300
F 0 "J9" H 6880 5292 50  0000 L CNN
F 1 "Conn_01x04" H 6880 5201 50  0000 L CNN
F 2 "anyma_footprints:smd-4pin" H 6800 5300 50  0001 C CNN
F 3 "~" H 6800 5300 50  0001 C CNN
	1    6800 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0134
U 1 1 611C501F
P 6600 5200
F 0 "#PWR0134" H 6600 5050 50  0001 C CNN
F 1 "+3V3" H 6615 5373 50  0000 C CNN
F 2 "" H 6600 5200 50  0001 C CNN
F 3 "" H 6600 5200 50  0001 C CNN
	1    6600 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 611C5025
P 6600 5300
F 0 "#PWR0135" H 6600 5050 50  0001 C CNN
F 1 "GND" V 6605 5172 50  0000 R CNN
F 2 "" H 6600 5300 50  0001 C CNN
F 3 "" H 6600 5300 50  0001 C CNN
	1    6600 5300
	0    1    1    0   
$EndComp
Text Label 6600 5400 2    50   ~ 0
sda
Text Label 6600 5500 2    50   ~ 0
scl
$Comp
L Device:R_POT RV4
U 1 1 611C691C
P 8100 2100
F 0 "RV4" H 8031 2146 50  0000 R CNN
F 1 "R_POT" H 8031 2055 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09L_Single_Horizontal" H 8100 2100 50  0001 C CNN
F 3 "~" H 8100 2100 50  0001 C CNN
	1    8100 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0138
U 1 1 611C7B97
P 8100 1950
F 0 "#PWR0138" H 8100 1800 50  0001 C CNN
F 1 "+3V3" H 8115 2123 50  0000 C CNN
F 2 "" H 8100 1950 50  0001 C CNN
F 3 "" H 8100 1950 50  0001 C CNN
	1    8100 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 611C85DA
P 8100 2250
F 0 "#PWR0139" H 8100 2000 50  0001 C CNN
F 1 "GND" H 8105 2077 50  0000 C CNN
F 2 "" H 8100 2250 50  0001 C CNN
F 3 "" H 8100 2250 50  0001 C CNN
	1    8100 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 611CBA7E
P 8750 2050
F 0 "RV1" H 8681 2096 50  0000 R CNN
F 1 "R_POT" H 8681 2005 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09L_Single_Horizontal" H 8750 2050 50  0001 C CNN
F 3 "~" H 8750 2050 50  0001 C CNN
	1    8750 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0140
U 1 1 611CBA84
P 8750 1900
F 0 "#PWR0140" H 8750 1750 50  0001 C CNN
F 1 "+3V3" H 8765 2073 50  0000 C CNN
F 2 "" H 8750 1900 50  0001 C CNN
F 3 "" H 8750 1900 50  0001 C CNN
	1    8750 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 611CBA8A
P 8750 2200
F 0 "#PWR0141" H 8750 1950 50  0001 C CNN
F 1 "GND" H 8755 2027 50  0000 C CNN
F 2 "" H 8750 2200 50  0001 C CNN
F 3 "" H 8750 2200 50  0001 C CNN
	1    8750 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 611CD3D2
P 9350 2050
F 0 "RV2" H 9281 2096 50  0000 R CNN
F 1 "R_POT" H 9281 2005 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09L_Single_Horizontal" H 9350 2050 50  0001 C CNN
F 3 "~" H 9350 2050 50  0001 C CNN
	1    9350 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0142
U 1 1 611CD3D8
P 9350 1900
F 0 "#PWR0142" H 9350 1750 50  0001 C CNN
F 1 "+3V3" H 9365 2073 50  0000 C CNN
F 2 "" H 9350 1900 50  0001 C CNN
F 3 "" H 9350 1900 50  0001 C CNN
	1    9350 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 611CD3DE
P 9350 2200
F 0 "#PWR0143" H 9350 1950 50  0001 C CNN
F 1 "GND" H 9355 2027 50  0000 C CNN
F 2 "" H 9350 2200 50  0001 C CNN
F 3 "" H 9350 2200 50  0001 C CNN
	1    9350 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 611CE117
P 9950 2050
F 0 "RV3" H 9881 2096 50  0000 R CNN
F 1 "R_POT" H 9881 2005 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09L_Single_Horizontal" H 9950 2050 50  0001 C CNN
F 3 "~" H 9950 2050 50  0001 C CNN
	1    9950 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0144
U 1 1 611CE11D
P 9950 1900
F 0 "#PWR0144" H 9950 1750 50  0001 C CNN
F 1 "+3V3" H 9965 2073 50  0000 C CNN
F 2 "" H 9950 1900 50  0001 C CNN
F 3 "" H 9950 1900 50  0001 C CNN
	1    9950 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0145
U 1 1 611CE123
P 9950 2200
F 0 "#PWR0145" H 9950 1950 50  0001 C CNN
F 1 "GND" H 9955 2027 50  0000 C CNN
F 2 "" H 9950 2200 50  0001 C CNN
F 3 "" H 9950 2200 50  0001 C CNN
	1    9950 2200
	1    0    0    -1  
$EndComp
Text Label 8250 2100 0    50   ~ 0
a
Text Label 8900 2050 0    50   ~ 0
b
Text Label 9500 2050 0    50   ~ 0
c
Text Label 10100 2050 0    50   ~ 0
d
Text Label 2550 2650 0    50   ~ 0
a
Text Label 2550 2750 0    50   ~ 0
b
Text Label 2550 2850 0    50   ~ 0
c
Text Label 2550 2950 0    50   ~ 0
d
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 611D1928
P 3100 3550
F 0 "J4" H 3180 3592 50  0000 L CNN
F 1 "Serial" H 3180 3501 50  0000 L CNN
F 2 "synkie_footprints:PinHeader_1x03_P2.54mm_Vertical" H 3100 3550 50  0001 C CNN
F 3 "~" H 3100 3550 50  0001 C CNN
	1    3100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3450 2900 3450
Wire Wire Line
	2550 3550 2900 3550
$Comp
L power:GND #PWR0146
U 1 1 611D2F45
P 2900 3650
F 0 "#PWR0146" H 2900 3400 50  0001 C CNN
F 1 "GND" H 2905 3477 50  0000 C CNN
F 2 "" H 2900 3650 50  0001 C CNN
F 3 "" H 2900 3650 50  0001 C CNN
	1    2900 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 611D409B
P 3250 1850
F 0 "J2" H 3222 1732 50  0000 R CNN
F 1 "switch" H 3222 1823 50  0000 R CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 3250 1850 50  0001 C CNN
F 3 "~" H 3250 1850 50  0001 C CNN
	1    3250 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 1750 3050 1750
$Comp
L power:GND #PWR0147
U 1 1 611D5230
P 3050 1850
F 0 "#PWR0147" H 3050 1600 50  0001 C CNN
F 1 "GND" H 3055 1677 50  0000 C CNN
F 2 "" H 3050 1850 50  0001 C CNN
F 3 "" H 3050 1850 50  0001 C CNN
	1    3050 1850
	1    0    0    -1  
$EndComp
Text Label 2550 3250 0    50   ~ 0
reset
$EndSCHEMATC
