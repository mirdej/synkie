EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
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
L synkie_symbols:ADV7280 U4
U 1 1 615AC780
P 2900 3450
F 0 "U4" H 2050 4500 50  0000 C CNN
F 1 "ADV7280" H 2100 4250 50  0000 C CNN
F 2 "Package_CSP:LFCSP-32-1EP_5x5mm_P0.5mm_EP3.25x3.25mm" H 2900 3450 50  0001 C CNN
F 3 "" H 2900 3450 50  0001 C CNN
	1    2900 3450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:ADV7391 U2
U 1 1 615AE3DC
P 7300 3250
F 0 "U2" H 7300 3400 50  0000 L CNN
F 1 "ADV7391" H 7200 3250 50  0000 L CNN
F 2 "Package_CSP:LFCSP-32-1EP_5x5mm_P0.5mm_EP3.25x3.25mm" H 6200 4100 50  0001 C CNN
F 3 "" H 6200 4100 50  0001 C CNN
	1    7300 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR058
U 1 1 615B48EF
P 1900 3350
F 0 "#PWR058" H 1900 3100 50  0001 C CNN
F 1 "GND" H 1905 3177 50  0000 C CNN
F 2 "" H 1900 3350 50  0001 C CNN
F 3 "" H 1900 3350 50  0001 C CNN
	1    1900 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR059
U 1 1 615B5023
P 2000 3350
F 0 "#PWR059" H 2000 3100 50  0001 C CNN
F 1 "GND" H 2005 3177 50  0000 C CNN
F 2 "" H 2000 3350 50  0001 C CNN
F 3 "" H 2000 3350 50  0001 C CNN
	1    2000 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 615B522B
P 2500 3350
F 0 "#PWR060" H 2500 3100 50  0001 C CNN
F 1 "GND" H 2505 3177 50  0000 C CNN
F 2 "" H 2500 3350 50  0001 C CNN
F 3 "" H 2500 3350 50  0001 C CNN
	1    2500 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR049
U 1 1 615B681C
P 2200 1100
F 0 "#PWR049" H 2200 950 50  0001 C CNN
F 1 "+3V3" H 2215 1273 50  0000 C CNN
F 2 "" H 2200 1100 50  0001 C CNN
F 3 "" H 2200 1100 50  0001 C CNN
	1    2200 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR041
U 1 1 615B726D
P 2350 1300
F 0 "#PWR041" H 2350 1150 50  0001 C CNN
F 1 "+1V8" H 2365 1473 50  0000 C CNN
F 2 "" H 2350 1300 50  0001 C CNN
F 3 "" H 2350 1300 50  0001 C CNN
	1    2350 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR045
U 1 1 615B858A
P 2500 1050
F 0 "#PWR045" H 2500 900 50  0001 C CNN
F 1 "+1V8" H 2515 1223 50  0000 C CNN
F 2 "" H 2500 1050 50  0001 C CNN
F 3 "" H 2500 1050 50  0001 C CNN
	1    2500 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 615BD862
P 1200 850
F 0 "Y1" H 1394 896 50  0000 L CNN
F 1 "Crystal_GND24" H 1394 805 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM8G-4Pin_3.2x2.5mm" H 1200 850 50  0001 C CNN
F 3 "~" H 1200 850 50  0001 C CNN
	1    1200 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  850  1050 850 
$Comp
L Device:C C9
U 1 1 615C035A
P 1500 850
F 0 "C9" V 1248 850 50  0000 C CNN
F 1 "18p" V 1339 850 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1538 700 50  0001 C CNN
F 3 "~" H 1500 850 50  0001 C CNN
	1    1500 850 
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 615C082A
P 800 850
F 0 "C8" V 548 850 50  0000 C CNN
F 1 "18p" V 639 850 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 838 700 50  0001 C CNN
F 3 "~" H 800 850 50  0001 C CNN
	1    800  850 
	0    1    1    0   
$EndComp
Connection ~ 950  850 
$Comp
L power:GND #PWR048
U 1 1 615C55D2
P 1200 1050
F 0 "#PWR048" H 1200 800 50  0001 C CNN
F 1 "GND" H 1205 877 50  0000 C CNN
F 2 "" H 1200 1050 50  0001 C CNN
F 3 "" H 1200 1050 50  0001 C CNN
	1    1200 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 615C5928
