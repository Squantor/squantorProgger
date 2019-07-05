EESchema Schematic File Version 4
LIBS:squantorProggerInterfaceProto-cache
EELAYER 29 0
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
L SquantorLabels:VYYYYMMDD N2
U 1 1 5A1357A5
P 850 7700
F 0 "N2" H 850 7800 60  0000 C CNN
F 1 "20190705" H 850 7700 60  0000 C CNN
F 2 "SquantorLabels:Label_version" H 850 7700 60  0001 C CNN
F 3 "" H 850 7700 60  0001 C CNN
	1    850  7700
	1    0    0    -1  
$EndComp
$Comp
L SquantorLabels:OHWLOGO N1
U 1 1 5A135869
P 850 7350
F 0 "N1" H 850 7500 60  0000 C CNN
F 1 "OHWLOGO" H 850 7200 60  0000 C CNN
F 2 "Symbol:OSHW-Logo_5.7x6mm_SilkScreen" H 850 7350 60  0001 C CNN
F 3 "" H 850 7350 60  0001 C CNN
	1    850  7350
	1    0    0    -1  
$EndComp
Text Label 1450 850  0    50   ~ 0
VDD_PROG
Text Label 1450 950  0    50   ~ 0
TCK_PROG
Text Label 1450 1050 0    50   ~ 0
TMSI_PROG
Text Label 1450 1150 0    50   ~ 0
TMSO_PROG
Text Label 1450 1250 0    50   ~ 0
TMSOE_PROG
Text Label 1450 1350 0    50   ~ 0
TDO_PROG
Text Label 1450 1450 0    50   ~ 0
TDI_PROG
Text Label 1450 1550 0    50   ~ 0
VSS
Wire Wire Line
	1400 850  1450 850 
Wire Wire Line
	1450 950  1400 950 
Wire Wire Line
	1400 1050 1450 1050
Wire Wire Line
	1450 1150 1400 1150
Wire Wire Line
	1400 1250 1450 1250
Wire Wire Line
	1450 1350 1400 1350
Wire Wire Line
	1400 1450 1450 1450
Wire Wire Line
	1450 1550 1400 1550
Wire Wire Line
	2600 850  2550 850 
Text Label 2550 850  2    50   ~ 0
VDD_TARGET
Text Label 2550 950  2    50   ~ 0
TCK_TARGET
Text Label 2550 1050 2    50   ~ 0
TMS_TARGET
Text Label 2550 1350 2    50   ~ 0
TDO_TARGET
Text Label 2550 1450 2    50   ~ 0
TDI_TARGET
Text Label 2550 1550 2    50   ~ 0
VSS
Wire Wire Line
	2550 950  2600 950 
Wire Wire Line
	2600 1050 2550 1050
Wire Wire Line
	2550 1350 2600 1350
Wire Wire Line
	2600 1450 2550 1450
Wire Wire Line
	2550 1550 2600 1550
$Comp
L SquantorLogic:74X1T45 U1
U 1 1 5D1C3766
P 1400 3050
F 0 "U1" H 1400 3415 50  0000 C CNN
F 1 "74X1T45" H 1400 3324 50  0000 C CNN
F 2 "SquantorIC:SOT363-hand" H 1400 3050 50  0001 C CNN
F 3 "" H 1400 3050 50  0001 C CNN
	1    1400 3050
	1    0    0    -1  
$EndComp
Text Label 1000 2950 2    50   ~ 0
VDD_PROG
Text Label 1000 3050 2    50   ~ 0
VSS
Text Label 1800 2950 0    50   ~ 0
VDD_TARGET
Text Label 1200 2550 2    50   ~ 0
VDD_PROG
Text Label 1600 2550 0    50   ~ 0
VSS
$Comp
L Device:C C2
U 1 1 5D1C5213
P 1400 2550
F 0 "C2" V 1148 2550 50  0000 C CNN
F 1 "100n" V 1239 2550 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 1438 2400 50  0001 C CNN
F 3 "~" H 1400 2550 50  0001 C CNN
	1    1400 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 2550 1550 2550
Wire Wire Line
	1250 2550 1200 2550
Text Label 1600 2150 0    50   ~ 0
VSS
$Comp
L Device:C C1
U 1 1 5D1C972B
P 1400 2150
F 0 "C1" V 1148 2150 50  0000 C CNN
F 1 "100n" V 1239 2150 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 1438 2000 50  0001 C CNN
F 3 "~" H 1400 2150 50  0001 C CNN
	1    1400 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 2150 1550 2150
Text Label 1200 2150 2    50   ~ 0
VDD_TARGET
Wire Wire Line
	1250 2150 1200 2150
