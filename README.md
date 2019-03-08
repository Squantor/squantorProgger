# SquantProgger JTAG/SWD probe
This repository contains hardware and software for the development of the Squantprogger JTAG/SWD probe.
## What? Another programmer?
Why yes! I was not completely satisfied with the existing solutions. The two leading open source solutions like the [black magic probe](https://github.com/blacksphere/blackmagic/wiki) or the [Cortexprog](https://cortexprog.com/) have a few, in my opinion, flaws that squantProgger tries to overcome. The blackmagic probe requires a new firmware to support new devices, interface clocking is fixed speed, using the GDB interface is not entirely optimal with respect to speedups and error robustness. The Cortexprog uses bitbanged USB HID interface and is SWD only.

I really wanted to combine the strongest features of these two programmers into one package. Device support depends on the PC side software and not the probe, support SWD and JTAG at any reasonable speed (1kHz to 10MHz), be reasonably fast, no or minimal driver installation requirements.
# Repository structure
* hardware: contains the hardware of the various programmer iterations and possible extension boards
* software_embedded: contains the probe software
* software_pc: contains the PC side software
# usage
Check out using ```git clone --recurse-submodules``` as this project uses git submodules for hardware and software components.
