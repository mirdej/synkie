EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 6050 6400 0    50   ~ 0
en
$Comp
L Device:R R?
U 1 1 6168FD9C
P 6050 6250
AR Path="/6168FD9C" Ref="R?"  Part="1" 
AR Path="/61949FCF/6168FD9C" Ref="R?"  Part="1" 
AR Path="/6168537C/6168FD9C" Ref="R18"  Part="1" 
F 0 "R18" H 6120 6296 50  0000 L CNN
F 1 "10k" H 6120 6205 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5980 6250 50  0001 C CNN
F 3 "~" H 6050 6250 50  0001 C CNN
	1    6050 6250
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:3V3 #PWR?
U 1 1 6168FDA2
P 6050 6100
AR Path="/6168FDA2" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FDA2" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FDA2" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 6050 5950 50  0001 C CNN
F 1 "3V3" H 6065 6273 50  0000 C CNN
F 2 "" H 6050 6100 50  0000 C CNN
F 3 "" H 6050 6100 50  0000 C CNN
	1    6050 6100
	1    0    0    -1  
$EndComp
Text Label 2400 5400 2    50   ~ 0
tx
Text Label 2400 5300 2    50   ~ 0
rx
Text Label 2700 5600 2    50   ~ 0
led
Text Label 3650 6450 3    50   ~ 0
tx
$Comp
L tinkerforge:3V3 #PWR?
U 1 1 6168FDAC
P 3650 6150
AR Path="/6168FDAC" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FDAC" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FDAC" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 3650 6000 50  0001 C CNN
F 1 "3V3" H 3665 6323 50  0000 C CNN
F 2 "" H 3650 6150 50  0000 C CNN
F 3 "" H 3650 6150 50  0000 C CNN
	1    3650 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6168FDB2
P 3850 6300
AR Path="/6168FDB2" Ref="R?"  Part="1" 
AR Path="/61949FCF/6168FDB2" Ref="R?"  Part="1" 
AR Path="/6168537C/6168FDB2" Ref="R20"  Part="1" 
F 0 "R20" V 3643 6300 50  0001 C CNN
F 1 "10k" V 3850 6300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 6300 50  0001 C CNN
F 3 "~" H 3850 6300 50  0001 C CNN
	1    3850 6300
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:3V3 #PWR?
U 1 1 6168FDB8
P 3850 6150
AR Path="/6168FDB8" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FDB8" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FDB8" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 3850 6000 50  0001 C CNN
F 1 "3V3" H 3865 6323 50  0000 C CNN
F 2 "" H 3850 6150 50  0000 C CNN
F 3 "" H 3850 6150 50  0000 C CNN
	1    3850 6150
	1    0    0    -1  
$EndComp
Text Label 5200 6250 2    50   ~ 0
gpio0
Text Label 5200 6150 2    50   ~ 0
en
$Comp
L Device:C C?
U 1 1 6168FDC0
P 6050 6550
AR Path="/6168FDC0" Ref="C?"  Part="1" 
AR Path="/61949FCF/6168FDC0" Ref="C?"  Part="1" 
AR Path="/6168537C/6168FDC0" Ref="C21"  Part="1" 
F 0 "C21" H 5935 6504 50  0000 R CNN
F 1 "1u" H 5935 6595 50  0000 R CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6088 6400 50  0001 C CNN
F 3 "~" H 6050 6550 50  0001 C CNN
	1    6050 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6168FDC6
P 6050 6700
AR Path="/6168FDC6" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FDC6" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FDC6" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 6050 6450 50  0001 C CNN
F 1 "GND" H 6055 6527 50  0000 C CNN
F 2 "" H 6050 6700 50  0001 C CNN
F 3 "" H 6050 6700 50  0001 C CNN
	1    6050 6700
	1    0    0    -1  
$EndComp
Text Label 5200 6450 2    50   ~ 0
tx
Text Label 5200 6350 2    50   ~ 0
rx
$Comp
L power:GND #PWR?
U 1 1 6168FDCE
P 5200 6550
AR Path="/6168FDCE" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FDCE" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FDCE" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 5200 6300 50  0001 C CNN
F 1 "GND" H 5205 6377 50  0000 C CNN
F 2 "" H 5200 6550 50  0001 C CNN
F 3 "" H 5200 6550 50  0001 C CNN
	1    5200 6550
	1    0    0    -1  
