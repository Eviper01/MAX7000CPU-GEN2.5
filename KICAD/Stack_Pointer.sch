EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
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
L MAX7000CPU-Gen2_5-rescue:GND-power-MAX7000CPU-Gen2-rescue #PWR?
U 1 1 624198F2
P 6500 3550
AR Path="/624198F2" Ref="#PWR?"  Part="1" 
AR Path="/623B80EB/624198F2" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 6500 3300 50  0001 C CNN
F 1 "GND" H 6400 3550 50  0000 C CNN
F 2 "" H 6500 3550 50  0001 C CNN
F 3 "" H 6500 3550 50  0001 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
$Comp
L MAX7000CPU-Gen2_5-rescue:+5V-power-MAX7000CPU-Gen2-rescue #PWR?
U 1 1 624198F8
P 6500 1950
AR Path="/624198F8" Ref="#PWR?"  Part="1" 
AR Path="/623B80EB/624198F8" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 6500 1800 50  0001 C CNN
F 1 "+5V" H 6515 2123 50  0000 C CNN
F 2 "" H 6500 1950 50  0001 C CNN
F 3 "" H 6500 1950 50  0001 C CNN
	1    6500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3150 5950 3150
Wire Wire Line
	5950 3150 5950 3250
Wire Wire Line
	6000 3250 5950 3250
Text GLabel 6000 3700 2    50   Input ~ 0
StackOutControl
$Comp
L MAX7000CPU-Gen2_5-rescue:CD4029BEE4-CPU_ics U?
U 1 1 62419910
P 4100 2050
AR Path="/62419910" Ref="U?"  Part="1" 
AR Path="/623B80EB/62419910" Ref="U50"  Part="1" 
F 0 "U50" H 4300 2250 50  0000 C CNN
F 1 "CD4029BEE4" H 4500 2150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5950 2150 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4029b.pdf" H 5950 2050 50  0001 L CNN
F 4 "CD4029BEE4, 4-stage Decade and Binary Counter Up/Down Counter, Bi-Directional, 3  18 V, 16-Pin PDIP" H 5950 1950 50  0001 L CNN "Description"
F 5 "5.08" H 5950 1850 50  0001 L CNN "Height"
F 6 "595-CD4029BEE4" H 5950 1750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/CD4029BEE4?qs=LU5rZWrBGo0epKDtktqo2w%3D%3D" H 5950 1650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 5950 1550 50  0001 L CNN "Manufacturer_Name"
F 9 "CD4029BEE4" H 5950 1450 50  0001 L CNN "Manufacturer_Part_Number"
	1    4100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2250 6000 2250
Wire Wire Line
	5550 2350 6000 2350
Wire Wire Line
	5550 2450 6000 2450
Wire Wire Line
	5550 2550 6000 2550
$Comp
L MAX7000CPU-Gen2_5-rescue:GND-power-MAX7000CPU-Gen2-rescue #PWR?
U 1 1 6241991A
P 4100 2750
AR Path="/6241991A" Ref="#PWR?"  Part="1" 
AR Path="/623B80EB/6241991A" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 4100 2500 50  0001 C CNN
F 1 "GND" H 4105 2577 50  0000 C CNN
F 2 "" H 4100 2750 50  0001 C CNN
F 3 "" H 4100 2750 50  0001 C CNN
	1    4100 2750
	1    0    0    -1  
$EndComp
$Comp
L MAX7000CPU-Gen2_5-rescue:+5V-power-MAX7000CPU-Gen2-rescue #PWR?
U 1 1 62419920
P 5550 1950
AR Path="/62419920" Ref="#PWR?"  Part="1" 
AR Path="/623B80EB/62419920" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 5550 1800 50  0001 C CNN
F 1 "+5V" H 5565 2123 50  0000 C CNN
F 2 "" H 5550 1950 50  0001 C CNN
F 3 "" H 5550 1950 50  0001 C CNN
	1    5550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2050 5550 1950
Wire Wire Line
	5550 2650 5600 2650
Wire Wire Line
	4100 2650 4050 2650
