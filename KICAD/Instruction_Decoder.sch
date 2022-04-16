EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5100 4750 2    50   Output ~ 0
R2ReadControl
Text GLabel 5100 4650 2    50   Output ~ 0
R1ReadControl
Text GLabel 5100 4850 2    50   Output ~ 0
JumpRegLoad
Text GLabel 5150 2950 2    50   Output ~ 0
JumpEnable
Text GLabel 5150 2550 2    50   Output ~ 0
Count
Text GLabel 5150 2350 2    50   Output ~ 0
InsRegControl
Text GLabel 5150 2450 2    50   Output ~ 0
CounterOutControl
Text GLabel 5150 2650 2    50   Output ~ 0
MemOutEnable
Text GLabel 5150 3050 2    50   Output ~ 0
RAM_Addr_Enable
Text GLabel 7800 2450 2    50   Output ~ 0
StackCount
Text GLabel 7800 2350 2    50   Output ~ 0
StackOutControl
Text GLabel 5100 4950 2    50   Output ~ 0
StackJump
Text GLabel 7800 2550 2    50   Output ~ 0
StackCountDirection
Text GLabel 7800 2750 2    50   Output ~ 0
PortALatch
Text GLabel 7800 2850 2    50   Output ~ 0
PortBLatch
Text GLabel 5100 5150 2    50   Output ~ 0
PortCRead
Text GLabel 5100 5250 2    50   Output ~ 0
PortDRead
$Comp
L MAX7000CPU-Gen2_5-rescue:AT28C64B-15PU U46
U 1 1 627D7DC6
P 4450 2750
F 0 "U46" H 4450 3920 50  0000 C CNN
F 1 "AT28C64B-15PU" H 4450 3829 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 4450 2750 50  0001 L BNN
F 3 "" H 4450 2750 50  0001 L BNN
F 4 "Microchip Technology" H 4450 2750 50  0001 L BNN "MANUFACTURER"
F 5 "B" H 4450 2750 50  0001 L BNN "PARTREV"
F 6 "4.826 mm" H 4450 2750 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 7 "IPC 7351B" H 4450 2750 50  0001 L BNN "STANDARD"
	1    4450 2750
	1    0    0    -1  
$EndComp
Text Label 3750 3150 2    50   ~ 0
State0
Text Label 3750 3250 2    50   ~ 0
State1
Text Label 3750 3350 2    50   ~ 0
State2
Text GLabel 3750 3450 0    50   Output ~ 0
EqualFlag
Text GLabel 3750 3550 0    50   Output ~ 0
OverflowFlag
$Comp
L MAX7000CPU-Gen2_5-rescue:R-Device-MAX7000CPU-Gen2-rescue R143
U 1 1 627D7DD1
P 3600 1950
F 0 "R143" V 3600 1600 50  0000 L CNN
F 1 "50K" V 3600 1850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3530 1950 50  0001 C CNN
F 3 "~" H 3600 1950 50  0001 C CNN
	1    3600 1950
	0    1    1    0   
$EndComp
$Comp
L MAX7000CPU-Gen2_5-rescue:R-Device-MAX7000CPU-Gen2-rescue R145
U 1 1 627D7DD7
P 3600 2050
F 0 "R145" V 3600 1700 50  0000 L CNN
F 1 "50K" V 3600 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3530 2050 50  0001 C CNN
F 3 "~" H 3600 2050 50  0001 C CNN
	1    3600 2050
	0    1    1    0   
$EndComp
$Comp
L MAX7000CPU-Gen2_5-rescue:R-Device-MAX7000CPU-Gen2-rescue R147
U 1 1 627D7DDD
P 3600 2150
F 0 "R147" V 3600 1800 50  0000 L CNN
F 1 "50K" V 3600 2050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3530 2150 50  0001 C CNN
F 3 "~" H 3600 2150 50  0001 C CNN
	1    3600 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 1950 3450 2050
Wire Wire Line
	3450 2100 3400 2100
Wire Wire Line
	3400 2100 3400 2250
Connection ~ 3450 2050
Wire Wire Line
	3450 2050 3450 2100
Wire Wire Line
	3450 2150 3450 2200
Wire Wire Line
	3450 2200 3200 2200
Wire Wire Line
	3200 2200 3200 1850
$Comp
L power:+5V #PWR0126
U 1 1 627D7DEB
P 3200 1850
F 0 "#PWR0126" H 3200 1700 50  0001 C CNN
F 1 "+5V" H 3215 2023 50  0000 C CNN
F 2 "" H 3200 1850 50  0001 C CNN
F 3 "" H 3200 1850 50  0001 C CNN
	1    3200 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 627D7DF1
