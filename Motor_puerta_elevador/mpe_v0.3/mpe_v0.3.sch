EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L MCU_Microchip_ATmega:ATmega3250PA-AU U1
U 1 1 62C846A6
P 4850 4400
F 0 "U1" H 4850 5150 50  0000 C CNN
F 1 "ATmega3250PA-AU" H 4850 4950 50  0000 C CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 4850 4400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-8285-8-bit-avr-microcontroller-atmega165a_pa_325a_pa_3250a_pa_645a_p_6450a_p_datasheet.pdf" H 4850 4400 50  0001 C CNN
	1    4850 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 62C8A241
P 6450 3500
F 0 "J4" H 6500 3817 50  0000 C CNN
F 1 "PROG" H 6500 3726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 6450 3500 50  0001 C CNN
F 3 "~" H 6450 3500 50  0001 C CNN
	1    6450 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 62C8B38A
P 6800 3700
F 0 "#PWR0101" H 6800 3450 50  0001 C CNN
F 1 "GND" H 6805 3527 50  0000 C CNN
F 2 "" H 6800 3700 50  0001 C CNN
F 3 "" H 6800 3700 50  0001 C CNN
	1    6800 3700
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0102
U 1 1 62C8B8C8
P 1350 1850
F 0 "#PWR0102" H 1350 1600 50  0001 C CNN
F 1 "Earth" H 1350 1700 50  0001 C CNN
F 2 "" H 1350 1850 50  0001 C CNN
F 3 "~" H 1350 1850 50  0001 C CNN
	1    1350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3600 6800 3600
Wire Wire Line
	6800 3600 6800 3700
Wire Wire Line
	6250 3400 5650 3400
Wire Wire Line
	6000 3200 6000 3500
Wire Wire Line
	6800 3400 6750 3400
Wire Wire Line
	6800 3300 6800 3400
$Comp
L power:+5V #PWR0103
U 1 1 62C8BE11
P 6800 3300
F 0 "#PWR0103" H 6800 3150 50  0001 C CNN
F 1 "+5V" H 6815 3473 50  0000 C CNN
F 2 "" H 6800 3300 50  0001 C CNN
F 3 "" H 6800 3300 50  0001 C CNN
	1    6800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3300 5850 3050
Wire Wire Line
	5850 3050 6950 3050
Wire Wire Line
	6950 3050 6950 3500
Wire Wire Line
	6950 3500 6750 3500
Wire Wire Line
	6250 3600 6100 3600
Text Label 6100 3600 0    50   ~ 0
RST
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 62CA84BA
P 2700 2250
F 0 "J2" H 2780 2242 50  0000 L CNN
F 1 "POWER" H 2780 2151 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2700 2250 50  0001 C CNN
F 3 "~" H 2700 2250 50  0001 C CNN
	1    2700 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 62CA8BD5
P 2700 2550
F 0 "J3" H 2780 2542 50  0000 L CNN
F 1 "MOTOR" H 2780 2451 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2700 2550 50  0001 C CNN
F 3 "~" H 2700 2550 50  0001 C CNN
	1    2700 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 62CA9550
P 2500 3300
F 0 "J1" H 2550 3617 50  0000 C CNN
F 1 "IBT2" H 2550 3526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 2500 3300 50  0001 C CNN
F 3 "~" H 2500 3300 50  0001 C CNN
	1    2500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3200 2850 3200
Wire Wire Line
	2800 3400 2850 3400
Wire Wire Line
	2800 3500 2900 3500
Wire Wire Line
	2300 3200 2050 3200
Wire Wire Line
	2300 3300 2050 3300
Wire Wire Line
	2300 3400 2050 3400
Wire Wire Line
	2300 3500 2150 3500
Text Label 2050 3200 0    50   ~ 0
RPWM
Text Label 2050 3300 0    50   ~ 0
REN
Text Label 2050 3400 0    50   ~ 0
RIS
Text Label 2850 3200 0    50   ~ 0
LPWM
Text Label 2850 3300 0    50   ~ 0
LEN
Text Label 2850 3400 0    50   ~ 0
LIS
Wire Wire Line
	2800 3300 2850 3300