P 650 850
F 0 "#PWR046" H 650 600 50  0001 C CNN
F 1 "GND" H 655 677 50  0000 C CNN
F 2 "" H 650 850 50  0001 C CNN
F 3 "" H 650 850 50  0001 C CNN
	1    650  850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 615C5DAD
P 1650 850
F 0 "#PWR047" H 1650 600 50  0001 C CNN
F 1 "GND" H 1655 677 50  0000 C CNN
F 2 "" H 1650 850 50  0001 C CNN
F 3 "" H 1650 850 50  0001 C CNN
	1    1650 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 615F234E
P 3100 3000
F 0 "C11" V 3050 2900 50  0000 C CNN
F 1 "100n" V 3350 2950 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3138 2850 50  0001 C CNN
F 3 "~" H 3100 3000 50  0001 C CNN
	1    3100 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C C12
U 1 1 615F2B41
P 3100 3100
F 0 "C12" V 3150 3000 50  0000 C CNN
F 1 "100n" V 2939 3100 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3138 2950 50  0001 C CNN
F 3 "~" H 3100 3100 50  0001 C CNN
	1    3100 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR057
U 1 1 615F2F33
P 3250 3100
F 0 "#PWR057" H 3250 2850 50  0001 C CNN
F 1 "GND" H 3255 2927 50  0000 C CNN
F 2 "" H 3250 3100 50  0001 C CNN
F 3 "" H 3250 3100 50  0001 C CNN
	1    3250 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR056
U 1 1 615F33A9
P 3250 3000
F 0 "#PWR056" H 3250 2750 50  0001 C CNN
F 1 "GND" V 3255 2872 50  0000 R CNN
F 2 "" H 3250 3000 50  0001 C CNN
F 3 "" H 3250 3000 50  0001 C CNN
	1    3250 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 615FFA72
P 6450 3250
F 0 "#PWR015" H 6450 3000 50  0001 C CNN
F 1 "GND" V 6455 3122 50  0000 R CNN
F 2 "" H 6450 3250 50  0001 C CNN
F 3 "" H 6450 3250 50  0001 C CNN
	1    6450 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 61600605
P 6950 4700
F 0 "#PWR031" H 6950 4450 50  0001 C CNN
F 1 "GND" H 6955 4527 50  0000 C CNN
F 2 "" H 6950 4700 50  0001 C CNN
F 3 "" H 6950 4700 50  0001 C CNN
	1    6950 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 61600ED6
P 7100 4700
F 0 "#PWR032" H 7100 4450 50  0001 C CNN
F 1 "GND" H 7105 4527 50  0000 C CNN
F 2 "" H 7100 4700 50  0001 C CNN
F 3 "" H 7100 4700 50  0001 C CNN
	1    7100 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 61601047
P 7300 4700
F 0 "#PWR033" H 7300 4450 50  0001 C CNN
F 1 "GND" H 7305 4527 50  0000 C CNN
F 2 "" H 7300 4700 50  0001 C CNN
F 3 "" H 7300 4700 50  0001 C CNN
	1    7300 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 61601471
P 7500 4700
F 0 "#PWR034" H 7500 4450 50  0001 C CNN
F 1 "GND" H 7505 4527 50  0000 C CNN
F 2 "" H 7500 4700 50  0001 C CNN
F 3 "" H 7500 4700 50  0001 C CNN
	1    7500 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 616017E0
P 7650 4700
F 0 "#PWR035" H 7650 4450 50  0001 C CNN
F 1 "GND" H 7655 4527 50  0000 C CNN
F 2 "" H 7650 4700 50  0001 C CNN
F 3 "" H 7650 4700 50  0001 C CNN
	1    7650 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 61601B71
P 7850 4700
F 0 "#PWR036" H 7850 4450 50  0001 C CNN
F 1 "GND" H 7855 4527 50  0000 C CNN
F 2 "" H 7850 4700 50  0001 C CNN
F 3 "" H 7850 4700 50  0001 C CNN
	1    7850 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 61602E62
P 8400 2650
F 0 "J3" H 8480 2692 50  0000 L CNN
F 1 "vs" H 8600 2700 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8400 2650 50  0001 C CNN
F 3 "~" H 8400 2650 50  0001 C CNN
	1    8400 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 61602E68
P 8400 2800
F 0 "J4" H 8480 2842 50  0000 L CNN
F 1 "hs" H 8600 2850 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8400 2800 50  0001 C CNN
F 3 "~" H 8400 2800 50  0001 C CNN
	1    8400 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR010
