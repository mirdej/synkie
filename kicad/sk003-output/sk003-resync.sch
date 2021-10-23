EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "vMIX20-Resyncer"
Date "2020-11-23"
Rev ""
Comp "[ a n y m a ]"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 4xxx:4053 U?
U 1 1 5FEF2495
P 7650 3550
AR Path="/5FEF2495" Ref="U?"  Part="1" 
AR Path="/5FED65BF/5FEF2495" Ref="U302"  Part="1" 
F 0 "U302" H 7450 4300 50  0000 C CNN
F 1 "4053" H 7850 4300 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 7650 3550 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 7650 3550 50  0001 C CNN
	1    7650 3550
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF24CF
P 7650 4450
AR Path="/5FEF24CF" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF24CF" Ref="#PWR0314"  Part="1" 
F 0 "#PWR0314" H 7650 4200 50  0001 C CNN
F 1 "GND" H 7655 4277 50  0000 C CNN
F 2 "" H 7650 4450 50  0001 C CNN
F 3 "" H 7650 4450 50  0001 C CNN
	1    7650 4450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEF24D5
P 7750 4450
AR Path="/5FEF24D5" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF24D5" Ref="#PWR0315"  Part="1" 
F 0 "#PWR0315" H 7750 4550 50  0001 C CNN
F 1 "-5V" H 7765 4623 50  0000 C CNN
F 2 "" H 7750 4450 50  0001 C CNN
F 3 "" H 7750 4450 50  0001 C CNN
	1    7750 4450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEF24DB
P 7650 2650
AR Path="/5FEF24DB" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF24DB" Ref="#PWR0304"  Part="1" 
F 0 "#PWR0304" H 7650 2500 50  0001 C CNN
F 1 "+5V" H 7665 2823 50  0000 C CNN
F 2 "" H 7650 2650 50  0001 C CNN
F 3 "" H 7650 2650 50  0001 C CNN
	1    7650 2650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 2 1 5FEF24E7
P 4850 4300
AR Path="/5FEF24E7" Ref="U?"  Part="2" 
AR Path="/5FED65BF/5FEF24E7" Ref="U303"  Part="2" 
F 0 "U303" H 4850 4667 50  0000 C CNN
F 1 "LMH6643" H 4850 4576 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4850 4300 50  0001 C CNN
F 3 "~" H 4850 4300 50  0001 C CNN
	2    4850 4300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF24F9
P 9300 4050
AR Path="/5FEF24F9" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF24F9" Ref="R309"  Part="1" 
F 0 "R309" V 9093 4050 50  0000 C CNN
F 1 "220" V 9184 4050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9230 4050 50  0001 C CNN
F 3 "~" H 9300 4050 50  0001 C CNN
	1    9300 4050
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF24FF
P 9000 4200
AR Path="/5FEF24FF" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF24FF" Ref="R311"  Part="1" 
F 0 "R311" H 8930 4154 50  0000 R CNN
F 1 "220" H 8930 4245 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8930 4200 50  0001 C CNN
F 3 "~" H 9000 4200 50  0001 C CNN
	1    9000 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 3750 9000 4050
Wire Wire Line
	9450 4050 9600 4050
Wire Wire Line
	9600 4050 9600 3650
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF2508
P 9000 4350
AR Path="/5FEF2508" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2508" Ref="#PWR0313"  Part="1" 
F 0 "#PWR0313" H 9000 4100 50  0001 C CNN
F 1 "GND" H 9005 4177 50  0000 C CNN
F 2 "" H 9000 4350 50  0001 C CNN
F 3 "" H 9000 4350 50  0001 C CNN
	1    9000 4350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF2521