Wire Wire Line
	5550 1900 5550 1950
Connection ~ 5550 1950
$Comp
L MAX7000CPU-Gen2_5-rescue:CD4029BEE4-CPU_ics U?
U 1 1 62419931
P 4100 3100
AR Path="/62419931" Ref="U?"  Part="1" 
AR Path="/623B80EB/62419931" Ref="U52"  Part="1" 
F 0 "U52" H 4300 3300 50  0000 C CNN
F 1 "CD4029BEE4" H 4500 3200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5950 3200 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4029b.pdf" H 5950 3100 50  0001 L CNN
F 4 "CD4029BEE4, 4-stage Decade and Binary Counter Up/Down Counter, Bi-Directional, 3  18 V, 16-Pin PDIP" H 5950 3000 50  0001 L CNN "Description"
F 5 "5.08" H 5950 2900 50  0001 L CNN "Height"
F 6 "595-CD4029BEE4" H 5950 2800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/CD4029BEE4?qs=LU5rZWrBGo0epKDtktqo2w%3D%3D" H 5950 2700 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 5950 2600 50  0001 L CNN "Manufacturer_Name"
F 9 "CD4029BEE4" H 5950 2500 50  0001 L CNN "Manufacturer_Part_Number"
	1    4100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2750 5650 2750
Wire Wire Line
	5650 2750 5650 3200
Wire Wire Line
	5650 3200 5550 3200
Wire Wire Line
	5550 3700 5600 3700
Wire Wire Line
	4100 3700 4050 3700
Wire Wire Line
	5550 3300 5700 3300
Wire Wire Line
	5700 3300 5700 2650
Wire Wire Line
	5700 2650 6000 2650
Wire Wire Line
	5550 3400 5750 3400
Wire Wire Line
	5750 3400 5750 2750
Wire Wire Line
	5750 2750 6000 2750
Wire Wire Line
	5550 3500 5800 3500
Wire Wire Line
	5800 3500 5800 2850
Wire Wire Line
	5800 2850 6000 2850
Wire Wire Line
	5550 3600 5850 3600
Wire Wire Line
	5850 3600 5850 2950
Wire Wire Line
	5850 2950 6000 2950
Wire Wire Line
	4100 3200 4000 3200
Wire Wire Line
	4000 3200 4000 2150
Wire Wire Line
	4000 2150 4100 2150
Wire Wire Line
	4100 3100 3950 3100
Wire Wire Line
	3950 3100 3950 2050
Wire Wire Line
	3950 2050 4100 2050
Wire Wire Line
	5950 3700 6000 3700
Text GLabel 3900 1900 0    50   Input ~ 0
StackJump
Wire Wire Line
	3950 2050 3950 1900
Wire Wire Line
	3950 1900 3900 1900
Connection ~ 3950 2050
Wire Wire Line
	4000 2150 4000 1800
Wire Wire Line
	4000 1800 3900 1800
Connection ~ 4000 2150
$Comp
L MAX7000CPU-Gen2_5-rescue:GND-power-MAX7000CPU-Gen2-rescue #PWR?
U 1 1 6241995C
P 6450 5750
AR Path="/6241995C" Ref="#PWR?"  Part="1" 
AR Path="/623B80EB/6241995C" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 6450 5500 50  0001 C CNN
F 1 "GND" H 6350 5750 50  0000 C CNN
F 2 "" H 6450 5750 50  0001 C CNN
F 3 "" H 6450 5750 50  0001 C CNN
	1    6450 5750
	1    0    0    -1  
$EndComp
$Comp
L MAX7000CPU-Gen2_5-rescue:+5V-power-MAX7000CPU-Gen2-rescue #PWR?
U 1 1 62419962
P 6450 4150
AR Path="/62419962" Ref="#PWR?"  Part="1" 
AR Path="/623B80EB/62419962" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 6450 4000 50  0001 C CNN
F 1 "+5V" H 6465 4323 50  0000 C CNN
F 2 "" H 6450 4150 50  0001 C CNN
F 3 "" H 6450 4150 50  0001 C CNN
	1    6450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5350 5900 5350