U 1 1 61603258
P 7650 1900
F 0 "#PWR010" H 7650 1750 50  0001 C CNN
F 1 "+3V3" H 7665 2073 50  0000 C CNN
F 2 "" H 7650 1900 50  0001 C CNN
F 3 "" H 7650 1900 50  0001 C CNN
	1    7650 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR06
U 1 1 61609FE2
P 7350 1600
F 0 "#PWR06" H 7350 1450 50  0001 C CNN
F 1 "+1V8" H 7365 1773 50  0000 C CNN
F 2 "" H 7350 1600 50  0001 C CNN
F 3 "" H 7350 1600 50  0001 C CNN
	1    7350 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 6160B556
P 7200 1900
F 0 "#PWR09" H 7200 1750 50  0001 C CNN
F 1 "+3V3" H 7215 2073 50  0000 C CNN
F 2 "" H 7200 1900 50  0001 C CNN
F 3 "" H 7200 1900 50  0001 C CNN
	1    7200 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR04
U 1 1 6160E193
P 7850 1900
F 0 "#PWR04" H 7850 1750 50  0001 C CNN
F 1 "+1V8" H 7865 2073 50  0000 C CNN
F 2 "" H 7850 1900 50  0001 C CNN
F 3 "" H 7850 1900 50  0001 C CNN
	1    7850 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6160F4A5
P 6900 1750
F 0 "C2" H 7015 1796 50  0000 L CNN
F 1 "2n2" H 7015 1705 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6938 1600 50  0001 C CNN
F 3 "~" H 6900 1750 50  0001 C CNN
	1    6900 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 6160FC01
P 6900 1600
F 0 "#PWR05" H 6900 1450 50  0001 C CNN
F 1 "+3V3" H 6915 1773 50  0000 C CNN
F 2 "" H 6900 1600 50  0001 C CNN
F 3 "" H 6900 1600 50  0001 C CNN
	1    6900 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 6162077B
P 6300 4200
F 0 "R8" V 6093 4200 50  0000 C CNN
F 1 "4k12" V 6184 4200 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 4200 50  0001 C CNN
F 3 "~" H 6300 4200 50  0001 C CNN
	1    6300 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 6162124D
P 6150 4200
F 0 "#PWR022" H 6150 3950 50  0001 C CNN
F 1 "GND" H 6000 4150 50  0000 C CNN
F 2 "" H 6150 4200 50  0001 C CNN
F 3 "" H 6150 4200 50  0001 C CNN
	1    6150 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 6166DEFD
P 8500 4100
F 0 "C5" V 8248 4100 50  0000 C CNN
F 1 "12n" V 8339 4100 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8538 3950 50  0001 C CNN
F 3 "~" H 8500 4100 50  0001 C CNN
	1    8500 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 4100 8300 4100
$Comp
L power:+1V8 #PWR020
U 1 1 6166FD89
P 8950 4050
F 0 "#PWR020" H 8950 3900 50  0001 C CNN
F 1 "+1V8" H 8965 4223 50  0000 C CNN
F 2 "" H 8950 4050 50  0001 C CNN
F 3 "" H 8950 4050 50  0001 C CNN
	1    8950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4050 8950 4100
Wire Wire Line
	8950 4100 8650 4100
$Comp
L Device:C C6
U 1 1 61671C40
P 8800 4400
F 0 "C6" V 8548 4400 50  0000 C CNN
F 1 "150n" V 8639 4400 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8838 4250 50  0001 C CNN
F 3 "~" H 8800 4400 50  0001 C CNN
	1    8800 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 61672CB9
P 8500 4400
F 0 "R9" V 8293 4400 50  0000 C CNN
F 1 "170" V 8384 4400 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8430 4400 50  0001 C CNN
F 3 "~" H 8500 4400 50  0001 C CNN
	1    8500 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 4100 8300 4400
Wire Wire Line
	8300 4400 8350 4400
Connection ~ 8300 4100
Wire Wire Line
	8300 4100 8350 4100
Wire Wire Line
	8950 4100 8950 4400
Connection ~ 8950 4100
Wire Wire Line
	8050 9400 7900 9400
Wire Wire Line
	7900 9500 8050 9500
Wire Wire Line
	7900 9600 8050 9600
Wire Wire Line
	7900 9700 8050 9700
Wire Wire Line
	7900 9800 8050 9800
Wire Wire Line
	7900 9900 8050 9900
Wire Wire Line
	7900 10000 8050 10000
Wire Wire Line
	7900 10100 8050 10100