$EndComp
Text Label 3850 6450 3    50   ~ 0
gpio0
$Comp
L Anyma_Library:ESP32-WROOM U?
U 1 1 6168FDD7
P 2900 5700
AR Path="/6168FDD7" Ref="U?"  Part="1" 
AR Path="/61949FCF/6168FDD7" Ref="U?"  Part="1" 
AR Path="/6168537C/6168FDD7" Ref="U7"  Part="1" 
F 0 "U7" H 4375 9115 50  0000 C CNN
F 1 "ESP32-WROOM" H 4375 9024 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 3100 7700 50  0001 C CNN
F 3 "" H 3100 7700 50  0001 C CNN
	1    2900 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6168FDDD
P 2700 4000
AR Path="/6168FDDD" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FDDD" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FDDD" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 2700 3750 50  0001 C CNN
F 1 "GND" H 2705 3827 50  0000 C CNN
F 2 "" H 2700 4000 50  0001 C CNN
F 3 "" H 2700 4000 50  0001 C CNN
	1    2700 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6168FDE3
P 2700 3850
AR Path="/6168FDE3" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FDE3" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FDE3" Ref="#PWR0153"  Part="1" 
F 0 "#PWR0153" H 2700 3600 50  0001 C CNN
F 1 "GND" H 2705 3677 50  0000 C CNN
F 2 "" H 2700 3850 50  0001 C CNN
F 3 "" H 2700 3850 50  0001 C CNN
	1    2700 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6168FDE9
P 2700 4300
AR Path="/6168FDE9" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FDE9" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FDE9" Ref="#PWR0154"  Part="1" 
F 0 "#PWR0154" H 2700 4050 50  0001 C CNN
F 1 "GND" H 2705 4127 50  0000 C CNN
F 2 "" H 2700 4300 50  0001 C CNN
F 3 "" H 2700 4300 50  0001 C CNN
	1    2700 4300
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:3V3 #PWR?
U 1 1 6168FDEF
P 2700 4200
AR Path="/6168FDEF" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FDEF" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FDEF" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 2700 4050 50  0001 C CNN
F 1 "3V3" H 2715 4373 50  0000 C CNN
F 2 "" H 2700 4200 50  0000 C CNN
F 3 "" H 2700 4200 50  0000 C CNN
	1    2700 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6168FDF5
P 2550 5300
AR Path="/6168FDF5" Ref="R?"  Part="1" 
AR Path="/61949FCF/6168FDF5" Ref="R?"  Part="1" 
AR Path="/6168537C/6168FDF5" Ref="R16"  Part="1" 
F 0 "R16" V 2550 4900 50  0001 C CNN
F 1 "330" V 2550 5300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2480 5300 50  0001 C CNN
F 3 "~" H 2550 5300 50  0001 C CNN
	1    2550 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6168FDFB
P 2550 5400
AR Path="/6168FDFB" Ref="R?"  Part="1" 
AR Path="/61949FCF/6168FDFB" Ref="R?"  Part="1" 
AR Path="/6168537C/6168FDFB" Ref="R17"  Part="1" 
F 0 "R17" V 2550 5000 50  0001 C CNN
F 1 "330" V 2550 5400 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2480 5400 50  0001 C CNN
F 3 "~" H 2550 5400 50  0001 C CNN
	1    2550 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6168FE01
P 3650 6300
AR Path="/6168FE01" Ref="R?"  Part="1" 
AR Path="/61949FCF/6168FE01" Ref="R?"  Part="1" 
AR Path="/6168537C/6168FE01" Ref="R19"  Part="1" 
F 0 "R19" H 3720 6346 50  0001 L CNN
F 1 "10k" V 3650 6250 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3580 6300 50  0001 C CNN
F 3 "~" H 3650 6300 50  0001 C CNN
	1    3650 6300
	1    0    0    -1  