Wire Wire Line
	1000 3050 1050 3050
Wire Wire Line
	1050 2950 1000 2950
Wire Wire Line
	1750 2950 1800 2950
Text Label 1000 3150 2    50   ~ 0
TCK_PROG
Text Label 1800 3150 0    50   ~ 0
TCK_TARGET
Text Label 1800 3050 0    50   ~ 0
VDD_PROG
Wire Wire Line
	1000 3150 1050 3150
Wire Wire Line
	1750 3150 1800 3150
Wire Wire Line
	1750 3050 1800 3050
$Comp
L SquantorLogic:74X1T45 U2
U 1 1 5D1CE248
P 1400 4450
F 0 "U2" H 1400 4815 50  0000 C CNN
F 1 "74X1T45" H 1400 4724 50  0000 C CNN
F 2 "SquantorIC:SOT363-hand" H 1400 4450 50  0001 C CNN
F 3 "" H 1400 4450 50  0001 C CNN
	1    1400 4450
	1    0    0    -1  
$EndComp
Text Label 1000 4350 2    50   ~ 0
VDD_PROG
Text Label 1000 4450 2    50   ~ 0
VSS
Text Label 1800 4350 0    50   ~ 0
VDD_TARGET
Text Label 1200 3950 2    50   ~ 0
VDD_PROG
Text Label 1600 3950 0    50   ~ 0
VSS
$Comp
L Device:C C4
U 1 1 5D1CE257
P 1400 3950
F 0 "C4" V 1148 3950 50  0000 C CNN
F 1 "100n" V 1239 3950 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 1438 3800 50  0001 C CNN
F 3 "~" H 1400 3950 50  0001 C CNN
	1    1400 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 3950 1550 3950
Wire Wire Line
	1250 3950 1200 3950
Text Label 1600 3550 0    50   ~ 0
VSS
$Comp
L Device:C C3
U 1 1 5D1CE264
P 1400 3550
F 0 "C3" V 1148 3550 50  0000 C CNN
F 1 "100n" V 1239 3550 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 1438 3400 50  0001 C CNN
F 3 "~" H 1400 3550 50  0001 C CNN
	1    1400 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 3550 1550 3550
Text Label 1200 3550 2    50   ~ 0
VDD_TARGET
Wire Wire Line
	1250 3550 1200 3550
Wire Wire Line
	1000 4450 1050 4450
Wire Wire Line
	1050 4350 1000 4350
Wire Wire Line
	1750 4350 1800 4350
Text Label 1800 4450 0    50   ~ 0
VDD_PROG
Wire Wire Line
	1000 4550 1050 4550
Wire Wire Line
	1750 4550 1800 4550
Wire Wire Line
	1750 4450 1800 4450
Text Label 1000 4550 2    50   ~ 0
TDI_PROG
Text Label 1800 4550 0    50   ~ 0
TDI_TARGET
$Comp
L SquantorLogic:74X1T45 U3
U 1 1 5D1D1CF9
P 3150 3050
F 0 "U3" H 3150 3415 50  0000 C CNN
F 1 "74X1T45" H 3150 3324 50  0000 C CNN
F 2 "SquantorIC:SOT363-hand" H 3150 3050 50  0001 C CNN
F 3 "" H 3150 3050 50  0001 C CNN
	1    3150 3050
	1    0    0    -1  
$EndComp
Text Label 2750 2950 2    50   ~ 0
VDD_PROG
Text Label 2750 3050 2    50   ~ 0
VSS
Text Label 3550 2950 0    50   ~ 0
VDD_TARGET
Text Label 2950 2550 2    50   ~ 0
VDD_PROG
Text Label 3350 2550 0    50   ~ 0
VSS
$Comp
L Device:C C6
U 1 1 5D1D1D08
P 3150 2550
F 0 "C6" V 2898 2550 50  0000 C CNN
F 1 "100n" V 2989 2550 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 3188 2400 50  0001 C CNN
F 3 "~" H 3150 2550 50  0001 C CNN
	1    3150 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 2550 3300 2550
Wire Wire Line
	3000 2550 2950 2550
Text Label 3350 2150 0    50   ~ 0
VSS
$Comp
L Device:C C5
U 1 1 5D1D1D15
P 3150 2150
F 0 "C5" V 2898 2150 50  0000 C CNN
F 1 "100n" V 2989 2150 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 3188 2000 50  0001 C CNN
F 3 "~" H 3150 2150 50  0001 C CNN
	1    3150 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 2150 3300 2150