$Comp
L power:GND #PWR0104
U 1 1 62C850BD
P 2900 3500
F 0 "#PWR0104" H 2900 3250 50  0001 C CNN
F 1 "GND" H 2905 3327 50  0000 C CNN
F 2 "" H 2900 3500 50  0001 C CNN
F 3 "" H 2900 3500 50  0001 C CNN
	1    2900 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 62C8544F
P 2150 3500
F 0 "#PWR0105" H 2150 3350 50  0001 C CNN
F 1 "+5V" H 2165 3673 50  0000 C CNN
F 2 "" H 2150 3500 50  0001 C CNN
F 3 "" H 2150 3500 50  0001 C CNN
	1    2150 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:+24V #PWR0106
U 1 1 62CA08BC
P 1350 1200
F 0 "#PWR0106" H 1350 1050 50  0001 C CNN
F 1 "+24V" H 1365 1373 50  0000 C CNN
F 2 "" H 1350 1200 50  0001 C CNN
F 3 "" H 1350 1200 50  0001 C CNN
	1    1350 1200
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U2
U 1 1 62CA6642
P 2500 4650
F 0 "U2" H 2500 4950 50  0000 C CNN
F 1 "PC817" H 2500 4850 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2300 4450 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 2500 4650 50  0001 L CNN
	1    2500 4650
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U3
U 1 1 62CA71DE
P 2500 5200
F 0 "U3" H 2500 5500 50  0000 C CNN
F 1 "PC817" H 2500 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2300 5000 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 2500 5200 50  0001 L CNN
	1    2500 5200
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U4
U 1 1 62CA7691
P 2500 5750
F 0 "U4" H 2500 6050 50  0000 C CNN
F 1 "PC817" H 2500 5950 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2300 5550 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 2500 5750 50  0001 L CNN
	1    2500 5750
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U5
U 1 1 62CA7B0D
P 2500 6300
F 0 "U5" H 2500 6600 50  0000 C CNN
F 1 "PC817" H 2500 6500 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2300 6100 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 2500 6300 50  0001 L CNN
	1    2500 6300
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U6
U 1 1 62CA8113
P 2500 6850
F 0 "U6" H 2500 7150 50  0000 C CNN
F 1 "PC817" H 2500 7050 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2300 6650 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 2500 6850 50  0001 L CNN
	1    2500 6850
	1    0    0    -1  
$EndComp
Text Label 5650 3400 0    50   ~ 0
MISO
Text Label 5650 3300 0    50   ~ 0
MOSI
Wire Wire Line
	6000 3500 6250 3500
Wire Wire Line
	5650 3300 5850 3300
Text Label 5650 3200 0    50   ~ 0
SCK
Wire Wire Line
	5650 3200 6000 3200
$Comp
L Device:R_Small R2
U 1 1 62CED22D
P 2950 4400
F 0 "R2" H 2891 4354 50  0000 R CNN
F 1 "10k" H 2891 4445 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2950 4400 50  0001 C CNN
F 3 "~" H 2950 4400 50  0001 C CNN
	1    2950 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 62CE7896
P 1950 4550
F 0 "R1" V 1754 4550 50  0000 C CNN
F 1 "2.2k" V 1845 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1950 4550 50  0001 C CNN
F 3 "~" H 1950 4550 50  0001 C CNN
	1    1950 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 4550 2200 4550
Wire Wire Line
	2800 4550 2950 4550
Wire Wire Line
	2950 4550 2950 4500
$Comp
L power:+5V #PWR0107
U 1 1 62D58679
P 2950 4250
F 0 "#PWR0107" H 2950 4100 50  0001 C CNN
F 1 "+5V" H 2965 4423 50  0000 C CNN
F 2 "" H 2950 4250 50  0001 C CNN
F 3 "" H 2950 4250 50  0001 C CNN
	1    2950 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 62D58D98