$EndComp
Text Label 6050 5600 3    50   ~ 0
gpio0
$Comp
L Device:R R?
U 1 1 6168FE08
P 4050 6300
AR Path="/6168FE08" Ref="R?"  Part="1" 
AR Path="/61949FCF/6168FE08" Ref="R?"  Part="1" 
AR Path="/6168537C/6168FE08" Ref="R21"  Part="1" 
F 0 "R21" V 3843 6300 50  0001 C CNN
F 1 "10k" V 4050 6300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3980 6300 50  0001 C CNN
F 3 "~" H 4050 6300 50  0001 C CNN
	1    4050 6300
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:3V3 #PWR?
U 1 1 6168FE0E
P 4050 6150
AR Path="/6168FE0E" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FE0E" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FE0E" Ref="#PWR0156"  Part="1" 
F 0 "#PWR0156" H 4050 6000 50  0001 C CNN
F 1 "3V3" H 4065 6323 50  0000 C CNN
F 2 "" H 4050 6150 50  0000 C CNN
F 3 "" H 4050 6150 50  0000 C CNN
	1    4050 6150
	1    0    0    -1  
$EndComp
Text Label 4050 6450 3    50   ~ 0
cs
Text Notes 3650 6800 0    50   ~ 0
Strapping Pins\n
$Comp
L Device:R R?
U 1 1 6168FE16
P 4250 6300
AR Path="/6168FE16" Ref="R?"  Part="1" 
AR Path="/61949FCF/6168FE16" Ref="R?"  Part="1" 
AR Path="/6168537C/6168FE16" Ref="R22"  Part="1" 
F 0 "R22" V 4043 6300 50  0001 C CNN
F 1 "10k" V 4250 6300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4180 6300 50  0001 C CNN
F 3 "~" H 4250 6300 50  0001 C CNN
	1    4250 6300
	1    0    0    -1  
$EndComp
Text Label 4250 6150 2    50   ~ 0
led
$Comp
L power:GND #PWR?
U 1 1 6168FE1D
P 4250 6450
AR Path="/6168FE1D" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FE1D" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FE1D" Ref="#PWR0157"  Part="1" 
F 0 "#PWR0157" H 4250 6200 50  0001 C CNN
F 1 "GND" H 4255 6277 50  0000 C CNN
F 2 "" H 4250 6450 50  0001 C CNN
F 3 "" H 4250 6450 50  0001 C CNN
	1    4250 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 6168FE23
P 5400 6250
AR Path="/6168FE23" Ref="J?"  Part="1" 
AR Path="/61949FCF/6168FE23" Ref="J?"  Part="1" 
AR Path="/6168537C/6168FE23" Ref="J17"  Part="1" 
F 0 "J17" H 5480 6242 50  0000 L CNN
F 1 "Conn_01x06" H 5480 6151 50  0000 L CNN
F 2 "anyma_footprints:Pinhead_SMD_6" H 5400 6250 50  0001 C CNN
F 3 "~" H 5400 6250 50  0001 C CNN
	1    5400 6250
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:3V3 #PWR?
U 1 1 6168FE29
P 5200 6050
AR Path="/6168FE29" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FE29" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FE29" Ref="#PWR0158"  Part="1" 
F 0 "#PWR0158" H 5200 5900 50  0001 C CNN
F 1 "3V3" H 5215 6223 50  0000 C CNN
F 2 "" H 5200 6050 50  0000 C CNN
F 3 "" H 5200 6050 50  0000 C CNN
	1    5200 6050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:SK6812MINI D?
U 1 1 6168FE2F
P 2700 6250
AR Path="/6168FE2F" Ref="D?"  Part="1" 
AR Path="/61949FCF/6168FE2F" Ref="D?"  Part="1" 
AR Path="/6168537C/6168FE2F" Ref="D3"  Part="1" 
F 0 "D3" H 3044 6296 50  0000 L CNN
F 1 "SK6812MINI" H 3044 6205 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 2750 5950 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 2800 5875 50  0001 L TNN
	1    2700 6250
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:3V3 #PWR?
U 1 1 6168FE35
P 2700 5950
AR Path="/6168FE35" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FE35" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FE35" Ref="#PWR0159"  Part="1" 
F 0 "#PWR0159" H 2700 5800 50  0001 C CNN
F 1 "3V3" H 2715 6123 50  0000 C CNN
F 2 "" H 2700 5950 50  0000 C CNN
F 3 "" H 2700 5950 50  0000 C CNN
	1    2700 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6168FE3B
