EESchema Schematic File Version 4
LIBS:squantorProggerV01-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3500 2000 3750 2000
Wire Wire Line
	3500 1950 3500 2000
Wire Wire Line
	3300 2100 3750 2100
Wire Wire Line
	3300 1950 3300 2100
Wire Wire Line
	3500 1700 3400 1700
Wire Wire Line
	3500 1750 3500 1700
Wire Wire Line
	3400 1700 3400 1650
Connection ~ 3400 1700
Wire Wire Line
	3300 1700 3400 1700
Wire Wire Line
	3300 1750 3300 1700
$Comp
L Device:C_Small C?
U 1 1 5C9D5468
P 3300 1850
AR Path="/5C9D5468" Ref="C?"  Part="1" 
AR Path="/5C9B7479/5C9D5468" Ref="C?"  Part="1" 
AR Path="/5CA4228E/5C9D5468" Ref="C15"  Part="1" 
F 0 "C15" H 3150 1950 50  0000 L CNN
F 1 "47p" H 3150 1750 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 3300 1850 50  0001 C CNN
F 3 "~" H 3300 1850 50  0001 C CNN
	1    3300 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5C9D546E
P 3500 1850
AR Path="/5C9D546E" Ref="C?"  Part="1" 
AR Path="/5C9B7479/5C9D546E" Ref="C?"  Part="1" 
AR Path="/5CA4228E/5C9D546E" Ref="C16"  Part="1" 
F 0 "C16" H 3500 1950 50  0000 L CNN
F 1 "47p" H 3500 1750 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 3500 1850 50  0001 C CNN
F 3 "~" H 3500 1850 50  0001 C CNN
	1    3500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2000 4000 2000
Connection ~ 3500 2000
Wire Wire Line
	3100 2000 3500 2000
Connection ~ 3300 2100
Wire Wire Line
	3100 2100 3300 2100
Wire Wire Line
	4000 2100 3950 2100
$Comp
L Device:R_Small R?
U 1 1 5C9D547C
P 3850 2100
AR Path="/5C9D547C" Ref="R?"  Part="1" 
AR Path="/5C9B7479/5C9D547C" Ref="R?"  Part="1" 
AR Path="/5CA4228E/5C9D547C" Ref="R12"  Part="1" 
F 0 "R12" V 3900 2250 50  0000 C CNN
F 1 "33" V 3850 2100 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" H 3850 2100 50  0001 C CNN
F 3 "~" H 3850 2100 50  0001 C CNN
	1    3850 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C9D5482
P 3850 2000
AR Path="/5C9D5482" Ref="R?"  Part="1" 
AR Path="/5C9B7479/5C9D5482" Ref="R?"  Part="1" 
AR Path="/5CA4228E/5C9D5482" Ref="R11"  Part="1" 
F 0 "R11" V 3800 2150 50  0000 C CNN
F 1 "33" V 3850 2000 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" H 3850 2000 50  0001 C CNN
F 3 "~" H 3850 2000 50  0001 C CNN
	1    3850 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2300 3150 2300
Wire Wire Line
	3100 2200 3150 2200
Wire Wire Line
	2700 2700 2550 2700
Wire Wire Line
	2900 2700 3000 2700
$Comp
L Device:C_Small C?
U 1 1 5C9D548C
P 2800 2700
AR Path="/5C9D548C" Ref="C?"  Part="1" 
AR Path="/5C9B7479/5C9D548C" Ref="C?"  Part="1" 
AR Path="/5CA4228E/5C9D548C" Ref="C12"  Part="1" 
F 0 "C12" V 2850 2600 50  0000 C CNN
F 1 "100n" V 2850 2850 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 2800 2700 50  0001 C CNN
F 3 "~" H 2800 2700 50  0001 C CNN
	1    2800 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 2400 3150 2400
Wire Wire Line
	2400 2400 2350 2400
Wire Wire Line
	2400 2300 2350 2300
Wire Wire Line
	2350 2000 2400 2000
$Comp
L SquantorHoltek:HT42B534-MSOP10 U?
U 1 1 5C9D54C0
P 2750 2200
AR Path="/5C9D54C0" Ref="U?"  Part="1" 
AR Path="/5C9B7479/5C9D54C0" Ref="U?"  Part="1" 
AR Path="/5CA4228E/5C9D54C0" Ref="U3"  Part="1" 
F 0 "U3" H 2750 2665 50  0000 C CNN
F 1 "HT42B534-MSOP10" H 2750 2574 50  0000 C CNN
F 2 "SquantorIC:MSOP-10" H 2750 2100 50  0001 C CNN
F 3 "" H 2750 2100 50  0001 C CNN
	1    2750 2200
	1    0    0    -1  