P 2850 7100
F 0 "#PWR0108" H 2850 6850 50  0001 C CNN
F 1 "GND" H 2855 6927 50  0000 C CNN
F 2 "" H 2850 7100 50  0001 C CNN
F 3 "" H 2850 7100 50  0001 C CNN
	1    2850 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4750 2850 4750
Wire Wire Line
	2850 4750 2850 5300
Wire Wire Line
	2800 5300 2850 5300
Connection ~ 2850 5300
Wire Wire Line
	2850 5300 2850 5850
Wire Wire Line
	2800 5850 2850 5850
Connection ~ 2850 5850
Wire Wire Line
	2850 5850 2850 6400
Wire Wire Line
	2800 6400 2850 6400
Connection ~ 2850 6400
Wire Wire Line
	2850 6400 2850 6950
Wire Wire Line
	2800 6950 2850 6950
Connection ~ 2850 6950
Wire Wire Line
	2850 6950 2850 7100
$Comp
L Device:R_Small R7
U 1 1 62D7FDCA
P 2950 4950
F 0 "R7" H 2891 4904 50  0000 R CNN
F 1 "10k" H 2891 4995 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2950 4950 50  0001 C CNN
F 3 "~" H 2950 4950 50  0001 C CNN
	1    2950 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 5100 2950 5100
Wire Wire Line
	2950 5100 2950 5050
$Comp
L power:+5V #PWR0109
U 1 1 62D82F60
P 2950 4800
F 0 "#PWR0109" H 2950 4650 50  0001 C CNN
F 1 "+5V" H 2965 4973 50  0000 C CNN
F 2 "" H 2950 4800 50  0001 C CNN
F 3 "" H 2950 4800 50  0001 C CNN
	1    2950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4800 2950 4850
Wire Wire Line
	2950 4250 2950 4300
$Comp
L Connector:Screw_Terminal_01x04 J10
U 1 1 62DA3BCA
P 6750 4600
F 0 "J10" H 6830 4592 50  0000 L CNN
F 1 "ENCODER" H 6830 4501 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 6750 4600 50  0001 C CNN
F 3 "~" H 6750 4600 50  0001 C CNN
	1    6750 4600
	1    0    0    -1  
$EndComp
Text Label 10550 1900 0    60   ~ 0
10(**SS)
Text Label 10550 1800 0    60   ~ 0
11(**MOSI)
Text Label 5650 3500 0    50   ~ 0
10(**SS)
Text Label 5650 3600 0    50   ~ 0
RPWM
Text Label 5650 3700 0    50   ~ 0
LPWM
$Comp
L Connector:Screw_Terminal_01x03 J5
U 1 1 62DDDE24
P 1350 4650
F 0 "J5" H 1500 4600 50  0000 C CNN
F 1 "IN1" H 1500 4700 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 1350 4650 50  0001 C CNN
F 3 "~" H 1350 4650 50  0001 C CNN
	1    1350 4650
	-1   0    0    1   
$EndComp
$Comp
L power:+24V #PWR0110
U 1 1 62DE64B5
P 1700 4400
F 0 "#PWR0110" H 1700 4250 50  0001 C CNN
F 1 "+24V" H 1715 4573 50  0000 C CNN
F 2 "" H 1700 4400 50  0001 C CNN
F 3 "" H 1700 4400 50  0001 C CNN
	1    1700 4400
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0111
U 1 1 62DE9137
P 1600 7100
F 0 "#PWR0111" H 1600 6850 50  0001 C CNN
F 1 "Earth" H 1600 6950 50  0001 C CNN
F 2 "" H 1600 7100 50  0001 C CNN
F 3 "~" H 1600 7100 50  0001 C CNN
	1    1600 7100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J7
U 1 1 62CB0A69
P 1350 5750
F 0 "J7" H 1500 5700 50  0000 C CNN
F 1 "IN1" H 1500 5800 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 1350 5750 50  0001 C CNN
F 3 "~" H 1350 5750 50  0001 C CNN
	1    1350 5750
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J8
U 1 1 62CB1D40
P 1350 6300
F 0 "J8" H 1500 6250 50  0000 C CNN
F 1 "IN1" H 1500 6350 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 1350 6300 50  0001 C CNN
F 3 "~" H 1350 6300 50  0001 C CNN
	1    1350 6300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J9