P 2700 6550
AR Path="/6168FE3B" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FE3B" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FE3B" Ref="#PWR0160"  Part="1" 
F 0 "#PWR0160" H 2700 6300 50  0001 C CNN
F 1 "GND" H 2705 6377 50  0000 C CNN
F 2 "" H 2700 6550 50  0001 C CNN
F 3 "" H 2700 6550 50  0001 C CNN
	1    2700 6550
	1    0    0    -1  
$EndComp
Text Label 2400 6250 2    50   ~ 0
led
$Comp
L Device:R R?
U 1 1 6168FE43
P 4550 6300
AR Path="/6168FE43" Ref="R?"  Part="1" 
AR Path="/61949FCF/6168FE43" Ref="R?"  Part="1" 
AR Path="/6168537C/6168FE43" Ref="R23"  Part="1" 
F 0 "R23" V 4343 6300 50  0001 C CNN
F 1 "4k7" V 4550 6300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 6300 50  0001 C CNN
F 3 "~" H 4550 6300 50  0001 C CNN
	1    4550 6300
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:3V3 #PWR?
U 1 1 6168FE49
P 4550 6150
AR Path="/6168FE49" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FE49" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FE49" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0161" H 4550 6000 50  0001 C CNN
F 1 "3V3" H 4565 6323 50  0000 C CNN
F 2 "" H 4550 6150 50  0000 C CNN
F 3 "" H 4550 6150 50  0000 C CNN
	1    4550 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6450 4550 6600
$Comp
L Device:R R?
U 1 1 6168FE51
P 4800 6300
AR Path="/6168FE51" Ref="R?"  Part="1" 
AR Path="/61949FCF/6168FE51" Ref="R?"  Part="1" 
AR Path="/6168537C/6168FE51" Ref="R24"  Part="1" 
F 0 "R24" V 4593 6300 50  0001 C CNN
F 1 "4k7" V 4800 6300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4730 6300 50  0001 C CNN
F 3 "~" H 4800 6300 50  0001 C CNN
	1    4800 6300
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:3V3 #PWR?
U 1 1 6168FE57
P 4800 6150
AR Path="/6168FE57" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FE57" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FE57" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 4800 6000 50  0001 C CNN
F 1 "3V3" H 4815 6323 50  0000 C CNN
F 2 "" H 4800 6150 50  0000 C CNN
F 3 "" H 4800 6150 50  0000 C CNN
	1    4800 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6450 4800 6600
$Comp
L power:GND #PWR?
U 1 1 6168FE5E
P 6050 5250
AR Path="/6168FE5E" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/6168FE5E" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/6168FE5E" Ref="#PWR0163"  Part="1" 
F 0 "#PWR0163" H 6050 5000 50  0001 C CNN
F 1 "GND" H 6055 5077 50  0000 C CNN
F 2 "" H 6050 5250 50  0001 C CNN
F 3 "" H 6050 5250 50  0001 C CNN
	1    6050 5250
	1    0    0    -1  
$EndComp
Text Label 3000 6250 0    50   ~ 0
pix
Text Label 2700 2550 2    50   ~ 0
en
Text Label 2550 4900 0    50   ~ 0
cs
Text GLabel 4800 6600 3    50   Input ~ 0
SCL
Text GLabel 2700 5500 0    50   Input ~ 0
SCL
Text GLabel 2700 5200 0    50   Input ~ 0
SDA
Text GLabel 4550 6600 3    50   Input ~ 0
SDA
Wire Wire Line
	2700 4900 2550 4900