Text Label 7900 9400 0    50   ~ 0
o0
Text Label 7900 9500 0    50   ~ 0
o1
Text Label 7900 9600 0    50   ~ 0
o2
Text Label 7900 9700 0    50   ~ 0
o3
Text Label 7900 9800 0    50   ~ 0
o4
Text Label 7900 9900 0    50   ~ 0
o5
Text Label 7900 10000 0    50   ~ 0
o6
Text Label 7900 10100 0    50   ~ 0
o7
Text Label 8900 9500 0    50   ~ 0
i0
Text Label 8900 9600 0    50   ~ 0
i1
Text Label 8900 9700 0    50   ~ 0
i2
Text Label 8900 9800 0    50   ~ 0
i3
Text Label 8900 9900 0    50   ~ 0
i4
Text Label 8900 10000 0    50   ~ 0
i5
Text Label 8900 10100 0    50   ~ 0
i6
Text Label 8900 10200 0    50   ~ 0
i7
Wire Wire Line
	2200 1100 2200 1300
Wire Wire Line
	2500 1050 2500 1300
Wire Wire Line
	2050 850  2050 1300
Wire Wire Line
	7350 1600 7350 1700
Wire Wire Line
	7500 1900 7500 1700
Wire Wire Line
	7500 1700 7350 1700
Connection ~ 7350 1700
Wire Wire Line
	7350 1700 7350 1900
$Comp
L power:+1V8 #PWR0129
U 1 1 61B105EB
P 1900 1300
F 0 "#PWR0129" H 1900 1150 50  0001 C CNN
F 1 "+1V8" H 1915 1473 50  0000 C CNN
F 2 "" H 1900 1300 50  0001 C CNN
F 3 "" H 1900 1300 50  0001 C CNN
	1    1900 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0130
U 1 1 61B1436E
P 2050 850
F 0 "#PWR0130" H 2050 700 50  0001 C CNN
F 1 "+1V8" H 2065 1023 50  0000 C CNN
F 2 "" H 2050 850 50  0001 C CNN
F 3 "" H 2050 850 50  0001 C CNN
	1    2050 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1250 1350 850 
Connection ~ 1350 850 
$Comp
L Connector_Generic:Conn_01x01 J23
U 1 1 61C02F43
P 3150 5600
F 0 "J23" H 3230 5642 50  0000 L CNN
F 1 "intr" H 3350 5650 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 3150 5600 50  0001 C CNN
F 3 "~" H 3150 5600 50  0001 C CNN
	1    3150 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 61660DC4
P 1250 2850
F 0 "#PWR0101" H 1250 2700 50  0001 C CNN
F 1 "+3V3" H 1265 3023 50  0000 C CNN
F 2 "" H 1250 2850 50  0001 C CNN
F 3 "" H 1250 2850 50  0001 C CNN
	1    1250 2850
	0    -1   -1   0   
$EndComp
$Sheet
S 4850 6850 500  400 
U 6168A2F7
F0 "analog" 50
F1 "sk612-analog.sch" 50
$EndSheet
Text GLabel 8200 3200 2    50   Input ~ 0
DAC_OUT
$Sheet
S 5850 6800 500  500 
U 6168537C
F0 "controller" 50
F1 "sk612-controller.sch" 50
$EndSheet
Text GLabel 1250 1850 0    50   Input ~ 0
GENLOCK_ADC_IN
Text GLabel 2950 2600 2    50   Input ~ 0
GL_SFL_OUT
Text GLabel 1250 2550 0    50   Input ~ 0
SDA
Text GLabel 1250 2650 0    50   Input ~ 0
SCL
Text GLabel 1250 3100 0    50   Input ~ 0
ADC_RESET
Wire Wire Line
	1250 1500 1250 1250
Wire Wire Line
	1250 1250 1350 1250
Wire Wire Line
	1250 1600 950  1600
Wire Wire Line
	950  850  950  1600
Text GLabel 6450 4400 0    50   Input ~ 0
DAC_SFL_IN
Text GLabel 6450 3950 0    50   Input ~ 0
DAC_RESET
Text GLabel 6450 3450 0    50   Input ~ 0
SDA
Text GLabel 6450 3550 0    50   Input ~ 0
SCL
$Comp
L synkie_symbols:ADV7280 U1
U 1 1 616DBC03
P 2900 6600
F 0 "U1" H 2050 7650 50  0000 C CNN
F 1 "ADV7280" H 2100 7400 50  0000 C CNN
F 2 "Package_CSP:LFCSP-32-1EP_5x5mm_P0.5mm_EP3.25x3.25mm" H 2900 6600 50  0001 C CNN
F 3 "" H 2900 6600 50  0001 C CNN
	1    2900 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 616DBC09