Wire Wire Line
	5900 5350 5900 5450
Wire Wire Line
	5950 5450 5900 5450
Text GLabel 5950 5900 2    50   Input ~ 0
StackOutControl
$Comp
L MAX7000CPU-Gen2_5-rescue:CD4029BEE4-CPU_ics U?
U 1 1 6241997A
P 4050 4250
AR Path="/6241997A" Ref="U?"  Part="1" 
AR Path="/623B80EB/6241997A" Ref="U53"  Part="1" 
F 0 "U53" H 4250 4450 50  0000 C CNN
F 1 "CD4029BEE4" H 4450 4350 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5900 4350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4029b.pdf" H 5900 4250 50  0001 L CNN
F 4 "CD4029BEE4, 4-stage Decade and Binary Counter Up/Down Counter, Bi-Directional, 3  18 V, 16-Pin PDIP" H 5900 4150 50  0001 L CNN "Description"
F 5 "5.08" H 5900 4050 50  0001 L CNN "Height"
F 6 "595-CD4029BEE4" H 5900 3950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/CD4029BEE4?qs=LU5rZWrBGo0epKDtktqo2w%3D%3D" H 5900 3850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 5900 3750 50  0001 L CNN "Manufacturer_Name"
F 9 "CD4029BEE4" H 5900 3650 50  0001 L CNN "Manufacturer_Part_Number"
	1    4050 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4450 5950 4450
Wire Wire Line
	5500 4550 5950 4550
Wire Wire Line
	5500 4650 5950 4650
Wire Wire Line
	5500 4750 5950 4750
$Comp
L MAX7000CPU-Gen2_5-rescue:GND-power-MAX7000CPU-Gen2-rescue #PWR?
U 1 1 62419984
P 4050 4950
AR Path="/62419984" Ref="#PWR?"  Part="1" 
AR Path="/623B80EB/62419984" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 4050 4700 50  0001 C CNN
F 1 "GND" H 4055 4777 50  0000 C CNN
F 2 "" H 4050 4950 50  0001 C CNN
F 3 "" H 4050 4950 50  0001 C CNN
	1    4050 4950
	1    0    0    -1  
$EndComp
$Comp
L MAX7000CPU-Gen2_5-rescue:+5V-power-MAX7000CPU-Gen2-rescue #PWR?
U 1 1 6241998A
P 5500 4150
AR Path="/6241998A" Ref="#PWR?"  Part="1" 
AR Path="/623B80EB/6241998A" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 5500 4000 50  0001 C CNN
F 1 "+5V" H 5515 4323 50  0000 C CNN
F 2 "" H 5500 4150 50  0001 C CNN
F 3 "" H 5500 4150 50  0001 C CNN
	1    5500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4250 5500 4150
Wire Wire Line
	5500 4850 5550 4850
Wire Wire Line
	4050 4850 4000 4850
Wire Wire Line
	5500 4100 5500 4150
Connection ~ 5500 4150
$Comp
L MAX7000CPU-Gen2_5-rescue:CD4029BEE4-CPU_ics U?
U 1 1 6241999B
P 4050 5300
AR Path="/6241999B" Ref="U?"  Part="1" 
AR Path="/623B80EB/6241999B" Ref="U55"  Part="1" 
F 0 "U55" H 4250 5500 50  0000 C CNN
F 1 "CD4029BEE4" H 4450 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5900 5400 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4029b.pdf" H 5900 5300 50  0001 L CNN
F 4 "CD4029BEE4, 4-stage Decade and Binary Counter Up/Down Counter, Bi-Directional, 3  18 V, 16-Pin PDIP" H 5900 5200 50  0001 L CNN "Description"
F 5 "5.08" H 5900 5100 50  0001 L CNN "Height"
F 6 "595-CD4029BEE4" H 5900 5000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/CD4029BEE4?qs=LU5rZWrBGo0epKDtktqo2w%3D%3D" H 5900 4900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 5900 4800 50  0001 L CNN "Manufacturer_Name"
F 9 "CD4029BEE4" H 5900 4700 50  0001 L CNN "Manufacturer_Part_Number"
	1    4050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4950 5600 4950