P 9600 2700
AR Path="/5FEF2521" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF2521" Ref="R302"  Part="1" 
F 0 "R302" V 9807 2700 50  0000 C CNN
F 1 "300" V 9716 2700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9530 2700 50  0001 C CNN
F 3 "~" H 9600 2700 50  0001 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF2527
P 9600 2550
AR Path="/5FEF2527" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2527" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 9600 2300 50  0001 C CNN
F 1 "GND" H 9605 2377 50  0000 C CNN
F 2 "" H 9600 2550 50  0001 C CNN
F 3 "" H 9600 2550 50  0001 C CNN
	1    9600 2550
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF252D
P 9600 3000
AR Path="/5FEF252D" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF252D" Ref="R304"  Part="1" 
F 0 "R304" V 9807 3000 50  0000 C CNN
F 1 "4k7" V 9716 3000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9530 3000 50  0001 C CNN
F 3 "~" H 9600 3000 50  0001 C CNN
	1    9600 3000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEF2533
P 9600 3150
AR Path="/5FEF2533" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2533" Ref="#PWR0308"  Part="1" 
F 0 "#PWR0308" H 9600 3250 50  0001 C CNN
F 1 "-5V" H 9615 3323 50  0000 C CNN
F 2 "" H 9600 3150 50  0001 C CNN
F 3 "" H 9600 3150 50  0001 C CNN
	1    9600 3150
	-1   0    0    1   
$EndComp
Text Label 9900 2850 0    50   ~ 0
synctip
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEF253F
P 4600 2800
AR Path="/5FEF253F" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF253F" Ref="#PWR0305"  Part="1" 
F 0 "#PWR0305" H 4600 2900 50  0001 C CNN
F 1 "-5V" H 4600 2950 50  0000 C CNN
F 2 "" H 4600 2800 50  0001 C CNN
F 3 "" H 4600 2800 50  0001 C CNN
	1    4600 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 3000 4250 3000
Connection ~ 4200 3000
Wire Wire Line
	4200 3250 4200 3000
Wire Wire Line
	3900 3250 4200 3250
Wire Wire Line
	3900 3200 3900 3250
$Comp
L synkie_symbols:R R?
U 1 1 5FEF254A
P 3900 3400
AR Path="/5FEF254A" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF254A" Ref="R306"  Part="1" 
F 0 "R306" H 3830 3354 50  0000 R CNN
F 1 "5k6" H 3830 3445 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3830 3400 50  0001 C CNN
F 3 "~" H 3900 3400 50  0001 C CNN
	1    3900 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 3000 4200 3000
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEF2551
P 3900 3550
AR Path="/5FEF2551" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2551" Ref="#PWR0309"  Part="1" 
F 0 "#PWR0309" H 3900 3650 50  0001 C CNN
F 1 "-5V" H 3900 3700 50  0000 C CNN
F 2 "" H 3900 3550 50  0001 C CNN
F 3 "" H 3900 3550 50  0001 C CNN
	1    3900 3550
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF2557
P 3650 3150
AR Path="/5FEF2557" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2557" Ref="#PWR0307"  Part="1" 
F 0 "#PWR0307" H 3650 2900 50  0001 C CNN
F 1 "GND" H 3655 2977 50  0001 C CNN
F 2 "" H 3650 3150 50  0001 C CNN
F 3 "" H 3650 3150 50  0001 C CNN
	1    3650 3150
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEF255D
P 3650 2500
AR Path="/5FEF255D" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF255D" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 3650 2350 50  0001 C CNN
F 1 "+5V" H 3650 2650 50  0000 C CNN
F 2 "" H 3650 2500 50  0001 C CNN
F 3 "" H 3650 2500 50  0001 C CNN
	1    3650 2500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF2563