U 1 1 62CB2D1A
P 1350 6850
F 0 "J9" H 1500 6800 50  0000 C CNN
F 1 "IN1" H 1500 6900 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 1350 6850 50  0001 C CNN
F 3 "~" H 1350 6850 50  0001 C CNN
	1    1350 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 4650 1800 4650
Wire Wire Line
	1800 4650 1800 4550
Wire Wire Line
	1800 4550 1850 4550
$Comp
L power:Earth #PWR0112
U 1 1 62CEEE16
P 2150 7100
F 0 "#PWR0112" H 2150 6850 50  0001 C CNN
F 1 "Earth" H 2150 6950 50  0001 C CNN
F 2 "" H 2150 7100 50  0001 C CNN
F 3 "~" H 2150 7100 50  0001 C CNN
	1    2150 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 7100 2150 6950
Wire Wire Line
	2150 4750 2200 4750
Wire Wire Line
	2200 5300 2150 5300
Connection ~ 2150 5300
Wire Wire Line
	2150 5300 2150 4750
Wire Wire Line
	2200 5850 2150 5850
Connection ~ 2150 5850
Wire Wire Line
	2150 5850 2150 5300
Wire Wire Line
	2200 6400 2150 6400
Connection ~ 2150 6400
Wire Wire Line
	2150 6400 2150 5850
Wire Wire Line
	2200 6950 2150 6950
Connection ~ 2150 6950
Wire Wire Line
	2150 6950 2150 6400
$Comp
L Device:R_Small R3
U 1 1 62D2902A
P 1950 5100
F 0 "R3" V 1754 5100 50  0000 C CNN
F 1 "2.2k" V 1845 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1950 5100 50  0001 C CNN
F 3 "~" H 1950 5100 50  0001 C CNN
	1    1950 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 62D2B5AC
P 1950 5650
F 0 "R4" V 1754 5650 50  0000 C CNN
F 1 "2.2k" V 1845 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1950 5650 50  0001 C CNN
F 3 "~" H 1950 5650 50  0001 C CNN
	1    1950 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 62D2C74F
P 1950 6200
F 0 "R5" V 1754 6200 50  0000 C CNN
F 1 "2.2k" V 1845 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1950 6200 50  0001 C CNN
F 3 "~" H 1950 6200 50  0001 C CNN
	1    1950 6200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 62D2D68B
P 1950 6750
F 0 "R6" V 1754 6750 50  0000 C CNN
F 1 "2.2k" V 1845 6750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1950 6750 50  0001 C CNN
F 3 "~" H 1950 6750 50  0001 C CNN
	1    1950 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 5200 1800 5200
Wire Wire Line
	1800 5200 1800 5100
Wire Wire Line
	1800 5100 1850 5100
Wire Wire Line
	2050 5100 2200 5100
Wire Wire Line
	2200 5650 2050 5650
Wire Wire Line
	1850 5650 1800 5650
Wire Wire Line
	1800 5650 1800 5750
Wire Wire Line
	1800 5750 1550 5750
Wire Wire Line
	1550 6300 1800 6300
Wire Wire Line
	1800 6300 1800 6200
Wire Wire Line
	1800 6200 1850 6200
Wire Wire Line
	2050 6200 2200 6200
Wire Wire Line
	1550 6850 1800 6850
Wire Wire Line
	1800 6850 1800 6750
Wire Wire Line
	1800 6750 1850 6750
Wire Wire Line
	2050 6750 2200 6750
$Comp
L Device:R_Small R8
U 1 1 62D9BFF0
P 2950 5500
F 0 "R8" H 2891 5454 50  0000 R CNN
F 1 "10k" H 2891 5545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2950 5500 50  0001 C CNN
F 3 "~" H 2950 5500 50  0001 C CNN
	1    2950 5500
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 62D9C58D
P 2950 5350
F 0 "#PWR0113" H 2950 5200 50  0001 C CNN
F 1 "+5V" H 2965 5523 50  0000 C CNN
F 2 "" H 2950 5350 50  0001 C CNN
F 3 "" H 2950 5350 50  0001 C CNN
	1    2950 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 62DAB70F