Wire Wire Line
	5600 4950 5600 5400
Wire Wire Line
	5600 5400 5500 5400
Wire Wire Line
	5500 5900 5550 5900
Wire Wire Line
	4050 5900 4000 5900
Wire Wire Line
	5500 5500 5650 5500
Wire Wire Line
	5650 5500 5650 4850
Wire Wire Line
	5650 4850 5950 4850
Wire Wire Line
	5500 5600 5700 5600
Wire Wire Line
	5700 5600 5700 4950
Wire Wire Line
	5700 4950 5950 4950
Wire Wire Line
	5500 5700 5750 5700
Wire Wire Line
	5750 5700 5750 5050
Wire Wire Line
	5750 5050 5950 5050
Wire Wire Line
	5500 5800 5800 5800
Wire Wire Line
	5800 5800 5800 5150
Wire Wire Line
	5800 5150 5950 5150
$Comp
L MAX7000CPU-Gen2_5-rescue:GND-power-MAX7000CPU-Gen2-rescue #PWR?
U 1 1 624199B2
P 4050 6000
AR Path="/624199B2" Ref="#PWR?"  Part="1" 
AR Path="/623B80EB/624199B2" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 4050 5750 50  0001 C CNN
F 1 "GND" H 3950 6000 50  0000 C CNN
F 2 "" H 4050 6000 50  0001 C CNN
F 3 "" H 4050 6000 50  0001 C CNN
	1    4050 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5400 3950 5400
Wire Wire Line
	3950 5400 3950 4350
Wire Wire Line
	3950 4350 4050 4350
Wire Wire Line
	4050 5300 3900 5300
Wire Wire Line
	3900 5300 3900 4250
Wire Wire Line
	3900 4250 4050 4250
Wire Wire Line
	3900 4250 3900 4100
Wire Wire Line
	3900 4100 3850 4100
Connection ~ 3900 4250
Wire Wire Line
	3950 4350 3950 4000
Wire Wire Line
	3950 4000 3850 4000
Connection ~ 3950 4350
Wire Wire Line
	5550 3800 5600 3800
Wire Wire Line
	5600 3800 5600 4350
Wire Wire Line
	5600 4350 5500 4350
Wire Wire Line
	5700 2150 5700 2000
Wire Wire Line
	5550 2150 5700 2150
$Comp
L MAX7000CPU-Gen2_5-rescue:GND-power-MAX7000CPU-Gen2-rescue #PWR?
U 1 1 624199C9
P 6000 2000
AR Path="/624199C9" Ref="#PWR?"  Part="1" 
AR Path="/623B80EB/624199C9" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 6000 1750 50  0001 C CNN
F 1 "GND" H 5950 1850 50  0000 C CNN
F 2 "" H 6000 2000 50  0001 C CNN
F 3 "" H 6000 2000 50  0001 C CNN
	1    6000 2000
	1    0    0    -1  
$EndComp
Text GLabel 3850 4100 0    50   Input ~ 0
StackJump
Wire Wire Line
	5550 5900 5550 5300
Connection ~ 5550 5300
Wire Wire Line
	5500 5300 5550 5300
Wire Wire Line
	5600 3700 5600 3100
Connection ~ 5600 3100
Wire Wire Line
	5550 3100 5600 3100
Connection ~ 5500 4250
Wire Wire Line
	5550 4250 5500 4250
Connection ~ 5550 4850
Wire Wire Line
	5550 4850 5550 4250
Connection ~ 5550 2050
Wire Wire Line
	5600 2050 5550 2050
Connection ~ 5600 2650
Wire Wire Line
	5600 2650 5600 2050
Text GLabel 3850 4000 0    50   Input ~ 0
StackCount
Text GLabel 3900 1800 0    50   Input ~ 0
StackCount
Wire Wire Line
	5600 2650 5600 3100
Wire Wire Line
	5550 4850 5550 5300
Wire Wire Line
	4000 4850 4000 5900
