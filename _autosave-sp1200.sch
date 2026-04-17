EESchema Schematic File Version 5
EELAYER 43 0
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
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
NoConn ~ 1400 1175
NoConn ~ 1400 1375
Wire Wire Line
	1400 1275 2075 1275
Text Notes 2025 1700 0    50   ~ 0
Analog GND connected to GND + of Mix Out Opamp
$Comp
L power:GND #PWR01
U 1 1 00000000
P 1200 1575
F 0 "#PWR01" H 1200 1325 50  0001 C CNN
F 1 "GND" H 1200 1400 50  0000 C CNN
F 2 "" H 1200 1575 50  0001 C CNN
F 3 "" H 1200 1575 50  0001 C CNN
	1    1200 1575
	1    0    0    -1  
$EndComp
$Comp
L power:GND2 #PWR02
U 1 1 00000000
P 2225 1425
F 0 "#PWR02" H 2225 1175 50  0001 C CNN
F 1 "GND2" H 2225 1250 50  0000 C CNN
F 2 "" H 2225 1425 50  0001 C CNN
F 3 "" H 2225 1425 50  0001 C CNN
	1    2225 1425
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Potentiometer RV1
U 1 1 00000000
P 2225 1275
F 0 "RV1" V 2050 1275 50  0000 C CNN
F 1 "10k (SAMPLE GAIN)" V 2125 1275 50  0000 C CNN
F 2 "" H 2225 1275 50  0001 C CNN
F 3 "~" H 2225 1275 50  0001 C CNN
	1    2225 1275
	0    1    1    0   
$EndComp
$Comp
L Connector_Audio:AudioJack2_Ground_SwitchT J1
U 1 1 00000000
P 1200 1275
F 0 "J1" H 1175 1600 50  0000 C CNN
F 1 "Sample IN" H 1175 1500 50  0000 C CNN
F 2 "" H 1200 1275 50  0001 C CNN
F 3 "~" H 1200 1275 50  0001 C CNN
	1    1200 1275
	1    0    0    -1  
$EndComp
$EndSCHEMATC
