EESchema Schematic File Version 4
EELAYER 26 0
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
L synkie_symbols:Conn_01x01 J1
U 1 1 5CED60A7
P 8800 1050
F 0 "J1" H 8720 825 50  0000 C CNN
F 1 "Conn_01x01" H 8720 916 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8800 1050 50  0001 C CNN
F 3 "~" H 8800 1050 50  0001 C CNN
	1    8800 1050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5CED6258
P 9550 1050
F 0 "R2" V 9343 1050 50  0000 C CNN
F 1 "100" V 9434 1050 50  0000 C CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9480 1050 50  0001 C CNN
F 3 "~" H 9550 1050 50  0001 C CNN
	1    9550 1050
	0    1    1    0   
$EndComp
$Comp
L Diode:BAT54S D1
U 1 1 5CED638F
P 9850 1050
F 0 "D1" V 9896 1138 50  0000 L CNN
F 1 "BAT54S" H 9550 950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9925 1175 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 9730 1050 50  0001 C CNN
	1    9850 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 1050 10050 1050
$Comp
L power:+5V #PWR02
U 1 1 5CED6754
P 9850 750
F 0 "#PWR02" H 9850 600 50  0001 C CNN
F 1 "+5V" H 9865 923 50  0000 C CNN
F 2 "" H 9850 750 50  0001 C CNN
F 3 "" H 9850 750 50  0001 C CNN
	1    9850 750 
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR03
U 1 1 5CED6984
P 9850 1350
F 0 "#PWR03" H 9850 1450 50  0001 C CNN
F 1 "-5V" H 9865 1523 50  0000 C CNN
F 2 "" H 9850 1350 50  0001 C CNN
F 3 "" H 9850 1350 50  0001 C CNN
	1    9850 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5CED6B17
P 9400 1200
F 0 "R1" H 9330 1154 50  0000 R CNN
F 1 "47k" H 9330 1245 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9330 1200 50  0001 C CNN
F 3 "~" H 9400 1200 50  0001 C CNN
	1    9400 1200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5CED6F0B
P 9400 1350
F 0 "#PWR01" H 9400 1100 50  0001 C CNN
F 1 "GND" H 9405 1177 50  0000 C CNN
F 2 "" H 9400 1350 50  0001 C CNN
F 3 "" H 9400 1350 50  0001 C CNN
	1    9400 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1050 9400 1050
Connection ~ 9400 1050
$Comp
L Device:R R3
U 1 1 5CED7212
P 10200 1050
F 0 "R3" V 9993 1050 50  0000 C CNN
F 1 "100" V 10084 1050 50  0000 C CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10130 1050 50  0001 C CNN
F 3 "~" H 10200 1050 50  0001 C CNN
	1    10200 1050
	0    1    1    0   
$EndComp
Connection ~ 10050 1050
$EndSCHEMATC