Wire Wire Line
	4000 3700 4050 3700
Connection ~ 4050 3700
Wire Wire Line
	4050 2650 4050 3700
Connection ~ 4050 2650
Wire Wire Line
	4050 1750 4350 1750
Wire Wire Line
	4050 1750 4050 2650
Text GLabel 4350 1750 2    50   Input ~ 0
StackCountDirection
Text Label 4100 2250 2    50   ~ 0
B0
Text Label 4100 2350 2    50   ~ 0
B1
Text Label 4100 2450 2    50   ~ 0
B2
Text Label 4100 2550 2    50   ~ 0
B3
Text Label 4100 3300 2    50   ~ 0
B4
Text Label 4100 3400 2    50   ~ 0
B5
Text Label 4100 3500 2    50   ~ 0
B6
Text Label 4100 3600 2    50   ~ 0
B7
Text Label 4050 4450 2    50   ~ 0
B8
Text Label 4050 4550 2    50   ~ 0
B9
Text Label 4050 4650 2    50   ~ 0
B10
Text Label 4050 4750 2    50   ~ 0
B11
Connection ~ 4000 4850
Wire Wire Line
	4000 3700 4000 4850
$Comp
L MAX7000CPU-Gen2_5-rescue:GND-power-MAX7000CPU-Gen2-rescue #PWR?
U 1 1 624199F8
P 4100 3800
AR Path="/624199F8" Ref="#PWR?"  Part="1" 
AR Path="/623B80EB/624199F8" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 4100 3550 50  0001 C CNN
F 1 "GND" H 4000 3800 50  0000 C CNN
F 2 "" H 4100 3800 50  0001 C CNN
F 3 "" H 4100 3800 50  0001 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
Text Label 4050 5500 2    50   ~ 0
B12
Text Label 4050 5600 2    50   ~ 0
B13
Text Label 4050 5700 2    50   ~ 0
B14
Text Label 4050 5800 2    50   ~ 0
B15
Wire Notes Line
	7450 6150 3200 6150
Wire Notes Line
	3200 1500 7450 1500
Text Notes 7150 6050 0    50   ~ 0
Stack \nCounter
Wire Notes Line
	3200 1500 3200 6150
Wire Notes Line
	7450 6150 7450 1500
NoConn ~ 5500 6000
$Comp
L MAX7000CPU-Gen2_5-rescue:R-Device-MAX7000CPU-Gen2-rescue R?
U 1 1 62419A08
P 6100 3550
AR Path="/62419A08" Ref="R?"  Part="1" 
AR Path="/623B80EB/62419A08" Ref="R150"  Part="1" 
F 0 "R150" V 6300 3600 50  0000 L CNN
F 1 "50K" V 6200 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6030 3550 50  0001 C CNN
F 3 "~" H 6100 3550 50  0001 C CNN
	1    6100 3550
	0    -1   -1   0   
$EndComp
$Comp
L MAX7000CPU-Gen2_5-rescue:+5V-power-MAX7000CPU-Gen2-rescue #PWR?
U 1 1 62419A0E
P 6250 3550
AR Path="/62419A0E" Ref="#PWR?"  Part="1" 
AR Path="/623B80EB/62419A0E" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 6250 3400 50  0001 C CNN
F 1 "+5V" H 6300 3700 50  0000 C CNN
F 2 "" H 6250 3550 50  0001 C CNN
F 3 "" H 6250 3550 50  0001 C CNN
	1    6250 3550
	1    0    0    -1  
$EndComp
$Comp
L MAX7000CPU-Gen2_5-rescue:R-Device-MAX7000CPU-Gen2-rescue R?
U 1 1 62419A14
P 5850 2000
AR Path="/62419A14" Ref="R?"  Part="1" 
AR Path="/623B80EB/62419A14" Ref="R149"  Part="1" 
F 0 "R149" V 5950 2000 50  0000 L CNN
F 1 "50K" V 5750 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5780 2000 50  0001 C CNN
F 3 "~" H 5850 2000 50  0001 C CNN
	1    5850 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 3700 5950 3550