P 2950 6050
F 0 "R9" H 2891 6004 50  0000 R CNN
F 1 "10k" H 2891 6095 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2950 6050 50  0001 C CNN
F 3 "~" H 2950 6050 50  0001 C CNN
	1    2950 6050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 62DACF76
P 2950 6600
F 0 "R10" H 2891 6554 50  0000 R CNN
F 1 "10k" H 2891 6645 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2950 6600 50  0001 C CNN
F 3 "~" H 2950 6600 50  0001 C CNN
	1    2950 6600
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 62DAFE0D
P 2950 5900
F 0 "#PWR0114" H 2950 5750 50  0001 C CNN
F 1 "+5V" H 2965 6073 50  0000 C CNN
F 2 "" H 2950 5900 50  0001 C CNN
F 3 "" H 2950 5900 50  0001 C CNN
	1    2950 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 62DB0D1F
P 2950 6450
F 0 "#PWR0115" H 2950 6300 50  0001 C CNN
F 1 "+5V" H 2965 6623 50  0000 C CNN
F 2 "" H 2950 6450 50  0001 C CNN
F 3 "" H 2950 6450 50  0001 C CNN
	1    2950 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6750 2950 6750
Wire Wire Line
	2950 6750 2950 6700
Wire Wire Line
	2950 6500 2950 6450
Wire Wire Line
	2800 6200 2950 6200
Wire Wire Line
	2950 6200 2950 6150
Wire Wire Line
	2950 5950 2950 5900
Wire Wire Line
	2800 5650 2950 5650
Wire Wire Line
	2950 5650 2950 5600
Wire Wire Line
	2950 5400 2950 5350
Wire Wire Line
	1700 4400 1700 4550
Wire Wire Line
	1600 4750 1600 5300
$Comp
L Connector:Screw_Terminal_01x03 J6
U 1 1 62DEB939
P 1350 5200
F 0 "J6" H 1500 5150 50  0000 C CNN
F 1 "IN1" H 1500 5250 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 1350 5200 50  0001 C CNN
F 3 "~" H 1350 5200 50  0001 C CNN
	1    1350 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 4550 1700 4550
Connection ~ 1700 4550
Wire Wire Line
	1700 4550 1700 5100
Wire Wire Line
	1550 4750 1600 4750
Wire Wire Line
	1550 5100 1700 5100
Connection ~ 1700 5100
Wire Wire Line
	1700 5100 1700 5650
Wire Wire Line
	1550 5300 1600 5300
Connection ~ 1600 5300
Wire Wire Line
	1600 5300 1600 5850
Wire Wire Line
	1550 5650 1700 5650
Connection ~ 1700 5650
Wire Wire Line
	1700 5650 1700 6200
Wire Wire Line
	1550 5850 1600 5850
Connection ~ 1600 5850
Wire Wire Line
	1600 5850 1600 6400
Wire Wire Line
	1550 6200 1700 6200
Connection ~ 1700 6200
Wire Wire Line
	1700 6200 1700 6750
Wire Wire Line
	1550 6400 1600 6400
Connection ~ 1600 6400
Wire Wire Line
	1600 6400 1600 6950
Wire Wire Line
	1550 6750 1700 6750
Wire Wire Line
	1550 6950 1600 6950
Connection ~ 1600 6950
Wire Wire Line
	1600 6950 1600 7100
$Comp
L Connector_Generic:Conn_01x01 J11
U 1 1 62CA1F80
P 1650 1250
F 0 "J11" H 1850 1250 50  0000 L CNN
F 1 "IN+" H 1700 1250 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 1650 1250 50  0001 C CNN
F 3 "~" H 1650 1250 50  0001 C CNN
	1    1650 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J14