$EndComp
Text HLabel 2350 2200 0    50   Input ~ 0
VSS
Text HLabel 2350 2000 0    50   Input ~ 0
VDD
Text HLabel 3400 1650 1    50   Input ~ 0
VSS
Text HLabel 3000 2700 2    50   Input ~ 0
VSS
Text HLabel 3150 2400 2    50   Input ~ 0
VDDIO
Wire Wire Line
	2350 2200 2400 2200
Text HLabel 2350 2100 0    50   Output ~ 0
V33O
Wire Wire Line
	2400 2100 2350 2100
Text HLabel 2550 2700 0    50   Input ~ 0
VDDIO
Text HLabel 4000 2100 2    50   BiDi ~ 0
USB_DM
Text HLabel 4000 2000 2    50   BiDi ~ 0
USB_DP
Text HLabel 3150 2300 2    50   Input ~ 0
RXDI
Text HLabel 3150 2200 2    50   Output ~ 0
RTSO
Text HLabel 2350 2400 0    50   Output ~ 0
TXO
Text HLabel 2350 2300 0    50   Input ~ 0
CTSI
Text HLabel 3000 2950 2    50   Input ~ 0
VSS
Text HLabel 2550 2950 0    50   Input ~ 0
VDD
$Comp
L Device:C_Small C?
U 1 1 5C9D549F
P 2800 2950
AR Path="/5C9D549F" Ref="C?"  Part="1" 
AR Path="/5C9B7479/5C9D549F" Ref="C?"  Part="1" 
AR Path="/5CA4228E/5C9D549F" Ref="C13"  Part="1" 
F 0 "C13" V 2850 2850 50  0000 C CNN
F 1 "100n" V 2850 3100 50  0000 C CNN
F 2 "SquantorRcl:C_0402" H 2800 2950 50  0001 C CNN
F 3 "~" H 2800 2950 50  0001 C CNN
	1    2800 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 2950 2700 2950
Wire Wire Line
	2900 2950 3000 2950
Wire Wire Line
	2900 3200 3000 3200
Wire Wire Line
	2550 3200 2700 3200
Text HLabel 3000 3200 2    50   Output ~ 0
V33O
Text HLabel 2550 3200 0    50   Input ~ 0
VSS
$Comp
L Device:C_Small C?
U 1 1 5C9D54B3
P 2800 3200
AR Path="/5C9D54B3" Ref="C?"  Part="1" 
AR Path="/5C9B7479/5C9D54B3" Ref="C?"  Part="1" 
AR Path="/5CA4228E/5C9D54B3" Ref="C14"  Part="1" 
F 0 "C14" V 2750 3300 50  0000 C CNN
F 1 "1u" V 2750 3100 50  0000 C CNN
F 2 "SquantorRcl:C_0603" H 2800 3200 50  0001 C CNN
F 3 "~" H 2800 3200 50  0001 C CNN
	1    2800 3200
	0    1    1    0   
$EndComp
Text HLabel 3600 2800 0    50   Input ~ 0
VDDIO
$Comp
L Device:R_Small R?
U 1 1 5C9AB245
P 3750 2800
AR Path="/5C9AB245" Ref="R?"  Part="1" 
AR Path="/5C9B7479/5C9AB245" Ref="R?"  Part="1" 
AR Path="/5CA4228E/5C9AB245" Ref="R10"  Part="1" 
F 0 "R10" V 3850 2800 50  0000 C CNN
F 1 "10K" V 3750 2800 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" H 3750 2800 50  0001 C CNN
F 3 "~" H 3750 2800 50  0001 C CNN
	1    3750 2800
	0    1    1    0   
$EndComp
Text HLabel 3900 2800 2    50   Output ~ 0
TXO
Wire Wire Line
	3600 2800 3650 2800
Wire Wire Line
	3850 2800 3900 2800
Text HLabel 3550 2600 0    50   Input ~ 0
VDDIO
$Comp
L Device:D_Schottky D2
U 1 1 5C9D33D2
P 3750 2600
F 0 "D2" H 3750 2384 50  0000 C CNN
F 1 "D" H 3750 2475 50  0000 C CNN
F 2 "SquantorDiodes:SOD-523" H 3750 2600 50  0001 C CNN
F 3 "~" H 3750 2600 50  0001 C CNN
	1    3750 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 2600 3550 2600
Text HLabel 3950 2600 2    50   Input ~ 0
VDD
Wire Wire Line
	3950 2600 3900 2600
$EndSCHEMATC