Wire Wire Line
	5950 3550 5950 3250
Connection ~ 5950 3550
Connection ~ 5950 3250
Wire Wire Line
	5950 5900 5900 5900
Connection ~ 5900 5450
Wire Wire Line
	5900 5450 5900 5900
$Comp
L 74xx:74LS541 U?
U 1 1 6210D81C
P 6500 2750
AR Path="/6210D81C" Ref="U?"  Part="1" 
AR Path="/623B80EB/6210D81C" Ref="U51"  Part="1" 
F 0 "U51" H 6150 3500 50  0000 C CNN
F 1 "74LS541" H 6250 3400 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6500 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS541" H 6500 2750 50  0001 C CNN
	1    6500 2750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS541 U?
U 1 1 62115007
P 6450 4950
AR Path="/62115007" Ref="U?"  Part="1" 
AR Path="/623B80EB/62115007" Ref="U54"  Part="1" 
F 0 "U54" H 6100 5700 50  0000 C CNN
F 1 "74LS541" H 6200 5600 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6450 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS541" H 6450 4950 50  0001 C CNN
	1    6450 4950
	1    0    0    -1  
$EndComp
Text Label 7000 2250 0    50   ~ 0
RA0
Text Label 7000 2350 0    50   ~ 0
RA1
Text Label 7000 2450 0    50   ~ 0
RA2
Text Label 7000 2550 0    50   ~ 0
RA3
Text Label 7000 2650 0    50   ~ 0
RA4
Text Label 7000 2750 0    50   ~ 0
RA5
Text Label 7000 2850 0    50   ~ 0
RA6
Text Label 7000 2950 0    50   ~ 0
RA7
Text Label 6950 4450 0    50   ~ 0
RA8
Text Label 6950 4550 0    50   ~ 0
RA9
Text Label 6950 4650 0    50   ~ 0
RA10
Text Label 6950 4750 0    50   ~ 0
RA11
Text Label 6950 4850 0    50   ~ 0
RA12
Text Label 6950 4950 0    50   ~ 0
RA13
Text Label 6950 5050 0    50   ~ 0
RA14
Text Label 6950 5150 0    50   ~ 0
RA15
Text HLabel 9050 2900 2    50   Input ~ 0
RA[0...15]
Text HLabel 1600 2700 0    50   Input ~ 0
B[0...15]
Wire Bus Line
	1600 2700 1750 2700
Entry Wire Line
	1750 2750 1850 2850
Entry Wire Line
	1750 2850 1850 2950
Entry Wire Line
	1750 2950 1850 3050
Entry Wire Line
	1750 3050 1850 3150
Entry Wire Line
	1750 3150 1850 3250
Entry Wire Line
	1750 3250 1850 3350
Entry Wire Line
	1750 3350 1850 3450
Entry Wire Line
	1750 3450 1850 3550
Entry Wire Line
	1750 3550 1850 3650
Entry Wire Line
	1750 3650 1850 3750
Entry Wire Line
	1750 3750 1850 3850
Entry Wire Line
	1750 3850 1850 3950
Entry Wire Line
	1750 3950 1850 4050
Entry Wire Line
	1750 4050 1850 4150
Entry Wire Line
	1750 4150 1850 4250
Text Label 1900 2850 0    50   ~ 0
B0
Text Label 1900 2950 0    50   ~ 0
B1
Text Label 1900 3050 0    50   ~ 0
B2
Text Label 1900 3150 0    50   ~ 0
B3
Text Label 1900 3250 0    50   ~ 0
B4
Text Label 1900 3350 0    50   ~ 0
B5
Text Label 1900 3450 0    50   ~ 0
B6
Text Label 1900 3550 0    50   ~ 0
B7
Text Label 1900 3650 0    50   ~ 0
B8
Text Label 1900 3750 0    50   ~ 0
B9
Text Label 1900 3850 0    50   ~ 0
B10
Text Label 1900 3950 0    50   ~ 0
B11
Text Label 1900 4050 0    50   ~ 0
B12
Text Label 1900 4150 0    50   ~ 0
B13
Text Label 1900 4250 0    50   ~ 0
B14
Text Label 1900 4350 0    50   ~ 0
B15
Entry Wire Line
	1750 4250 1850 4350