P 1900 6500
F 0 "#PWR0102" H 1900 6250 50  0001 C CNN
F 1 "GND" H 1905 6327 50  0000 C CNN
F 2 "" H 1900 6500 50  0001 C CNN
F 3 "" H 1900 6500 50  0001 C CNN
	1    1900 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 616DBC0F
P 2000 6500
F 0 "#PWR0103" H 2000 6250 50  0001 C CNN
F 1 "GND" H 2005 6327 50  0000 C CNN
F 2 "" H 2000 6500 50  0001 C CNN
F 3 "" H 2000 6500 50  0001 C CNN
	1    2000 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 616DBC15
P 2500 6500
F 0 "#PWR0104" H 2500 6250 50  0001 C CNN
F 1 "GND" H 2505 6327 50  0000 C CNN
F 2 "" H 2500 6500 50  0001 C CNN
F 3 "" H 2500 6500 50  0001 C CNN
	1    2500 6500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0105
U 1 1 616DBC1B
P 2200 4250
F 0 "#PWR0105" H 2200 4100 50  0001 C CNN
F 1 "+3V3" H 2215 4423 50  0000 C CNN
F 2 "" H 2200 4250 50  0001 C CNN
F 3 "" H 2200 4250 50  0001 C CNN
	1    2200 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0106
U 1 1 616DBC21
P 2350 4450
F 0 "#PWR0106" H 2350 4300 50  0001 C CNN
F 1 "+1V8" H 2365 4623 50  0000 C CNN
F 2 "" H 2350 4450 50  0001 C CNN
F 3 "" H 2350 4450 50  0001 C CNN
	1    2350 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0107
U 1 1 616DBC27
P 2500 4200
F 0 "#PWR0107" H 2500 4050 50  0001 C CNN
F 1 "+1V8" H 2515 4373 50  0000 C CNN
F 2 "" H 2500 4200 50  0001 C CNN
F 3 "" H 2500 4200 50  0001 C CNN
	1    2500 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 616DBC2D
P 1250 5600
F 0 "#PWR0108" H 1250 5350 50  0001 C CNN
F 1 "GND" V 1255 5472 50  0000 R CNN
F 2 "" H 1250 5600 50  0001 C CNN
F 3 "" H 1250 5600 50  0001 C CNN
	1    1250 5600
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal_GND24 Y2
U 1 1 616DBC33
P 1200 4000
F 0 "Y2" H 1394 4046 50  0000 L CNN
F 1 "Crystal??" H 1394 3955 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM8G-4Pin_3.2x2.5mm" H 1200 4000 50  0001 C CNN
F 3 "~" H 1200 4000 50  0001 C CNN
	1    1200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4000 1050 4000
$Comp
L Device:C C3
U 1 1 616DBC3A
P 1500 4000
F 0 "C3" V 1248 4000 50  0000 C CNN
F 1 "18p" V 1339 4000 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1538 3850 50  0001 C CNN
F 3 "~" H 1500 4000 50  0001 C CNN
	1    1500 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 616DBC40
P 800 4000
F 0 "C1" V 548 4000 50  0000 C CNN
F 1 "18p" V 639 4000 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 838 3850 50  0001 C CNN
F 3 "~" H 800 4000 50  0001 C CNN
	1    800  4000
	0    1    1    0   
$EndComp
Connection ~ 950  4000
$Comp
L power:GND #PWR0109
U 1 1 616DBC47
P 1200 4200
F 0 "#PWR0109" H 1200 3950 50  0001 C CNN
F 1 "GND" H 1205 4027 50  0000 C CNN
F 2 "" H 1200 4200 50  0001 C CNN
F 3 "" H 1200 4200 50  0001 C CNN
	1    1200 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 616DBC4D
P 650 4000
F 0 "#PWR0110" H 650 3750 50  0001 C CNN
F 1 "GND" H 655 3827 50  0000 C CNN
F 2 "" H 650 4000 50  0001 C CNN
F 3 "" H 650 4000 50  0001 C CNN
	1    650  4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 616DBC53
P 1650 4000
F 0 "#PWR0111" H 1650 3750 50  0001 C CNN
F 1 "GND" H 1655 3827 50  0000 C CNN
F 2 "" H 1650 4000 50  0001 C CNN
F 3 "" H 1650 4000 50  0001 C CNN
	1    1650 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 616DBC59