Text GLabel 2700 5100 0    50   Input ~ 0
ADC_RESET
Text GLabel 2700 5000 0    50   Input ~ 0
DAC_RESET
Text GLabel 2050 4500 0    50   Input ~ 0
C0
Text GLabel 2700 4600 0    50   Input ~ 0
C1
Text GLabel 2700 4700 0    50   Input ~ 0
C2
Text GLabel 2700 4800 0    50   Input ~ 0
C3
Text GLabel 2700 3750 0    50   Input ~ 0
T7
Text GLabel 2050 3650 0    50   Input ~ 0
T6
Text GLabel 2700 3550 0    50   Input ~ 0
T5
Text GLabel 2700 3450 0    50   Input ~ 0
T4
Text GLabel 2700 3350 0    50   Input ~ 0
T3
Text GLabel 2700 3250 0    50   Input ~ 0
T2
Text GLabel 2700 3150 0    50   Input ~ 0
T1
Text GLabel 2700 3050 0    50   Input ~ 0
T0
$Comp
L synkie_symbols:R_POT RV1
U 1 1 616ECE25
P 1400 2650
F 0 "RV1" H 1331 2604 50  0000 R CNN
F 1 "delay-time" H 1331 2695 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09L_Single_Vertical" H 1400 2650 50  0001 C CNN
F 3 "~" H 1400 2650 50  0001 C CNN
	1    1400 2650
	1    0    0    1   
$EndComp
Wire Wire Line
	2700 2650 1550 2650
$Comp
L tinkerforge:3V3 #PWR?
U 1 1 616EE0B0
P 1400 2500
AR Path="/616EE0B0" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/616EE0B0" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/616EE0B0" Ref="#PWR0253"  Part="1" 
F 0 "#PWR0253" H 1400 2350 50  0001 C CNN
F 1 "3V3" H 1415 2673 50  0000 C CNN
F 2 "" H 1400 2500 50  0000 C CNN
F 3 "" H 1400 2500 50  0000 C CNN
	1    1400 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 616EE65C
P 1400 2800
AR Path="/616EE65C" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/616EE65C" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/616EE65C" Ref="#PWR0254"  Part="1" 
F 0 "#PWR0254" H 1400 2550 50  0001 C CNN
F 1 "GND" H 1405 2627 50  0000 C CNN
F 2 "" H 1400 2800 50  0001 C CNN
F 3 "" H 1400 2800 50  0001 C CNN
	1    1400 2800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Conn_01x03 J16
U 1 1 616F066A
P 1000 3350
F 0 "J16" H 918 3667 50  0000 C CNN
F 1 "Mode-Switch" H 918 3576 50  0000 C CNN
F 2 "synkie_footprints:PinHeader_1x03_P2.54mm_Vertical" H 1000 3350 50  0001 C CNN
F 3 "~" H 1000 3350 50  0001 C CNN
	1    1000 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 3350 1950 3350
Wire Wire Line
	1950 3350 1950 2750
Wire Wire Line
	1950 2750 2700 2750
$Comp
L tinkerforge:3V3 #PWR?
U 1 1 616F3AC6
P 1200 3250
AR Path="/616F3AC6" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/616F3AC6" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/616F3AC6" Ref="#PWR0255"  Part="1" 
F 0 "#PWR0255" H 1200 3100 50  0001 C CNN
F 1 "3V3" H 1215 3423 50  0000 C CNN
F 2 "" H 1200 3250 50  0000 C CNN
F 3 "" H 1200 3250 50  0000 C CNN
	1    1200 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 616F405F
P 1200 3450
AR Path="/616F405F" Ref="#PWR?"  Part="1" 
AR Path="/61949FCF/616F405F" Ref="#PWR?"  Part="1" 
AR Path="/6168537C/616F405F" Ref="#PWR0256"  Part="1" 
F 0 "#PWR0256" H 1200 3200 50  0001 C CNN
F 1 "GND" H 1205 3277 50  0000 C CNN
F 2 "" H 1200 3450 50  0001 C CNN
F 3 "" H 1200 3450 50  0001 C CNN
	1    1200 3450
	1    0    0    -1  
$EndComp
Text GLabel 2700 2850 0    50   Input ~ 0
ADC_FIELD
Text GLabel 2700 2950 0    50   Input ~ 0
GENLOCK_FIELD
$EndSCHEMATC