P 3650 2650
AR Path="/5FEF2563" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF2563" Ref="R301"  Part="1" 
F 0 "R301" H 3580 2604 50  0000 R CNN
F 1 "120" H 3580 2695 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3580 2650 50  0001 C CNN
F 3 "~" H 3650 2650 50  0001 C CNN
	1    3650 2650
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:D D?
U 1 1 5FEF2569
P 3650 3000
AR Path="/5FEF2569" Ref="D?"  Part="1" 
AR Path="/5FED65BF/5FEF2569" Ref="D302"  Part="1" 
F 0 "D302" V 3696 2920 50  0000 R CNN
F 1 "D" V 3605 2920 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 3650 3000 50  0001 C CNN
F 3 "~" H 3650 3000 50  0001 C CNN
	1    3650 3000
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:PMBT3906YS Q?
U 1 1 5FEF256F
P 3950 3000
AR Path="/5FEF256F" Ref="Q?"  Part="1" 
AR Path="/5FED65BF/5FEF256F" Ref="Q301"  Part="1" 
F 0 "Q301" H 3750 2850 50  0000 L CNN
F 1 "PMBT3906YS" H 4088 3045 50  0001 L CNN
F 2 "synkie_footprints:SOT-363_SC-70-6_Handsoldering" H 3850 3025 50  0001 C CNN
F 3 "" H 3850 3025 50  0001 C CNN
	1    3950 3000
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:PMBT3906YS Q?
U 2 1 5FEF2575
P 4400 3000
AR Path="/5FEF2575" Ref="Q?"  Part="2" 
AR Path="/5FED65BF/5FEF2575" Ref="Q301"  Part="2" 
F 0 "Q301" H 4200 3150 50  0000 L CNN
F 1 "PMBT3906YS" H 4550 2800 50  0000 L CNN
F 2 "synkie_footprints:SOT-363_SC-70-6_Handsoldering" H 4300 3025 50  0001 C CNN
F 3 "" H 4300 3025 50  0001 C CNN
	2    4400 3000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF2587
P 4100 4200
AR Path="/5FEF2587" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF2587" Ref="R310"  Part="1" 
F 0 "R310" V 3893 4200 50  0000 C CNN
F 1 "330" V 3984 4200 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 4200 50  0001 C CNN
F 3 "~" H 4100 4200 50  0001 C CNN
	1    4100 4200
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 1 1 5FEF25A7
P 9300 3650
AR Path="/5FEF25A7" Ref="U?"  Part="1" 
AR Path="/5FED65BF/5FEF25A7" Ref="U303"  Part="1" 
F 0 "U303" H 9100 3900 50  0000 C CNN
F 1 "LMH6643" H 9400 3850 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 9300 3650 50  0001 C CNN
F 3 "~" H 9300 3650 50  0001 C CNN
	1    9300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2800 3650 2800
Wire Wire Line
	3650 2800 3650 2850
Connection ~ 3650 2800
Connection ~ 3900 3250
Wire Wire Line
	4450 2800 4600 2800
Wire Notes Line
	850  2150 850  5000
Text Notes 900  2250 0    50   ~ 0
CLIPPER
Wire Wire Line
	9150 4050 9000 4050
Connection ~ 9000 4050
Wire Wire Line
	9600 2850 9900 2850
Connection ~ 9600 2850
Wire Notes Line
	5850 2150 10450 2150
Text Notes 5900 2250 0    50   ~ 0
RESYNCER
Wire Notes Line
	5800 5000 5800 2150
Wire Notes Line
	5850 5000 10450 5000
Wire Notes Line
	10450 2150 10450 5000
Wire Notes Line
	5850 2150 5850 5000
$Comp
L synkie_symbols:R R?
U 1 1 5FEF2634
P 8300 3550
AR Path="/5FEF2634" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF2634" Ref="R307"  Part="1" 
F 0 "R307" V 8093 3550 50  0000 C CNN
F 1 "120" V 8184 3550 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 3550 50  0001 C CNN
F 3 "~" H 8300 3550 50  0001 C CNN
	1    8300 3550
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEF263A
P 8450 3650
AR Path="/5FEF263A" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEF263A" Ref="C301"  Part="1" 
F 0 "C301" H 8550 3650 50  0000 L CNN
F 1 "120p" H 8200 3550 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8488 3500 50  0001 C CNN
F 3 "~" H 8450 3650 50  0001 C CNN
	1    8450 3650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF2640
P 8450 3750
AR Path="/5FEF2640" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2640" Ref="#PWR0310"  Part="1" 
F 0 "#PWR0310" H 8450 3500 50  0001 C CNN
F 1 "GND" H 8455 3577 50  0000 C CNN
F 2 "" H 8450 3750 50  0001 C CNN
F 3 "" H 8450 3750 50  0001 C CNN
	1    8450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3550 8450 3550