P 3400 2250
F 0 "#PWR0130" H 3400 2000 50  0001 C CNN
F 1 "GND" H 3405 2077 50  0000 C CNN
F 2 "" H 3400 2250 50  0001 C CNN
F 3 "" H 3400 2250 50  0001 C CNN
	1    3400 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 627D7DF7
P 5150 3650
F 0 "#PWR0132" H 5150 3400 50  0001 C CNN
F 1 "GND" H 5155 3477 50  0000 C CNN
F 2 "" H 5150 3650 50  0001 C CNN
F 3 "" H 5150 3650 50  0001 C CNN
	1    5150 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 627D7DFD
P 5150 1850
F 0 "#PWR0127" H 5150 1700 50  0001 C CNN
F 1 "+5V" H 5165 2023 50  0000 C CNN
F 2 "" H 5150 1850 50  0001 C CNN
F 3 "" H 5150 1850 50  0001 C CNN
	1    5150 1850
	1    0    0    -1  
$EndComp
$Comp
L MAX7000CPU-Gen2_5-rescue:AT28C64B-15PU U47
U 1 1 627D7E07
P 7100 2750
F 0 "U47" H 7100 3920 50  0000 C CNN
F 1 "AT28C64B-15PU" H 7100 3829 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 7100 2750 50  0001 L BNN
F 3 "" H 7100 2750 50  0001 L BNN
F 4 "Microchip Technology" H 7100 2750 50  0001 L BNN "MANUFACTURER"
F 5 "B" H 7100 2750 50  0001 L BNN "PARTREV"
F 6 "4.826 mm" H 7100 2750 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 7 "IPC 7351B" H 7100 2750 50  0001 L BNN "STANDARD"
	1    7100 2750
	1    0    0    -1  
$EndComp
Text Label 6400 3150 2    50   ~ 0
State0
Text Label 6400 3250 2    50   ~ 0
State1
Text Label 6400 3350 2    50   ~ 0
State2
Text GLabel 6400 3450 0    50   Output ~ 0
EqualFlag
Text GLabel 6400 3550 0    50   Output ~ 0
OverflowFlag
$Comp
L MAX7000CPU-Gen2_5-rescue:R-Device-MAX7000CPU-Gen2-rescue R144
U 1 1 627D7E12
P 6250 1950
F 0 "R144" V 6250 1600 50  0000 L CNN
F 1 "50K" V 6250 1850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6180 1950 50  0001 C CNN
F 3 "~" H 6250 1950 50  0001 C CNN
	1    6250 1950
	0    1    1    0   
$EndComp
$Comp
L MAX7000CPU-Gen2_5-rescue:R-Device-MAX7000CPU-Gen2-rescue R146
U 1 1 627D7E18
P 6250 2050
F 0 "R146" V 6250 1700 50  0000 L CNN
F 1 "50K" V 6250 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6180 2050 50  0001 C CNN
F 3 "~" H 6250 2050 50  0001 C CNN
	1    6250 2050
	0    1    1    0   
$EndComp
$Comp
L MAX7000CPU-Gen2_5-rescue:R-Device-MAX7000CPU-Gen2-rescue R148
U 1 1 627D7E1E
P 6250 2150
F 0 "R148" V 6250 1800 50  0000 L CNN
F 1 "50K" V 6250 2050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6180 2150 50  0001 C CNN
F 3 "~" H 6250 2150 50  0001 C CNN
	1    6250 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 1950 6100 2050
Wire Wire Line
	6100 2100 6050 2100
Wire Wire Line
	6050 2100 6050 2250
Connection ~ 6100 2050
Wire Wire Line
	6100 2050 6100 2100
Wire Wire Line
	6100 2150 6100 2200
Wire Wire Line
	6100 2200 5850 2200
Wire Wire Line
	5850 2200 5850 1850
$Comp
L power:+5V #PWR0128
U 1 1 627D7E2C
P 5850 1850
F 0 "#PWR0128" H 5850 1700 50  0001 C CNN
F 1 "+5V" H 5865 2023 50  0000 C CNN
F 2 "" H 5850 1850 50  0001 C CNN
F 3 "" H 5850 1850 50  0001 C CNN
	1    5850 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 627D7E32
P 6050 2250
F 0 "#PWR0131" H 6050 2000 50  0001 C CNN
F 1 "GND" H 6055 2077 50  0000 C CNN
F 2 "" H 6050 2250 50  0001 C CNN
F 3 "" H 6050 2250 50  0001 C CNN
	1    6050 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0129
U 1 1 627D7E38
P 7800 1850
F 0 "#PWR0129" H 7800 1700 50  0001 C CNN
F 1 "+5V" H 7815 2023 50  0000 C CNN
F 2 "" H 7800 1850 50  0001 C CNN
F 3 "" H 7800 1850 50  0001 C CNN
	1    7800 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 627D7E3E
