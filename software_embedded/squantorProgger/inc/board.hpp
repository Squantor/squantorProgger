/*
MIT License

Copyright (c) 2019 Bart Bilos

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
#ifndef BOARD_HPP
#define BOARD_HPP

#include <chip.h>

#define UART_TX_PIN 27
#define UART_RX_PIN 26

#define JTAG_TCK_IOCON      (IOCON_PIO25)
#define JTAG_TCK_GPIO       25  
#define JTAG_TMSI_IOCON     (IOCON_PIO24)
#define JTAG_TMSI_GPIO      24  
#define JTAG_TMSO_IOCON     (IOCON_PIO15)
#define JTAG_TMSO_GPIO      15
#define JTAG_TMSOE_IOCON    (IOCON_PIO16)
#define JTAG_TMSOE_GPIO     16

#define TICKS_PER_S (10)

void boardInit(void);
void setTck(bool value);
void setTmso(bool value);
void setTmsoe(bool value);
bool getTmsi(void);

#endif