Connection ~ 8450 3550
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 3 1 5FEFEC12
P 2150 7150
AR Path="/5FEFEC12" Ref="U?"  Part="3" 
AR Path="/5FED65BF/5FEFEC12" Ref="U301"  Part="3" 
F 0 "U301" H 2150 7400 50  0000 L CNN
F 1 "LMH6643" H 2150 7300 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2150 7150 50  0001 C CNN
F 3 "~" H 2150 7150 50  0001 C CNN
	3    2150 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7150 1850 7050
Wire Wire Line
	1850 7250 1850 7150
Connection ~ 1850 7150
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEFEC1B
P 1850 7150
AR Path="/5FEFEC1B" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC1B" Ref="#PWR0319"  Part="1" 
F 0 "#PWR0319" H 1850 6900 50  0001 C CNN
F 1 "GND" H 1855 6977 50  0001 C CNN
F 2 "" H 1850 7150 50  0001 C CNN
F 3 "" H 1850 7150 50  0001 C CNN
	1    1850 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 6850 2050 6850
Wire Wire Line
	1850 6850 1950 6850
Connection ~ 1950 6850
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEFEC24
P 1950 6850
AR Path="/5FEFEC24" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC24" Ref="#PWR0316"  Part="1" 
F 0 "#PWR0316" H 1950 6700 50  0001 C CNN
F 1 "+5V" H 1950 7000 50  0000 C CNN
F 2 "" H 1950 6850 50  0001 C CNN
F 3 "" H 1950 6850 50  0001 C CNN
	1    1950 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7450 2050 7450
Wire Wire Line
	1850 7450 1950 7450
Connection ~ 1950 7450
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEFEC2D
P 1950 7450
AR Path="/5FEFEC2D" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC2D" Ref="#PWR0322"  Part="1" 
F 0 "#PWR0322" H 1950 7550 50  0001 C CNN
F 1 "-5V" H 1950 7600 50  0000 C CNN
F 2 "" H 1950 7450 50  0001 C CNN
F 3 "" H 1950 7450 50  0001 C CNN
	1    1950 7450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEFEC33
P 1850 7350
AR Path="/5FEFEC33" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEFEC33" Ref="C306"  Part="1" 
F 0 "C306" V 1950 7350 50  0000 C CNN
F 1 "100n" V 1712 7350 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1850 7350 50  0001 C CNN
F 3 "~" H 1850 7350 50  0001 C CNN
	1    1850 7350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEFEC39
P 1850 6950
AR Path="/5FEFEC39" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEFEC39" Ref="C303"  Part="1" 
F 0 "C303" V 1950 6950 50  0000 C CNN
F 1 "100n" V 1712 6950 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1850 6950 50  0001 C CNN
F 3 "~" H 1850 6950 50  0001 C CNN
	1    1850 6950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 7150 5450 7050
Wire Wire Line
	5450 7250 5450 7150
Connection ~ 5450 7150
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEFEC42
P 5450 7150
AR Path="/5FEFEC42" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC42" Ref="#PWR0320"  Part="1" 
F 0 "#PWR0320" H 5450 6900 50  0001 C CNN
F 1 "GND" H 5455 6977 50  0001 C CNN
F 2 "" H 5450 7150 50  0001 C CNN
F 3 "" H 5450 7150 50  0001 C CNN
	1    5450 7150
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEFEC48
P 5450 7350
AR Path="/5FEFEC48" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEFEC48" Ref="C307"  Part="1" 
F 0 "C307" V 5550 7350 50  0000 C CNN
F 1 "100n" V 5312 7350 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5450 7350 50  0001 C CNN
F 3 "~" H 5450 7350 50  0001 C CNN
	1    5450 7350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEFEC4E
P 5450 6950
AR Path="/5FEFEC4E" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEFEC4E" Ref="C304"  Part="1" 
F 0 "C304" V 5550 6950 50  0000 C CNN
F 1 "100n" V 5312 6950 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5450 6950 50  0001 C CNN
F 3 "~" H 5450 6950 50  0001 C CNN
	1    5450 6950
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEFEC54
P 5450 6850
AR Path="/5FEFEC54" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC54" Ref="#PWR0317"  Part="1" 
F 0 "#PWR0317" H 5450 6700 50  0001 C CNN
F 1 "+5V" H 5450 7000 50  0000 C CNN
F 2 "" H 5450 6850 50  0001 C CNN
F 3 "" H 5450 6850 50  0001 C CNN
	1    5450 6850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEFEC5A
