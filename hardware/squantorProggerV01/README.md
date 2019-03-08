# SquantorProgger JTAG/SWD probe version 0.1
This is the initial hardware creation of the SquantorProgger hardware to do some design exploration and figure out how to build a JTAG/SWD probe from scratch.
## Hardware architecture
The SquantProgger talks to the host system via the [CH340E](http://wch.cn/downloads/CH340DS1_PDF.html) USB to serial converter to the microcontroller [LPC824](https://www.nxp.com/products/processors-and-microcontrollers/arm-based-processors-and-mcus/lpc-cortex-m-mcus/lpc800-series-cortex-m0-plus-mcus/low-cost-microcontrollers-mcus-based-on-arm-cortex-m0-plus-cores:LPC82X), communication occurs at a baud rate of 1Mbaud. The CH340E also provides a reset signal via the flow control pins to reset the LPC824 and access the bootloader. The LPC824 contains the software to translate protocol calls into JTAG/SWD communication. A single output driver (74X1G125 logic chip) provides disabling of the TMS driver. The voltage level of the signals is fixed at 3.3V. The power is provided by a MCP1702 LDO. A dual P channel mosfet facilitates power switching to the target.
## HSI (Hardware Software Interface)
Description of the various connections on software programmable components.
### LPC824
### CH340E
## TODO's
Still some things need to be done:
* filling initial functions in the HSI (TODO)
* schematic entry (TODO)
* PCB layout (TODO)
* Review with one night in between (TODO)
* Produce at [OSHPARK](https://oshpark.com/) (TODO)
* Assemble (TODO)
* Test & characterise (TODO)
* update Readme.md with pictures and BOM (TODO)