P 7800 3650
F 0 "#PWR0133" H 7800 3400 50  0001 C CNN
F 1 "GND" H 7805 3477 50  0000 C CNN
F 2 "" H 7800 3650 50  0001 C CNN
F 3 "" H 7800 3650 50  0001 C CNN
	1    7800 3650
	1    0    0    -1  
$EndComp
Text Label 3750 2350 2    50   ~ 0
Ins8
Text Label 3750 2450 2    50   ~ 0
Ins9
Text Label 3750 2550 2    50   ~ 0
Ins10
Text Label 3750 2650 2    50   ~ 0
Ins11
Text Label 3750 2750 2    50   ~ 0
Ins12
Text Label 3750 2850 2    50   ~ 0
Ins13
Text Label 3750 2950 2    50   ~ 0
Ins14
Text Label 3750 3050 2    50   ~ 0
Ins15
Text Label 6400 2350 2    50   ~ 0
Ins8
Text Label 6400 2450 2    50   ~ 0
Ins9
Text Label 6400 2550 2    50   ~ 0
Ins10
Text Label 6400 2650 2    50   ~ 0
Ins11
Text Label 6400 2750 2    50   ~ 0
Ins12
Text Label 6400 2850 2    50   ~ 0
Ins13
Text Label 6400 2950 2    50   ~ 0
Ins14
Text Label 6400 3050 2    50   ~ 0
Ins15
Text GLabel 5100 4550 2    50   Output ~ 0
MainRegReadControl
$Comp
L power:+5V #PWR0134
U 1 1 627D7E55
P 4600 4250
F 0 "#PWR0134" H 4600 4100 50  0001 C CNN
F 1 "+5V" H 4615 4423 50  0000 C CNN
F 2 "" H 4600 4250 50  0001 C CNN
F 3 "" H 4600 4250 50  0001 C CNN
	1    4600 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 627D7E5B
P 4600 5850
F 0 "#PWR0136" H 4600 5600 50  0001 C CNN
F 1 "GND" H 4605 5677 50  0000 C CNN
F 2 "" H 4600 5850 50  0001 C CNN
F 3 "" H 4600 5850 50  0001 C CNN
	1    4600 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5450 4100 5550
Text GLabel 4100 5500 0    50   Input ~ 0
RegRead
Text GLabel 7800 2650 2    50   Output ~ 0
MainRegOutputControl
Text GLabel 7800 3050 2    50   Output ~ 0
RegRead
Text GLabel 5100 5050 2    50   Output ~ 0
Ram_Addr_Read
Text Label 4100 4550 2    50   ~ 0
Ins0
Text Label 4100 4650 2    50   ~ 0
Ins1
Text Label 4100 4750 2    50   ~ 0
Ins2
Text Label 4100 4850 2    50   ~ 0
Ins3
Text Label 4100 4950 2    50   ~ 0
Ins4
Text Label 4100 5050 2    50   ~ 0
Ins5
Text Label 4100 5150 2    50   ~ 0
Ins6
Text Label 4100 5250 2    50   ~ 0
Ins7
Text Label 6300 4550 2    50   ~ 0
Ins0
Text Label 6300 4650 2    50   ~ 0
Ins1
Text Label 6300 4750 2    50   ~ 0
Ins2
Text Label 6300 4850 2    50   ~ 0
Ins3
Text Label 6300 4950 2    50   ~ 0
Ins4
Text Label 6300 5050 2    50   ~ 0
Ins5
Text Label 6300 5150 2    50   ~ 0
Ins6
Text Label 6300 5250 2    50   ~ 0
Ins7
Text GLabel 7300 4650 2    50   Input ~ 0
R1Output
Text GLabel 7300 5050 2    50   Input ~ 0
R2Output
Text GLabel 7300 4550 2    50   Input ~ 0
MainAOutput
Text GLabel 7300 4950 2    50   Input ~ 0
MainBOutput
Text GLabel 7300 4850 2    50   Input ~ 0
MemAddrAOutput
Text GLabel 7300 5250 2    50   Input ~ 0
MemAddrBOutput
Wire Wire Line
	6300 5450 6300 5550
Text GLabel 7300 5150 2    50   Input ~ 0
JumpBufferBOutput
Text GLabel 7300 4750 2    50   Input ~ 0
JumpBufferAOutput
$Comp
L power:+5V #PWR0135
U 1 1 627D7E7F
P 6800 4250
F 0 "#PWR0135" H 6800 4100 50  0001 C CNN
F 1 "+5V" H 6815 4423 50  0000 C CNN
F 2 "" H 6800 4250 50  0001 C CNN
F 3 "" H 6800 4250 50  0001 C CNN
	1    6800 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 627D7E85
P 6800 5850
F 0 "#PWR0137" H 6800 5600 50  0001 C CNN
F 1 "GND" H 6805 5677 50  0000 C CNN
F 2 "" H 6800 5850 50  0001 C CNN
F 3 "" H 6800 5850 50  0001 C CNN
	1    6800 5850
	1    0    0    -1  