P 5450 7450
AR Path="/5FEFEC5A" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC5A" Ref="#PWR0323"  Part="1" 
F 0 "#PWR0323" H 5450 7550 50  0001 C CNN
F 1 "-5V" H 5450 7600 50  0000 C CNN
F 2 "" H 5450 7450 50  0001 C CNN
F 3 "" H 5450 7450 50  0001 C CNN
	1    5450 7450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 3 1 5FEFEC60
P 6100 7150
AR Path="/5FEFEC60" Ref="U?"  Part="3" 
AR Path="/5FED65BF/5FEFEC60" Ref="U303"  Part="3" 
F 0 "U303" H 6100 7517 50  0000 C CNN
F 1 "LMH6643" H 6100 7426 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 6100 7150 50  0001 C CNN
F 3 "~" H 6100 7150 50  0001 C CNN
	3    6100 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 7150 5900 7050
Wire Wire Line
	5900 7250 5900 7150
Connection ~ 5900 7150
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEFEC69
P 5900 7150
AR Path="/5FEFEC69" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC69" Ref="#PWR0321"  Part="1" 
F 0 "#PWR0321" H 5900 6900 50  0001 C CNN
F 1 "GND" H 5905 6977 50  0001 C CNN
F 2 "" H 5900 7150 50  0001 C CNN
F 3 "" H 5900 7150 50  0001 C CNN
	1    5900 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 6850 6100 6850
Wire Wire Line
	5900 6850 6000 6850
Connection ~ 6000 6850
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEFEC72
P 6000 6850
AR Path="/5FEFEC72" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC72" Ref="#PWR0318"  Part="1" 
F 0 "#PWR0318" H 6000 6700 50  0001 C CNN
F 1 "+5V" H 6000 7000 50  0000 C CNN
F 2 "" H 6000 6850 50  0001 C CNN
F 3 "" H 6000 6850 50  0001 C CNN
	1    6000 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 7450 6100 7450
Wire Wire Line
	5900 7450 6000 7450
Connection ~ 6000 7450
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEFEC7B
P 6000 7450
AR Path="/5FEFEC7B" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC7B" Ref="#PWR0324"  Part="1" 
F 0 "#PWR0324" H 6000 7550 50  0001 C CNN
F 1 "-5V" H 6000 7600 50  0000 C CNN
F 2 "" H 6000 7450 50  0001 C CNN
F 3 "" H 6000 7450 50  0001 C CNN
	1    6000 7450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEFEC81
P 5900 7350
AR Path="/5FEFEC81" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEFEC81" Ref="C308"  Part="1" 
F 0 "C308" V 6000 7350 50  0000 C CNN
F 1 "100n" V 5762 7350 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5900 7350 50  0001 C CNN
F 3 "~" H 5900 7350 50  0001 C CNN
	1    5900 7350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEFEC87
P 5900 6950
AR Path="/5FEFEC87" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEFEC87" Ref="C305"  Part="1" 
F 0 "C305" V 6000 6950 50  0000 C CNN
F 1 "100n" V 5762 6950 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5900 6950 50  0001 C CNN
F 3 "~" H 5900 6950 50  0001 C CNN
	1    5900 6950
	-1   0    0    1   
$EndComp
Text HLabel 1550 3300 0    50   Input ~ 0
INPUT
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF24E1
P 7150 3850
AR Path="/5FEF24E1" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF24E1" Ref="#PWR0311"  Part="1" 
F 0 "#PWR0311" H 7150 3600 50  0001 C CNN
F 1 "GND" H 7155 3677 50  0001 C CNN
F 2 "" H 7150 3850 50  0001 C CNN
F 3 "" H 7150 3850 50  0001 C CNN
	1    7150 3850
	0    1    1    0   