Text Label 2950 2150 2    50   ~ 0
VDD_TARGET
Wire Wire Line
	3000 2150 2950 2150
Wire Wire Line
	2750 3050 2800 3050
Wire Wire Line
	2800 2950 2750 2950
Wire Wire Line
	3500 2950 3550 2950
Wire Wire Line
	2750 3150 2800 3150
Wire Wire Line
	3500 3150 3550 3150
Wire Wire Line
	3500 3050 3550 3050
Text Label 3550 3050 0    50   ~ 0
VSS
Text Label 2750 3150 2    50   ~ 0
TDO_PROG
Text Label 3550 3150 0    50   ~ 0
TDO_TARGET
$Comp
L SquantorLogic:74X1T45 U4
U 1 1 5D1E1C72
P 3150 4450
F 0 "U4" H 3150 4815 50  0000 C CNN
F 1 "74X1T45" H 3150 4724 50  0000 C CNN
F 2 "SquantorIC:SOT363-hand" H 3150 4450 50  0001 C CNN
F 3 "" H 3150 4450 50  0001 C CNN
	1    3150 4450
	1    0    0    -1  
$EndComp
Text Label 2750 4350 2    50   ~ 0
VDD_PROG
Text Label 2750 4450 2    50   ~ 0
VSS
Text Label 3550 4350 0    50   ~ 0
VDD_TARGET
Text Label 2950 3950 2    50   ~ 0
VDD_PROG
Text Label 3350 3950 0    50   ~ 0
VSS
$Comp
L Device:C C8
U 1 1 5D1E1C81
P 3150 3950
F 0 "C8" V 2898 3950 50  0000 C CNN
F 1 "100n" V 2989 3950 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 3188 3800 50  0001 C CNN
F 3 "~" H 3150 3950 50  0001 C CNN
	1    3150 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3950 3300 3950
Wire Wire Line
	3000 3950 2950 3950
Text Label 3350 3550 0    50   ~ 0
VSS
$Comp
L Device:C C7
U 1 1 5D1E1C8E
P 3150 3550
F 0 "C7" V 2898 3550 50  0000 C CNN
F 1 "100n" V 2989 3550 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 3188 3400 50  0001 C CNN
F 3 "~" H 3150 3550 50  0001 C CNN
	1    3150 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3550 3300 3550
Text Label 2950 3550 2    50   ~ 0
VDD_TARGET
Wire Wire Line
	3000 3550 2950 3550
Wire Wire Line
	2750 4450 2800 4450
Wire Wire Line
	2800 4350 2750 4350
Wire Wire Line
	3500 4350 3550 4350
Wire Wire Line
	2750 4550 2800 4550
Wire Wire Line
	3500 4550 3550 4550
Wire Wire Line
	3500 4450 3550 4450
Text Label 3550 4450 0    50   ~ 0
VSS
Text Label 3550 4550 0    50   ~ 0
TMS_TARGET
Text Label 2750 4550 2    50   ~ 0
TMSI_PROG
$Comp
L SquantorLogic:74X1G125 U5
U 1 1 5D1E9D88
P 5850 3050
F 0 "U5" H 5850 3415 50  0000 C CNN
F 1 "74X1G125" H 5850 3324 50  0000 C CNN
F 2 "SquantorIC:SOT353-hand" H 5850 3050 50  0001 C CNN
F 3 "" H 5850 3050 50  0001 C CNN
	1    5850 3050
	1    0    0    -1  
$EndComp
Text Label 6050 2500 0    50   ~ 0
VSS
$Comp
L Device:C C9
U 1 1 5D1EC165
P 5850 2500
F 0 "C9" V 5598 2500 50  0000 C CNN
F 1 "100n" V 5689 2500 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 5888 2350 50  0001 C CNN
F 3 "~" H 5850 2500 50  0001 C CNN
	1    5850 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 2500 6000 2500
Text Label 5650 2500 2    50   ~ 0
VDD_TARGET
Wire Wire Line
	5700 2500 5650 2500
Text Label 6200 2950 0    50   ~ 0
VDD_TARGET
Text Label 5500 3150 2    50   ~ 0
VSS
Wire Wire Line
	5550 3150 5500 3150
Wire Wire Line
	6150 3150 6200 3150
Text Label 4800 2950 2    50   ~ 0
TMSOE_PROG
Text Label 4800 3050 2    50   ~ 0
TMSO_PROG
Text Label 6200 3150 0    50   ~ 0
TMS_TARGET
$Comp
L SquantorConnectorsNamed:JTAG_interface_proto_input J1
U 1 1 5D1FB563
P 1050 1400
F 0 "J1" H 1083 2215 50  0000 C CNN
F 1 "JTAG_interface_proto_input" H 1083 2124 50  0000 C CNN
F 2 "SquantorConnectorsNamed:JTAG-interface-proto-input" H 1100 1400 50  0001 C CNN
F 3 "" H 1100 1400 50  0001 C CNN
	1    1050 1400
	1    0    0    -1  