$EndComp
Text GLabel 7800 2950 2    50   Input ~ 0
ALU_Regs
Text GLabel 6300 5500 0    50   Input ~ 0
ALU_Regs
$Comp
L 74xx:74LS541 U48
U 1 1 627D7E8D
P 4600 5050
F 0 "U48" H 4250 5800 50  0000 C CNN
F 1 "74LS541" H 4350 5700 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4600 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS541" H 4600 5050 50  0001 C CNN
	1    4600 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS541 U49
U 1 1 627D7E93
P 6800 5050
F 0 "U49" H 6450 5800 50  0000 C CNN
F 1 "74LS541" H 6550 5700 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6800 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS541" H 6800 5050 50  0001 C CNN
	1    6800 5050
	1    0    0    -1  
$EndComp
Text HLabel 1600 3700 0    50   Input ~ 0
State[0...2]
Wire Bus Line
	1600 3700 1750 3700
Entry Wire Line
	1750 3750 1850 3850
Entry Wire Line
	1750 3850 1850 3950
Entry Wire Line
	1750 3950 1850 4050
Wire Wire Line
	1850 4050 1900 4050
Wire Wire Line
	1850 3850 1900 3850
Wire Wire Line
	1850 3950 1900 3950
Text Label 1900 3850 0    50   ~ 0
State0
Text Label 1900 3950 0    50   ~ 0
State1
Text Label 1900 4050 0    50   ~ 0
State2
Text HLabel 1550 4700 0    50   Input ~ 0
Ins[0...15]
Wire Bus Line
	1550 4700 1700 4700
Entry Wire Line
	1700 4750 1800 4850
Entry Wire Line
	1700 4850 1800 4950
Entry Wire Line
	1700 4950 1800 5050
Entry Wire Line
	1700 5050 1800 5150
Entry Wire Line
	1700 5150 1800 5250
Entry Wire Line
	1700 5250 1800 5350
Entry Wire Line
	1700 5350 1800 5450
Entry Wire Line
	1700 5450 1800 5550
Entry Wire Line
	1700 5550 1800 5650
Entry Wire Line
	1700 5650 1800 5750
Entry Wire Line
	1700 5750 1800 5850
Entry Wire Line
	1700 5850 1800 5950
Entry Wire Line
	1700 5950 1800 6050
Entry Wire Line
	1700 6050 1800 6150
Entry Wire Line
	1700 6150 1800 6250
Entry Wire Line
	1700 6250 1800 6350
Wire Wire Line
	1800 6350 1850 6350
Wire Wire Line
	1800 4850 1850 4850
Wire Wire Line
	1800 4950 1850 4950
Wire Wire Line
	1800 5050 1850 5050
Wire Wire Line
	1800 5150 1850 5150
Wire Wire Line
	1800 5250 1850 5250
Wire Wire Line
	1800 5350 1850 5350
Wire Wire Line
	1800 5450 1850 5450
Wire Wire Line
	1800 5550 1850 5550
Wire Wire Line
	1800 5650 1850 5650
Wire Wire Line
	1800 5750 1850 5750
Wire Wire Line
	1800 5850 1850 5850
Wire Wire Line
	1800 5950 1850 5950
Wire Wire Line
	1800 6050 1850 6050
Wire Wire Line
	1800 6150 1850 6150
Wire Wire Line
	1800 6250 1850 6250
Text Label 1850 4850 0    50   ~ 0
Ins0
Text Label 1850 4950 0    50   ~ 0
Ins1
Text Label 1850 5050 0    50   ~ 0
Ins2
Text Label 1850 5150 0    50   ~ 0
Ins3
Text Label 1850 5250 0    50   ~ 0
Ins4
Text Label 1850 5350 0    50   ~ 0
Ins5
Text Label 1850 5450 0    50   ~ 0
Ins6
Text Label 1850 5550 0    50   ~ 0
Ins7
Text Label 1850 5650 0    50   ~ 0
Ins8
Text Label 1850 5750 0    50   ~ 0
Ins9
Text Label 1850 5850 0    50   ~ 0
Ins10
Text Label 1850 5950 0    50   ~ 0
Ins11
Text Label 1850 6050 0    50   ~ 0
Ins12
Text Label 1850 6150 0    50   ~ 0
Ins13
Text Label 1850 6250 0    50   ~ 0
Ins14
Text Label 1850 6350 0    50   ~ 0
Ins15
Text GLabel 5150 2750 2    50   Output ~ 0
MemWriteControlH
Text GLabel 5150 2850 2    50   Output ~ 0
MemWriteControlL
Wire Bus Line
	1750 3700 1750 3950
Wire Bus Line
	1700 4700 1700 6250
$EndSCHEMATC