Wire Wire Line
	1850 4350 1900 4350
Wire Wire Line
	1850 2850 1900 2850
Wire Wire Line
	1850 2950 1900 2950
Wire Wire Line
	1850 3050 1900 3050
Wire Wire Line
	1850 3150 1900 3150
Wire Wire Line
	1850 3250 1900 3250
Wire Wire Line
	1850 3350 1900 3350
Wire Wire Line
	1850 3450 1900 3450
Wire Wire Line
	1850 3550 1900 3550
Wire Wire Line
	1850 3650 1900 3650
Wire Wire Line
	1850 3750 1900 3750
Wire Wire Line
	1850 3850 1900 3850
Wire Wire Line
	1850 3950 1900 3950
Wire Wire Line
	1850 4050 1900 4050
Wire Wire Line
	1850 4150 1900 4150
Wire Wire Line
	1850 4250 1900 4250
Wire Bus Line
	9050 2900 8900 2900
Entry Wire Line
	8900 2950 8800 3050
Entry Wire Line
	8900 3050 8800 3150
Entry Wire Line
	8900 3150 8800 3250
Entry Wire Line
	8900 3250 8800 3350
Entry Wire Line
	8900 3350 8800 3450
Entry Wire Line
	8900 3450 8800 3550
Entry Wire Line
	8900 3550 8800 3650
Entry Wire Line
	8900 3650 8800 3750
Entry Wire Line
	8900 3750 8800 3850
Entry Wire Line
	8900 3850 8800 3950
Entry Wire Line
	8900 3950 8800 4050
Entry Wire Line
	8900 4050 8800 4150
Entry Wire Line
	8900 4150 8800 4250
Entry Wire Line
	8900 4250 8800 4350
Entry Wire Line
	8900 4350 8800 4450
Entry Wire Line
	8900 4450 8800 4550
Wire Wire Line
	8800 4550 8750 4550
Wire Wire Line
	8800 3050 8750 3050
Wire Wire Line
	8800 3150 8750 3150
Wire Wire Line
	8800 3250 8750 3250
Wire Wire Line
	8800 3350 8750 3350
Wire Wire Line
	8800 3450 8750 3450
Wire Wire Line
	8800 3550 8750 3550
Wire Wire Line
	8800 3650 8750 3650
Wire Wire Line
	8800 3750 8750 3750
Wire Wire Line
	8800 3850 8750 3850
Wire Wire Line
	8800 3950 8750 3950
Wire Wire Line
	8800 4050 8750 4050
Wire Wire Line
	8800 4150 8750 4150
Wire Wire Line
	8800 4250 8750 4250
Wire Wire Line
	8800 4350 8750 4350
Wire Wire Line
	8800 4450 8750 4450
Text Label 8750 3050 2    50   ~ 0
RA0
Text Label 8750 3150 2    50   ~ 0
RA1
Text Label 8750 3250 2    50   ~ 0
RA2
Text Label 8750 3350 2    50   ~ 0
RA3
Text Label 8750 3450 2    50   ~ 0
RA4
Text Label 8750 3550 2    50   ~ 0
RA5
Text Label 8750 3650 2    50   ~ 0
RA6
Text Label 8750 3750 2    50   ~ 0
RA7
Text Label 8750 3850 2    50   ~ 0
RA8
Text Label 8750 3950 2    50   ~ 0
RA9
Text Label 8750 4050 2    50   ~ 0
RA10
Text Label 8750 4150 2    50   ~ 0
RA11
Text Label 8750 4250 2    50   ~ 0
RA12
Text Label 8750 4350 2    50   ~ 0
RA13
Text Label 8750 4450 2    50   ~ 0
RA14
Text Label 8750 4550 2    50   ~ 0
RA15
Wire Bus Line
	1750 2700 1750 4250
Wire Bus Line
	8900 2900 8900 4450
$EndSCHEMATC