$EndComp
Text GLabel 7150 3950 0    50   Input ~ 0
porch
Text GLabel 7150 4150 0    50   Input ~ 0
hsync
Text Label 7150 3550 2    50   ~ 0
synctip
Text Label 7150 3050 2    50   ~ 0
clipper_out
Wire Wire Line
	8150 2950 8350 2950
Wire Wire Line
	8350 2950 8350 2350
Wire Wire Line
	8350 2350 6500 2350
Wire Wire Line
	8400 3250 8400 2300
Wire Wire Line
	8400 2300 6450 2300
Wire Wire Line
	6450 2300 6450 3650
Wire Wire Line
	6450 3650 7150 3650
Wire Wire Line
	8150 3250 8400 3250
Wire Wire Line
	6500 2350 6500 3250
Text Label 5300 4300 0    50   ~ 0
clipper_out
Wire Wire Line
	4550 4200 4450 4200
Wire Wire Line
	5150 4300 5200 4300
Wire Wire Line
	5200 4300 5200 4700
Wire Wire Line
	5200 4700 4500 4700
Wire Wire Line
	4500 4700 4500 4400
Wire Wire Line
	4500 4400 4550 4400
Connection ~ 5200 4300
Wire Wire Line
	5200 4300 5300 4300
$Comp
L synkie_symbols:R R?
U 1 1 5FED649E
P 1750 3300
AR Path="/5FED649E" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FED649E" Ref="R305"  Part="1" 
F 0 "R305" V 1543 3300 50  0000 C CNN
F 1 "75" V 1634 3300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1680 3300 50  0001 C CNN
F 3 "~" H 1750 3300 50  0001 C CNN
	1    1750 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 4200 4450 4200
Connection ~ 4450 4200
$Comp
L synkie_symbols:Opamp_Dual_Generic U301
U 1 1 5FF02768
P 2300 3200
F 0 "U301" H 2300 3567 50  0000 C CNN
F 1 "LMH6643" H 2300 3476 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2300 3200 50  0001 C CNN
F 3 "~" H 2300 3200 50  0001 C CNN
	1    2300 3200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U301
U 2 1 5FF10FD3
P 3550 4200
F 0 "U301" H 3550 4567 50  0000 C CNN
F 1 "LMH6643" H 3550 4476 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3550 4200 50  0001 C CNN
F 3 "~" H 3550 4200 50  0001 C CNN
	2    3550 4200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FF14B78
P 3000 4300
AR Path="/5FF14B78" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FF14B78" Ref="R312"  Part="1" 
F 0 "R312" V 2793 4300 50  0000 C CNN
F 1 "75" V 2884 4300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 4300 50  0001 C CNN
F 3 "~" H 3000 4300 50  0001 C CNN
	1    3000 4300
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FF1505D
P 3450 4650
AR Path="/5FF1505D" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FF1505D" Ref="R313"  Part="1" 
F 0 "R313" V 3243 4650 50  0000 C CNN
F 1 "75" V 3334 4650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3380 4650 50  0001 C CNN
F 3 "~" H 3450 4650 50  0001 C CNN
	1    3450 4650
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:D D2
U 1 1 5FF1B317
P 2550 3800
F 0 "D2" H 2550 3583 50  0000 C CNN
F 1 "BAT54" H 2550 3674 50  0000 C CNN
F 2 "synkie_footprints:D_SOT-23_ANK" H 2550 3800 50  0001 C CNN
F 3 "~" H 2550 3800 50  0001 C CNN
	1    2550 3800
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FF2E3E9
P 2150 3800
AR Path="/5FF2E3E9" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FF2E3E9" Ref="R308"  Part="1" 
F 0 "R308" V 1943 3800 50  0000 C CNN
F 1 "75" V 2034 3800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2080 3800 50  0001 C CNN
F 3 "~" H 2150 3800 50  0001 C CNN
	1    2150 3800
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:D D1
U 1 1 5FF3D57A
P 2300 3550
F 0 "D1" H 2300 3767 50  0000 C CNN
F 1 "BAT54" H 2300 3676 50  0000 C CNN
F 2 "synkie_footprints:D_SOT-23_ANK" H 2300 3550 50  0001 C CNN
F 3 "~" H 2300 3550 50  0001 C CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4200 3900 4200
Wire Wire Line
	3600 4650 3900 4650
