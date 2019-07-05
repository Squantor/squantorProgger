# Squantor Programmer Probe Software
This software project contains the code for the Squantor programmer probe.
## Checking out
use ```git clone --recurse-submodules https://github.com/Squantor/squantorProgger.git``` to clone the repo and its submodules.
## Compiling
This project uses gnu make as its build system on a Linux platform. There are two build targets: release and debug. Release builds with optimizations and minimal debugging information. Debug builds with no optimization and full debug information.
```
$ make debug
$ make release
```
### Embedded targets
For debugging on embedded targets, the [Black Magic Probe](https://github.com/blacksphere/blackmagic/wiki) is used, scripts to use this debugger are present in the ```gdb_scripts``` directory. make can be used to invoke debugging:
```
make gdbusbdebug
make gdbusbrelease
```
This will build, if needed, the debug or release build respectivly and load it into the target.
```
make tpwrdisable
make tpwrenable
```
The black magic probe is capable of powering the target, these commands enable/disable this function.
### Depedencies
This program depends on a few libraries:
* [minimal LibC](https://github.com/Squantor/squantorLibC.git)
* [various embedded functions](https://github.com/Squantor/squantorLibEmbeddedC.git)
* [LPCOpen for LPC824](https://github.com/Squantor/lpc_chip_82x.git)
These are automatically checked out when using ```git clone --recurse-submodules```.
## Usage
To use the software you need the following hardware:
* [Black magic probe](https://github.com/blacksphere/blackmagic)
* $(HARDWARE)
# Hardware Software Interface (HSI)
Here is a list of signals/connections on how the probe is built up.
* Pin 12: GPIO 26: UART0 RX connection to UART TX of USB to serial converter, input
* Pin 11: GPIO 27: UART0 TX connection to UART RX of USB to serial converter, output
* Pin 13: GPIO 25: SPI0 SCK connection to JTAG TCK of the level shifter circuit, output
* Pin 14: GPIO 24: SPI0 MISO connection to JTAG TMSI of the level shifter circuit, input
* Pin 15: GPIO 15: SPI0 MOSI connection to JTAG TMSO of the level shifter circuit, output
* Pin 10: GPIO 16: SPI0 CE0 connection to JTAG TMSOE of the level shifter circuit, output
## Level shifter circuit
Descriptions of pins:
* SCK, JTAG SCK pin, level shifted via one 1T45 gate
* TMSI, input translated TMS pin, levelshifted via one 1T45 gate
* TMSO, output translated TMS pin, level shifted via 1G125
* TMSOE, output enable for the 1G125 that controls output of the TMS pin
# Additional information
If the project needs further explanation like commands, theory of operation or something else, Describe it here.
# TODO
The following tasks are still open:

* etc
# Pictures
Some pictures of a hardware project