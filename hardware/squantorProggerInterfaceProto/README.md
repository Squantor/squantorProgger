# Prototype for SWD/JTAG logic interface
Prototype level shifting interface for a JTAG/SWD. Operational voltage range is from 5.5V to 1.65V. The TMS switch is handled by a bus switch instead of a dual voltage level shifter. This is to prevent input/output switching on the microcontroller. This way you can more easely chain SPI transactions while using SPI chip enable pins to enable the bus
## TODO's
Still some things need to be done:
* schematic entry (Done)
* PCB layout (Done)
* Review with one night in between (Done)
* Produce at [OSHPARK](https://oshpark.com/shared_projects/nZVJTeq3) (In progress)
* Assemble (TODO)
* Test & characterise (TODO)
# BOM
Use whatever decoupling capacitors you have, most passives are predominantly 0402.
* Most 0402 capacitors for decoupling are 100nF, but 1uF is also suitable
* Series resistor R1, R2 1K can be used, the parallel caps are 22pF. These are to test if any current backflow will occur when the 1G125 is unpowered.
* U1, U2, U3 and U4 are [Diodes Incorporated 74LVC1T45DW-7 from LCSC](https://lcsc.com/product-detail/Interface-ICs_DIODES_74LVC1T45DW-7_74LVC1T45DW-7_C168855.html).
* U5 is a [Nexperia 74LVC1G125GW,125 from LCSC](https://lcsc.com/product-detail/74-Series_NXP_74LVC1G125GW_74LVC1G125GW-125_C12519.html)
