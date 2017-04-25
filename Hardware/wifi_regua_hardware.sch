EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:diode
LIBS:relays
LIBS:Supply
LIBS:switches
LIBS:wifi_regua_hardware-cache
EELAYER 25 0
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
L BC548 Q1
U 1 1 58D80B2A
P 8550 5700
F 0 "Q1" H 8750 5775 50  0000 L CNN
F 1 "BC548" H 8750 5700 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 8750 5625 50  0001 L CIN
F 3 "" H 8550 5700 50  0001 L CNN
	1    8550 5700
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 J4
U 1 1 58D80B87
P 5700 1800
F 0 "J4" H 5700 2050 50  0000 C CNN
F 1 "CONN_02X04" H 5700 1550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 5700 600 50  0001 C CNN
F 3 "" H 5700 600 50  0001 C CNN
	1    5700 1800
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 58D80BFA
P 8350 5250
F 0 "D2" H 8350 5350 50  0000 C CNN
F 1 "LED" H 8350 5150 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 8350 5250 50  0001 C CNN
F 3 "" H 8350 5250 50  0001 C CNN
	1    8350 5250
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 58D80C69
P 8350 4800
F 0 "R4" V 8430 4800 50  0000 C CNN
F 1 "R" V 8350 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8280 4800 50  0001 C CNN
F 3 "" H 8350 4800 50  0001 C CNN
	1    8350 4800
	-1   0    0    1   
$EndComp
$Comp
L 1N4148 D3
U 1 1 58D80E6C
P 8650 4950
F 0 "D3" H 8650 5050 50  0000 C CNN
F 1 "1N4148" H 8650 4850 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8650 4775 50  0001 C CNN
F 3 "" H 8650 4950 50  0001 C CNN
	1    8650 4950
	0    1    1    0   
$EndComp
$Comp
L FINDER-36.11.4001 RL1
U 1 1 58D80E9F
P 9200 4900
F 0 "RL1" H 9650 5050 50  0000 L CNN
F 1 "FINDER-36.11.4001" H 9650 4950 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 9200 4900 50  0001 C CNN
F 3 "" H 9200 4900 50  0001 C CNN
	1    9200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5400 8350 5500
Wire Wire Line
	8350 5500 9000 5500
Wire Wire Line
	9000 5500 9000 5200
Wire Wire Line
	8650 5100 8650 5500
Connection ~ 8650 5500
Wire Wire Line
	9000 4600 9000 4450
Wire Wire Line
	9000 4450 8350 4450
Wire Wire Line
	8350 4450 8350 4650
Wire Wire Line
	8350 4950 8350 5100
Wire Wire Line
	8650 4800 8650 4450
Wire Wire Line
	8650 4450 8600 4450
$Comp
L GND #PWR01
U 1 1 58D81251
P 8650 6050
F 0 "#PWR01" H 8650 5800 50  0001 C CNN
F 1 "GND" H 8650 5900 50  0000 C CNN
F 2 "" H 8650 6050 50  0001 C CNN
F 3 "" H 8650 6050 50  0001 C CNN
	1    8650 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5900 8650 6050
$Comp
L LM1117-3.3 U2
U 1 1 58FCF9F3
P 2650 7050
F 0 "U2" H 2750 6800 50  0000 C CNN
F 1 "LM1117-3.3" H 2650 7300 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 2650 7050 50  0001 C CNN
F 3 "" H 2650 7050 50  0001 C CNN
	1    2650 7050
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 58FCFA66
P 3150 7050
F 0 "L1" V 3100 7050 50  0000 C CNN
F 1 "L" V 3225 7050 50  0000 C CNN
F 2 "Air_Coils_SML_NEOSID:Neosid_Air-Coil_SML_1turn_HDM0131A" H 3150 7050 50  0001 C CNN
F 3 "" H 3150 7050 50  0001 C CNN
	1    3150 7050
	0    -1   -1   0   
$EndComp
$Comp
L D_Zener D1
U 1 1 58FCFBCC
P 3350 7200
F 0 "D1" H 3350 7300 50  0000 C CNN
F 1 "D_Zener" H 3350 7100 50  0000 C CNN
F 2 "Diodes_SMD:D_MELF_Handsoldering" H 3350 7200 50  0001 C CNN
F 3 "" H 3350 7200 50  0001 C CNN
	1    3350 7200
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 7050 2350 7050
Wire Wire Line
	2250 6950 2250 7050
Connection ~ 2250 7050
Wire Wire Line
	2150 7200 2150 7450
Wire Wire Line
	2150 7450 3550 7450
Wire Wire Line
	3350 7450 3350 7350
Wire Wire Line
	2650 7350 2650 7450
Connection ~ 2650 7450
Wire Wire Line
	2950 7050 3000 7050
Wire Wire Line
	3300 7050 3650 7050
$Comp
L GND #PWR02
U 1 1 58FD02E3
P 3350 7450
F 0 "#PWR02" H 3350 7200 50  0001 C CNN
F 1 "GND" H 3350 7300 50  0000 C CNN
F 2 "" H 3350 7450 50  0001 C CNN
F 3 "" H 3350 7450 50  0001 C CNN
	1    3350 7450
	1    0    0    -1  