P 3100 6150
F 0 "C4" V 3050 6050 50  0000 C CNN
F 1 "100n" V 3350 6100 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3138 6000 50  0001 C CNN
F 3 "~" H 3100 6150 50  0001 C CNN
	1    3100 6150
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 616DBC5F
P 3100 6250
F 0 "C7" V 3150 6150 50  0000 C CNN
F 1 "100n" V 2939 6250 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3138 6100 50  0001 C CNN
F 3 "~" H 3100 6250 50  0001 C CNN
	1    3100 6250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 616DBC65
P 3250 6250
F 0 "#PWR0112" H 3250 6000 50  0001 C CNN
F 1 "GND" H 3255 6077 50  0000 C CNN
F 2 "" H 3250 6250 50  0001 C CNN
F 3 "" H 3250 6250 50  0001 C CNN
	1    3250 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 616DBC6B
P 3250 6150
F 0 "#PWR0113" H 3250 5900 50  0001 C CNN
F 1 "GND" V 3255 6022 50  0000 R CNN
F 2 "" H 3250 6150 50  0001 C CNN
F 3 "" H 3250 6150 50  0001 C CNN
	1    3250 6150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 4250 2200 4450
Wire Wire Line
	2500 4200 2500 4450
Wire Wire Line
	2050 4000 2050 4450
$Comp
L power:+1V8 #PWR0114
U 1 1 616DBC84
P 1900 4450
F 0 "#PWR0114" H 1900 4300 50  0001 C CNN
F 1 "+1V8" H 1915 4623 50  0000 C CNN
F 2 "" H 1900 4450 50  0001 C CNN
F 3 "" H 1900 4450 50  0001 C CNN
	1    1900 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0115
U 1 1 616DBC8A
P 2050 4000
F 0 "#PWR0115" H 2050 3850 50  0001 C CNN
F 1 "+1V8" H 2065 4173 50  0000 C CNN
F 2 "" H 2050 4000 50  0001 C CNN
F 3 "" H 2050 4000 50  0001 C CNN
	1    2050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4400 1350 4000
Connection ~ 1350 4000
$Comp
L power:+3V3 #PWR0116
U 1 1 616DBC92
P 1250 6000
F 0 "#PWR0116" H 1250 5850 50  0001 C CNN
F 1 "+3V3" H 1265 6173 50  0000 C CNN
F 2 "" H 1250 6000 50  0001 C CNN
F 3 "" H 1250 6000 50  0001 C CNN
	1    1250 6000
	0    -1   -1   0   
$EndComp
Text GLabel 1250 5000 0    50   Input ~ 0
ADC_IN
Text GLabel 2950 6000 2    50   Input ~ 0
ADC_LLC
Text GLabel 1250 5700 0    50   Input ~ 0
SDA
Text GLabel 1250 5800 0    50   Input ~ 0
SCL
Text GLabel 1250 6250 0    50   Input ~ 0
ADC_RESET
Wire Wire Line
	1250 4650 1250 4400
Wire Wire Line
	1250 4400 1350 4400
Wire Wire Line
	1250 4750 950  4750
Wire Wire Line
	950  4000 950  4750
$Comp
L Jumper:Jumper_2_Bridged JP1
U 1 1 61709A29
P 650 2500
F 0 "JP1" H 650 2695 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 650 2604 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 650 2500 50  0001 C CNN
F 3 "~" H 650 2500 50  0001 C CNN
	1    650  2500
	0    1    1    0   
$EndComp
Wire Wire Line
	950  1600 650  1600
Wire Wire Line
	650  1600 650  2300
Connection ~ 950  1600
Wire Wire Line
	950  4000 950  3500
Wire Wire Line
	950  3500 650  3500
Wire Wire Line
	650  3500 650  2700
$Comp
L power:+3V3 #PWR0117
U 1 1 617104AC
P 1250 2450
F 0 "#PWR0117" H 1250 2300 50  0001 C CNN
F 1 "+3V3" H 1265 2623 50  0000 C CNN
F 2 "" H 1250 2450 50  0001 C CNN
F 3 "" H 1250 2450 50  0001 C CNN
	1    1250 2450
	0    -1   -1   0   