$EndComp
$Comp
L SquantorConnectorsNamed:JTAG_interface_proto_output J2
U 1 1 5D1FD748
P 3000 1100
F 0 "J2" H 2682 1046 50  0000 R CNN
F 1 "JTAG_interface_proto_output" H 2682 955 50  0000 R CNN
F 2 "SquantorConnectorsNamed:JTAG-interface-proto-output" H 3000 1100 50  0001 C CNN
F 3 "" H 3000 1100 50  0001 C CNN
	1    3000 1100
	-1   0    0    -1  
$EndComp
NoConn ~ 2600 1150
NoConn ~ 2600 1250
Wire Wire Line
	6150 2950 6200 2950
$Comp
L Device:C C10
U 1 1 5D1D36E6
P 4800 850
F 0 "C10" V 4548 850 50  0000 C CNN
F 1 "2.2uF" V 4639 850 50  0000 C CNN
F 2 "SquantorRcl:C_0805" H 4838 700 50  0001 C CNN
F 3 "~" H 4800 850 50  0001 C CNN
	1    4800 850 
	0    1    1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 5D1D44ED
P 4800 1100
F 0 "C11" V 4960 1100 50  0000 C CNN
F 1 "2.2uF" V 5051 1100 50  0000 C CNN
F 2 "SquantorRcl:C_0805" H 4838 950 50  0001 C CNN
F 3 "~" H 4800 1100 50  0001 C CNN
	1    4800 1100
	0    1    1    0   
$EndComp
Text Label 5000 850  0    50   ~ 0
VSS
Text Label 5000 1100 0    50   ~ 0
VSS
Wire Wire Line
	5000 850  4950 850 
Wire Wire Line
	4950 1100 5000 1100
Text Label 4600 850  2    50   ~ 0
VDD_TARGET
Text Label 4600 1100 2    50   ~ 0
VDD_PROG
Wire Wire Line
	4600 850  4650 850 
Wire Wire Line
	4650 1100 4600 1100
$Comp
L Device:C C12
U 1 1 5D1E5D02
P 5150 2800
F 0 "C12" V 4898 2800 50  0000 C CNN
F 1 "22p" V 4989 2800 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 5188 2650 50  0001 C CNN
F 3 "~" H 5150 2800 50  0001 C CNN
	1    5150 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D1E6AFD
P 5150 2950
F 0 "R1" V 5200 2750 50  0000 C CNN
F 1 "TBD" V 5150 2950 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 5080 2950 50  0001 C CNN
F 3 "~" H 5150 2950 50  0001 C CNN
	1    5150 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D1E7071
P 5150 3050
F 0 "R2" V 5200 2850 50  0000 C CNN
F 1 "TBD" V 5150 3050 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 5080 3050 50  0001 C CNN
F 3 "~" H 5150 3050 50  0001 C CNN
	1    5150 3050
	0    1    1    0   
$EndComp
$Comp
L Device:C C13
U 1 1 5D1E8518
P 5150 3200
F 0 "C13" V 5310 3200 50  0000 C CNN
F 1 "22p" V 5401 3200 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 5188 3050 50  0001 C CNN
F 3 "~" H 5150 3200 50  0001 C CNN
	1    5150 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2950 4850 2950
Wire Wire Line
	5300 2950 5350 2950
Wire Wire Line
	5300 3050 5350 3050
Wire Wire Line
	5000 3050 4850 3050
Wire Wire Line
	5000 3200 4850 3200
Wire Wire Line
	4850 3200 4850 3050
Connection ~ 4850 3050
Wire Wire Line
	4850 3050 4800 3050
Wire Wire Line
	4850 2950 4850 2800
Wire Wire Line
	4850 2800 5000 2800
Connection ~ 4850 2950
Wire Wire Line
	4850 2950 5000 2950
Wire Wire Line
	5300 2800 5350 2800
Wire Wire Line
	5350 2800 5350 2950
Connection ~ 5350 2950
Wire Wire Line
	5350 2950 5550 2950
Wire Wire Line
	5350 3050 5350 3200
Wire Wire Line
	5350 3200 5300 3200
Connection ~ 5350 3050
Wire Wire Line
	5350 3050 5550 3050
$EndSCHEMATC