$EndComp
Connection ~ 3350 7050
$Comp
L C_Small C1
U 1 1 58FD05ED
P 3550 7300
F 0 "C1" H 3560 7370 50  0000 L CNN
F 1 "C_Small" H 3560 7220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3550 7300 50  0001 C CNN
F 3 "" H 3550 7300 50  0001 C CNN
	1    3550 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 7450 3550 7400
Connection ~ 3350 7450
Wire Wire Line
	3550 7200 3550 7050
Connection ~ 3550 7050
$Comp
L GND #PWR03
U 1 1 58FD0890
P 5350 1600
F 0 "#PWR03" H 5350 1350 50  0001 C CNN
F 1 "GND" H 5350 1450 50  0000 C CNN
F 2 "" H 5350 1600 50  0001 C CNN
F 3 "" H 5350 1600 50  0001 C CNN
	1    5350 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 1650 5350 1650
Wire Wire Line
	5350 1650 5350 1600
$Comp
L +3.3V #PWR04
U 1 1 58FD08E4
P 6050 2300
F 0 "#PWR04" H 6050 2150 50  0001 C CNN
F 1 "+3.3V" H 6050 2440 50  0000 C CNN
F 2 "" H 6050 2300 50  0001 C CNN
F 3 "" H 6050 2300 50  0001 C CNN
	1    6050 2300
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 58FD0A42
P 3650 7050
F 0 "#PWR05" H 3650 6900 50  0001 C CNN
F 1 "+3.3V" H 3650 7190 50  0000 C CNN
F 2 "" H 3650 7050 50  0001 C CNN
F 3 "" H 3650 7050 50  0001 C CNN
	1    3650 7050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 58FD0B74
P 2250 6950
F 0 "#PWR06" H 2250 6800 50  0001 C CNN
F 1 "+5V" H 2250 7090 50  0000 C CNN
F 2 "" H 2250 6950 50  0001 C CNN
F 3 "" H 2250 6950 50  0001 C CNN
	1    2250 6950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 58FD0BA9
P 8650 4450
F 0 "#PWR07" H 8650 4300 50  0001 C CNN
F 1 "+5V" H 8650 4590 50  0000 C CNN
F 2 "" H 8650 4450 50  0001 C CNN
F 3 "" H 8650 4450 50  0001 C CNN
	1    8650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1950 6050 2300
Wire Wire Line
	5950 1950 6250 1950
$Comp
L R_Small R2
U 1 1 58FD1294
P 6100 1750
F 0 "R2" V 6050 1850 50  0000 L CNN
F 1 "R_Small" V 6100 1950 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6100 1750 50  0001 C CNN
F 3 "" H 6100 1750 50  0001 C CNN
	1    6100 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 1750 5950 1750
Wire Wire Line
	6200 1750 6250 1750
Wire Wire Line
	6250 1750 6250 1950
Connection ~ 6050 1950
Text GLabel 6050 1550 2    60   Input ~ 0
TX
Text GLabel 5200 2000 0    60   Input ~ 0
RX
Wire Wire Line
	5200 2000 5450 2000
Wire Wire Line
	6050 1550 6000 1550
Wire Wire Line
	6000 1550 6000 1650
Wire Wire Line
	6000 1650 5950 1650
$Comp
L SW_Push_Dual SW1
U 1 1 58FD1564
P 1150 4600
F 0 "SW1" H 1200 4700 50  0000 L CNN
F 1 "SW_Push_Dual" H 1150 4330 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 1150 4800 50  0001 C CNN
F 3 "" H 1150 4800 50  0001 C CNN
	1    1150 4600
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_Dual SW2
U 1 1 58FD1781
P 1150 5100
F 0 "SW2" H 1200 5200 50  0000 L CNN
F 1 "SW_Push_Dual" H 1150 4830 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 1150 5300 50  0001 C CNN
F 3 "" H 1150 5300 50  0001 C CNN
	1    1150 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 58FD17C8
P 850 5600
F 0 "#PWR08" H 850 5350 50  0001 C CNN
F 1 "GND" H 850 5450 50  0000 C CNN
F 2 "" H 850 5600 50  0001 C CNN
F 3 "" H 850 5600 50  0001 C CNN
	1    850  5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5600 850  4600
Wire Wire Line
	850  4600 950  4600
Wire Wire Line
	950  4800 850  4800
Connection ~ 850  4800
Wire Wire Line
	850  5100 950  5100
Connection ~ 850  5100
Wire Wire Line
	950  5300 850  5300
Connection ~ 850  5300
Wire Wire Line
	1350 4800 1350 4600
Wire Wire Line
	1350 5100 1350 5300
Text GLabel 1450 4600 2    60   Input ~ 0
Reset
Text GLabel 5200 1850 0    60   Input ~ 0
Prog_Mod
Wire Wire Line
	1450 5100 1350 5100
Wire Wire Line
	1350 4600 1450 4600
Text GLabel 6300 1850 2    60   Input ~ 0
Reset
Wire Wire Line
	5950 1850 6300 1850