$EndComp
$Sheet
S 3900 6800 550  500 
U 61739AC4
F0 "supply" 50
F1 "sk612-supply.sch" 50
$EndSheet
Text GLabel 6450 2300 0    50   Input ~ 0
DA0
Text GLabel 6450 2400 0    50   Input ~ 0
DA1
Text GLabel 6450 2500 0    50   Input ~ 0
DA2
Text GLabel 6450 2600 0    50   Input ~ 0
DA3
Text GLabel 6450 2700 0    50   Input ~ 0
DA4
Text GLabel 6450 2800 0    50   Input ~ 0
DA5
Text GLabel 6450 2900 0    50   Input ~ 0
DA6
Text GLabel 6450 3000 0    50   Input ~ 0
DA7
Text GLabel 2950 4750 2    50   Input ~ 0
AD0
Text GLabel 2950 4850 2    50   Input ~ 0
AD1
Text GLabel 2950 4950 2    50   Input ~ 0
AD2
Text GLabel 2950 5050 2    50   Input ~ 0
AD3
Text GLabel 2950 5150 2    50   Input ~ 0
AD4
Text GLabel 2950 5250 2    50   Input ~ 0
AD5
Text GLabel 2950 5350 2    50   Input ~ 0
AD6
Text GLabel 2950 5450 2    50   Input ~ 0
AD7
$Sheet
S 4500 5550 650  600 
U 61776AE3
F0 "memory" 50
F1 "sk612-memory.sch" 50
$EndSheet
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 616C5EEA
P 3150 2450
F 0 "J1" H 3230 2492 50  0000 L CNN
F 1 "intr" H 3350 2500 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 3150 2450 50  0001 C CNN
F 3 "~" H 3150 2450 50  0001 C CNN
	1    3150 2450
	1    0    0    -1  
$EndComp
Text GLabel 2950 5750 2    50   Input ~ 0
AD_SFL_OUT
Text GLabel 6450 3800 0    50   Input ~ 0
DAC_CLK
Text GLabel 2950 1600 2    50   Input ~ 0
GL0
Text GLabel 2950 1700 2    50   Input ~ 0
GL1
Text GLabel 2950 1800 2    50   Input ~ 0
GL2
Text GLabel 2950 1900 2    50   Input ~ 0
GL3
Text GLabel 2950 2000 2    50   Input ~ 0
GL4
Text GLabel 2950 2100 2    50   Input ~ 0
GL5
Text GLabel 2950 2200 2    50   Input ~ 0
GL6
Text GLabel 2950 2300 2    50   Input ~ 0
GL7
Text GLabel 2950 2850 2    50   Input ~ 0
GL_LLC
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 61B56AC4
P 8400 3350
F 0 "J6" H 8480 3392 50  0000 L CNN
F 1 "dac2" H 8600 3400 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8400 3350 50  0001 C CNN
F 3 "~" H 8400 3350 50  0001 C CNN
	1    8400 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 61B56ACA
P 8400 3500
F 0 "J7" H 8480 3542 50  0000 L CNN
F 1 "dac3" H 8600 3550 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8400 3500 50  0001 C CNN
F 3 "~" H 8400 3500 50  0001 C CNN
	1    8400 3500
	1    0    0    -1  
$EndComp
Text GLabel 4450 1600 2    50   Input ~ 0
GL0
Text GLabel 4450 1700 2    50   Input ~ 0
GL1
Text GLabel 4450 1800 2    50   Input ~ 0
GL2
Text GLabel 4450 1900 2    50   Input ~ 0
GL3
Text GLabel 4450 2000 2    50   Input ~ 0
GL4
Text GLabel 4450 2100 2    50   Input ~ 0
GL5
Text GLabel 4450 2200 2    50   Input ~ 0
GL6
Text GLabel 4450 2300 2    50   Input ~ 0
GL7
$Comp
L Connector_Generic:Conn_01x12 J5
U 1 1 6191C25C
P 4250 2100
F 0 "J5" H 4168 2817 50  0000 C CNN
F 1 "Conn_01x12" H 4168 2726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 4250 2100 50  0001 C CNN
F 3 "~" H 4250 2100 50  0001 C CNN
	1    4250 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 6191D402
P 4450 2400
F 0 "#PWR0135" H 4450 2150 50  0001 C CNN
F 1 "GND" V 4455 2272 50  0000 R CNN
F 2 "" H 4450 2400 50  0001 C CNN
F 3 "" H 4450 2400 50  0001 C CNN
	1    4450 2400
	0    -1   -1   0   