U 1 1 62CA2506
P 1650 1800
F 0 "J14" H 1850 1800 50  0000 L CNN
F 1 "IN-" H 1700 1800 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 1650 1800 50  0001 C CNN
F 3 "~" H 1650 1800 50  0001 C CNN
	1    1650 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J15
U 1 1 62CA27F3
P 2500 1250
F 0 "J15" H 2850 1250 50  0000 C CNN
F 1 "OUT+" H 2650 1250 50  0000 C CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 2500 1250 50  0001 C CNN
F 3 "~" H 2500 1250 50  0001 C CNN
	1    2500 1250
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J18
U 1 1 62CA2B2F
P 2500 1800
F 0 "J18" H 2850 1800 50  0000 C CNN
F 1 "OUT-" H 2650 1800 50  0000 C CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 2500 1800 50  0001 C CNN
F 3 "~" H 2500 1800 50  0001 C CNN
	1    2500 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 1200 1350 1250
Wire Wire Line
	1350 1250 1450 1250
Wire Wire Line
	1350 1850 1350 1800
Wire Wire Line
	1350 1800 1450 1800
Wire Notes Line
	1550 1150 2600 1150
Wire Notes Line
	2600 1150 2600 1900
Wire Notes Line
	2600 1900 1550 1900
Wire Notes Line
	1550 1150 1550 1900
Text Notes 1950 1550 0    50   ~ 0
DC-DC
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 62D0AAC3
P 1650 1400
F 0 "J12" H 1850 1400 50  0000 L CNN
F 1 "IN+" H 1700 1400 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 1650 1400 50  0001 C CNN
F 3 "~" H 1650 1400 50  0001 C CNN
	1    1650 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J13
U 1 1 62D18E9D
P 1650 1650
F 0 "J13" H 1850 1650 50  0000 L CNN
F 1 "IN-" H 1700 1650 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 1650 1650 50  0001 C CNN
F 3 "~" H 1650 1650 50  0001 C CNN
	1    1650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1400 1350 1400
Wire Wire Line
	1350 1400 1350 1250
Connection ~ 1350 1250
Wire Wire Line
	1450 1650 1350 1650
Wire Wire Line
	1350 1650 1350 1800
Connection ~ 1350 1800
$Comp
L Connector_Generic:Conn_01x01 J16
U 1 1 62D3FE52
P 2500 1400
F 0 "J16" H 2850 1400 50  0000 C CNN
F 1 "OUT+" H 2650 1400 50  0000 C CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 2500 1400 50  0001 C CNN
F 3 "~" H 2500 1400 50  0001 C CNN
	1    2500 1400
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J17
U 1 1 62D40146
P 2500 1650
F 0 "J17" H 2850 1650 50  0000 C CNN
F 1 "OUT-" H 2650 1650 50  0000 C CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 2500 1650 50  0001 C CNN
F 3 "~" H 2500 1650 50  0001 C CNN
	1    2500 1650
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 62D84D17
P 2800 1200
F 0 "#PWR0116" H 2800 1050 50  0001 C CNN
F 1 "+5V" H 2815 1373 50  0000 C CNN
F 2 "" H 2800 1200 50  0001 C CNN
F 3 "" H 2800 1200 50  0001 C CNN
	1    2800 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 62D85583
P 2800 1850
F 0 "#PWR0117" H 2800 1600 50  0001 C CNN
F 1 "GND" H 2805 1677 50  0000 C CNN
F 2 "" H 2800 1850 50  0001 C CNN
F 3 "" H 2800 1850 50  0001 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1200 2800 1250
Wire Wire Line
	2800 1400 2700 1400
Wire Wire Line
	2700 1250 2800 1250
Connection ~ 2800 1250
Wire Wire Line
	2800 1250 2800 1400
Wire Wire Line
	2800 1850 2800 1800
Wire Wire Line
	2800 1650 2700 1650
Wire Wire Line
	2700 1800 2800 1800
Connection ~ 2800 1800
Wire Wire Line
	2800 1800 2800 1650
$EndSCHEMATC