Text GLabel 1450 5100 2    60   Input ~ 0
Prog_Mod
Wire Wire Line
	5450 1850 5200 1850
Text GLabel 5200 1700 0    60   Input ~ 0
Relay_Activation
Wire Wire Line
	5450 2000 5450 1950
Wire Wire Line
	5450 1750 5300 1750
Wire Wire Line
	5300 1750 5300 1700
Wire Wire Line
	5300 1700 5200 1700
$Comp
L CONN_01X02 J2
U 1 1 58FD2F75
P 1700 5550
F 0 "J2" H 1700 5700 50  0000 C CNN
F 1 "CONN_01X02" V 1800 5550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1700 5550 50  0001 C CNN
F 3 "" H 1700 5550 50  0001 C CNN
	1    1700 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5500 1500 5300
Wire Wire Line
	1500 5300 1400 5300
Wire Wire Line
	1400 5300 1400 5100
Connection ~ 1400 5100
Wire Wire Line
	1500 5600 850  5600
$Comp
L Supply-5V U1
U 1 1 58FD34DD
P 1750 7250
F 0 "U1" H 1850 7600 60  0000 C CNN
F 1 "Supply-5V" H 1650 7150 60  0000 C CNN
F 2 "" H 1850 7600 60  0001 C CNN
F 3 "" H 1850 7600 60  0001 C CNN
	1    1750 7250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 J3
U 1 1 58FD3A22
P 3400 4950
F 0 "J3" H 3400 5150 50  0000 C CNN
F 1 "CONN_01X03" V 3500 4950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3400 4950 50  0001 C CNN
F 3 "" H 3400 4950 50  0001 C CNN
	1    3400 4950
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 58FD3B8B
P 5350 2150
F 0 "R1" H 5380 2170 50  0000 L CNN
F 1 "R_Small" H 5380 2110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 2150 50  0001 C CNN
F 3 "" H 5350 2150 50  0001 C CNN
	1    5350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2050 5350 1850
Connection ~ 5350 1850
Wire Wire Line
	6050 2250 5350 2250
Connection ~ 6050 2250
Text GLabel 3000 4850 0    60   Input ~ 0
TX
Wire Wire Line
	3000 4850 3200 4850
Text GLabel 3000 5000 0    60   Input ~ 0
RX
$Comp
L GND #PWR09
U 1 1 58FD3FA4
P 3150 5150
F 0 "#PWR09" H 3150 4900 50  0001 C CNN
F 1 "GND" H 3150 5000 50  0000 C CNN
F 2 "" H 3150 5150 50  0001 C CNN
F 3 "" H 3150 5150 50  0001 C CNN
	1    3150 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4950 3100 4950
Wire Wire Line
	3100 4950 3100 5000
Wire Wire Line
	3100 5000 3000 5000
Wire Wire Line
	3150 5150 3150 5050
Wire Wire Line
	3150 5050 3200 5050
Text GLabel 8000 5700 0    60   Input ~ 0
Relay_Activation
$Comp
L R_Small R3
U 1 1 58FD4C8F
P 8200 5700
F 0 "R3" H 8230 5720 50  0000 L CNN
F 1 "R_Small" H 8230 5660 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8200 5700 50  0001 C CNN
F 3 "" H 8200 5700 50  0001 C CNN
	1    8200 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 5700 8100 5700
Wire Wire Line
	8300 5700 8350 5700
$Comp
L Screw_Terminal_1x02 J5
U 1 1 58FD62CF
P 10500 5100
F 0 "J5" H 10500 5350 50  0000 C TNN
F 1 "Screw_Terminal_1x02" V 10350 5100 50  0000 C TNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 10500 4875 50  0001 C CNN
F 3 "" H 10475 5100 50  0001 C CNN
	1    10500 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	10300 5200 10200 5200
Wire Wire Line
	10200 5200 10200 5400
Wire Wire Line
	9400 5400 9400 5200
Wire Wire Line
	9500 4600 9500 4550
Wire Wire Line
	9500 4550 10300 4550
Wire Wire Line
	10300 4550 10300 5000
$Comp
L Screw_Terminal_1x02 J1
U 1 1 58FD694F
P 750 7150
F 0 "J1" H 750 7400 50  0000 C TNN
F 1 "Screw_Terminal_1x02" V 600 7150 50  0000 C TNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 750 6925 50  0001 C CNN
F 3 "" H 725 7150 50  0001 C CNN
	1    750  7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  7050 1100 7050
Wire Wire Line
	950  7250 1050 7250
Wire Wire Line
	1050 7200 1050 7350
Wire Wire Line
	1050 7200 1100 7200
Text GLabel 1050 6950 1    60   Input ~ 0
AC_1
Text GLabel 1050 7350 3    60   Input ~ 0
AC_2
Connection ~ 1050 7250
Wire Wire Line
	1050 6950 1050 7050
Connection ~ 1050 7050
Text GLabel 9400 5400 3    60   Input ~ 0
AC_1
Text GLabel 10200 5400 3    60   Input ~ 0
AC_2
NoConn ~ 9300 4600
Connection ~ 3000 7050
Connection ~ 2950 7050
NoConn ~ 2350 7250
$EndSCHEMATC