$EndComp
Text GLabel 4450 2600 2    50   Input ~ 0
GL_SFL_OUT
Text GLabel 4450 2500 2    50   Input ~ 0
GL_LLC
$Comp
L power:GND #PWR0137
U 1 1 6191EFE9
P 4450 2700
F 0 "#PWR0137" H 4450 2450 50  0001 C CNN
F 1 "GND" V 4455 2572 50  0000 R CNN
F 2 "" H 4450 2700 50  0001 C CNN
F 3 "" H 4450 2700 50  0001 C CNN
	1    4450 2700
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J10
U 1 1 61920ED5
P 4050 4750
F 0 "J10" H 3968 5467 50  0000 C CNN
F 1 "Conn_01x12" H 3968 5376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 4050 4750 50  0001 C CNN
F 3 "~" H 4050 4750 50  0001 C CNN
	1    4050 4750
	-1   0    0    -1  
$EndComp
Text GLabel 4250 4250 2    50   Input ~ 0
AD0
Text GLabel 4250 4350 2    50   Input ~ 0
AD1
Text GLabel 4250 4450 2    50   Input ~ 0
AD2
Text GLabel 4250 4550 2    50   Input ~ 0
AD3
Text GLabel 4250 4650 2    50   Input ~ 0
AD4
Text GLabel 4250 4750 2    50   Input ~ 0
AD5
Text GLabel 4250 4850 2    50   Input ~ 0
AD6
Text GLabel 4250 4950 2    50   Input ~ 0
AD7
$Comp
L power:GND #PWR0138
U 1 1 619222AD
P 4250 5050
F 0 "#PWR0138" H 4250 4800 50  0001 C CNN
F 1 "GND" V 4255 4922 50  0000 R CNN
F 2 "" H 4250 5050 50  0001 C CNN
F 3 "" H 4250 5050 50  0001 C CNN
	1    4250 5050
	0    -1   -1   0   
$EndComp
Text GLabel 4250 5150 2    50   Input ~ 0
ADC_LLC
Text GLabel 4250 5250 2    50   Input ~ 0
AD_SFL_OUT
$Comp
L power:GND #PWR0139
U 1 1 61922A79
P 4250 5350
F 0 "#PWR0139" H 4250 5100 50  0001 C CNN
F 1 "GND" V 4255 5222 50  0000 R CNN
F 2 "" H 4250 5350 50  0001 C CNN
F 3 "" H 4250 5350 50  0001 C CNN
	1    4250 5350
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J2
U 1 1 61923ACD
P 5750 2050
F 0 "J2" H 5830 2042 50  0000 L CNN
F 1 "Conn_01x12" H 5830 1951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 5750 2050 50  0001 C CNN
F 3 "~" H 5750 2050 50  0001 C CNN
	1    5750 2050
	1    0    0    -1  
$EndComp
Text GLabel 5550 1550 0    50   Input ~ 0
DA0
Text GLabel 5550 1650 0    50   Input ~ 0
DA1
Text GLabel 5550 1750 0    50   Input ~ 0
DA2
Text GLabel 5550 1850 0    50   Input ~ 0
DA3
Text GLabel 5550 1950 0    50   Input ~ 0
DA4
Text GLabel 5550 2050 0    50   Input ~ 0
DA5
Text GLabel 5550 2150 0    50   Input ~ 0
DA6
Text GLabel 5550 2250 0    50   Input ~ 0
DA7
$Comp
L power:GND #PWR0140
U 1 1 619258A3
P 5550 2350
F 0 "#PWR0140" H 5550 2100 50  0001 C CNN
F 1 "GND" V 5555 2222 50  0000 R CNN
F 2 "" H 5550 2350 50  0001 C CNN
F 3 "" H 5550 2350 50  0001 C CNN
	1    5550 2350
	0    1    1    0   
$EndComp
Text GLabel 5550 2450 0    50   Input ~ 0
DAC_RESET
Text GLabel 5550 2550 0    50   Input ~ 0
SFL_IN
$Comp
L power:GND #PWR0141
U 1 1 61926B0B
P 5550 2650
F 0 "#PWR0141" H 5550 2400 50  0001 C CNN
F 1 "GND" V 5555 2522 50  0000 R CNN
F 2 "" H 5550 2650 50  0001 C CNN
F 3 "" H 5550 2650 50  0001 C CNN
	1    5550 2650
	0    1    1    0   
$EndComp
$Sheet
S 5650 5550 700  600 
U 61A0E295
F0 "fpga" 50
F1 "sk612-fpga.sch" 50
$EndSheet
$EndSCHEMATC