Wire Wire Line
	3900 4650 3900 4200
Connection ~ 3900 4200
Wire Wire Line
	3900 4200 3950 4200
Wire Wire Line
	3150 4300 3200 4300
Wire Wire Line
	3200 4300 3200 4650
Wire Wire Line
	3200 4650 3300 4650
Connection ~ 3200 4300
Wire Wire Line
	3200 4300 3250 4300
Wire Wire Line
	1950 3100 2000 3100
Wire Wire Line
	1550 3300 1600 3300
Wire Wire Line
	1900 3300 1950 3300
Wire Wire Line
	2150 3550 1950 3550
Wire Wire Line
	1950 3550 1950 3300
Connection ~ 1950 3300
Wire Wire Line
	1950 3300 2000 3300
Wire Wire Line
	2450 3550 2750 3550
Wire Wire Line
	2750 3550 2750 3200
Wire Wire Line
	2750 3200 2600 3200
Wire Wire Line
	2700 3800 2750 3800
Wire Wire Line
	2750 3800 2750 3550
Connection ~ 2750 3550
Wire Wire Line
	2000 3800 1950 3800
Wire Wire Line
	1950 3800 1950 3550
Connection ~ 1950 3550
Wire Wire Line
	2300 3800 2350 3800
Wire Wire Line
	2350 4300 2850 4300
Connection ~ 2350 3800
Wire Wire Line
	2350 3800 2400 3800
Wire Wire Line
	3250 4100 3000 4100
Wire Notes Line
	850  2150 5800 2150
Wire Notes Line
	850  5000 5800 5000
Wire Wire Line
	4450 3200 4450 4200
$Comp
L synkie_symbols:C_Small C1
U 1 1 6005F63E
P 2550 4150
F 0 "C1" V 2321 4150 50  0000 C CNN
F 1 "1n" V 2412 4150 50  0000 C CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2550 4150 50  0001 C CNN
F 3 "~" H 2550 4150 50  0001 C CNN
	1    2550 4150
	0    1    1    0   
$EndComp
Connection ~ 2750 3800
Wire Wire Line
	1950 2800 1950 3100
Wire Wire Line
	1950 2800 3000 2800
Wire Wire Line
	3000 2800 3000 4100
Connection ~ 1950 2800
Wire Wire Line
	2350 3800 2350 4150
Wire Wire Line
	2750 4150 2650 4150
Wire Wire Line
	2750 3800 2750 4150
Wire Wire Line
	2450 4150 2350 4150
Connection ~ 2350 4150
Wire Wire Line
	2350 4150 2350 4300
$Comp
L synkie_symbols:R R?
U 1 1 6002F38C
P 9750 3650
AR Path="/6002F38C" Ref="R?"  Part="1" 
AR Path="/5FED65BF/6002F38C" Ref="R201"  Part="1" 
F 0 "R201" V 9850 3650 50  0000 C CNN
F 1 "75" V 9650 3650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9680 3650 50  0001 C CNN
F 3 "~" H 9750 3650 50  0001 C CNN
	1    9750 3650
	0    -1   -1   0   
$EndComp
Connection ~ 9600 3650
$Comp
L Connector:Conn_Coaxial J1
U 1 1 60032410
P 10100 3650
F 0 "J1" H 10200 3625 50  0000 L CNN
F 1 "Conn_Coaxial" H 10200 3534 50  0000 L CNN
F 2 "synkie_footprints:BNC_MOLEX_0731000080_Horizontal" H 10100 3650 50  0001 C CNN
F 3 " ~" H 10100 3650 50  0001 C CNN
	1    10100 3650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 60032BC9
P 10100 3850
AR Path="/60032BC9" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/60032BC9" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 10100 3600 50  0001 C CNN
F 1 "GND" H 10105 3677 50  0000 C CNN
F 2 "" H 10100 3850 50  0001 C CNN
F 3 "" H 10100 3850 50  0001 C CNN
	1    10100 3850
	1    0    0    -1  
$EndComp
Text GLabel 7150 2950 0    50   Input ~ 0
genlock_delayed
$Comp
L synkie_symbols:C_Small C?
U 1 1 60037194
P 8800 4250
AR Path="/60037194" Ref="C?"  Part="1" 
AR Path="/5FED65BF/60037194" Ref="C202"  Part="1" 
F 0 "C202" H 8500 4250 50  0000 L CNN
F 1 "10p" H 8550 4150 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8838 4100 50  0001 C CNN
F 3 "~" H 8800 4250 50  0001 C CNN
	1    8800 4250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 60037792
P 8800 4350
AR Path="/60037792" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/60037792" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 8800 4100 50  0001 C CNN
F 1 "GND" H 8805 4177 50  0000 C CNN
F 2 "" H 8800 4350 50  0001 C CNN
F 3 "" H 8800 4350 50  0001 C CNN
	1    8800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4050 8800 4050
Wire Wire Line
	8800 4050 8800 4150
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 6022D48A
P 3500 6400
F 0 "H1" H 3600 6449 50  0000 L CNN
F 1 "MountingHole_Pad" H 3600 6358 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 3500 6400 50  0001 C CNN
F 3 "~" H 3500 6400 50  0001 C CNN
	1    3500 6400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 6022DA81
P 3500 6500
AR Path="/6022DA81" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/6022DA81" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 3500 6250 50  0001 C CNN
F 1 "GND" H 3505 6327 50  0001 C CNN
F 2 "" H 3500 6500 50  0001 C CNN
F 3 "" H 3500 6500 50  0001 C CNN
	1    3500 6500
	1    0    0    -1  
$EndComp
$Comp
L Anyma_Library:LOGO U2
U 1 1 60258AFD
P 3650 7150
F 0 "U2" H 3728 7271 50  0000 L CNN
F 1 "LOGO" H 3728 7180 50  0000 L CNN
F 2 "anyma_footprints:logo_anyma" H 3650 7150 50  0001 C CNN
F 3 "" H 3650 7150 50  0001 C CNN
	1    3650 7150
	1    0    0    -1  
$EndComp
$Comp
L Anyma_Library:LOGO U3
U 1 1 602590B8
P 3650 7400
F 0 "U3" H 3728 7521 50  0000 L CNN
F 1 "LOGO" H 3728 7430 50  0000 L CNN
F 2 "Symbol:OSHW-Logo2_9.8x8mm_SilkScreen" H 3650 7400 50  0001 C CNN
F 3 "" H 3650 7400 50  0001 C CNN
	1    3650 7400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 601C8AC6
P 1600 2800
AR Path="/601C8AC6" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/601C8AC6" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 1600 2550 50  0001 C CNN
F 1 "GND" H 1605 2627 50  0000 C CNN
F 2 "" H 1600 2800 50  0001 C CNN
F 3 "" H 1600 2800 50  0001 C CNN
	1    1600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2800 1950 2800
$Comp
L synkie_symbols:R R?
U 1 1 602DFBBE
P 7000 3250
AR Path="/602DFBBE" Ref="R?"  Part="1" 
AR Path="/5FED65BF/602DFBBE" Ref="R5"  Part="1" 
F 0 "R5" V 7000 3250 50  0000 C CNN
F 1 "100" V 6884 3250 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6930 3250 50  0001 C CNN
F 3 "~" H 7000 3250 50  0001 C CNN
	1    7000 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 3250 6500 3250
$Comp
L synkie_symbols:R R?
U 1 1 602E2B4A
P 6200 3350
AR Path="/602E2B4A" Ref="R?"  Part="1" 
AR Path="/5FED65BF/602E2B4A" Ref="R6"  Part="1" 
F 0 "R6" V 6200 3350 50  0000 C CNN
F 1 "200" V 6084 3350 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 3350 50  0001 C CNN
F 3 "~" H 6200 3350 50  0001 C CNN
	1    6200 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 3350 7150 3350
Text GLabel 6050 3350 0    50   Input ~ 0
synkietxt
Text GLabel 7150 4050 0    50   Input ~ 0
synkietxt_enable
$EndSCHEMATC
