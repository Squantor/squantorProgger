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
/*
Contains all the board specific initialization like connections to peripherals
etcetera.
*/

#include <board.hpp>
#include <chip.h>
#include <nxp_spi.hpp>
#include <stdbool.h>

const uint32_t OscRateIn = 12000000;
const uint32_t ExtRateIn = 0;

void boardInit(void)
{
    // setup switch matrix pinning
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_SWM);
    // disable existing functionality
    // crystal setup
    Chip_SWM_FixedPinEnable(SWM_FIXED_XTALIN, true);
    Chip_SWM_FixedPinEnable(SWM_FIXED_XTALOUT, true);
    // use UART0 for debug output
    Chip_SWM_MovablePinAssign(SWM_U0_TXD_O, UART_RX);
    Chip_SWM_MovablePinAssign(SWM_U0_RXD_I, UART_TX);
    // use SPI0 for TMS and TCK generation
    Chip_SWM_MovablePinAssign(SWM_SPI0_SCK_IO, JTAG_TCK);
    Chip_SWM_MovablePinAssign(SWM_SPI0_MISO_IO, JTAG_TMSI);
    Chip_SWM_MovablePinAssign(SWM_SPI0_MOSI_IO, JTAG_TMSO);
    Chip_SWM_MovablePinAssign(SWM_SPI0_SSEL0_IO, JTAG_TMSOE);
    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_SWM);
    // setup iocon 
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_IOCON);
    // disable all functions on crystal pins
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO8, PIN_MODE_INACTIVE);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO9, PIN_MODE_INACTIVE); 
    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_IOCON);
    // crystal clocking
    Chip_SetupXtalClocking();
    SystemCoreClockUpdate();
    // Initialize GPIOs
    Chip_GPIO_Init(LPC_GPIO_PORT);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, JTAG_TCK, false);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, JTAG_TMSO, true);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, JTAG_TMSOE, true);
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, JTAG_TCK);
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, JTAG_TMSO);
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, JTAG_TMSOE);
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, JTAG_TMSI);
    // setup uart
    Chip_UART_Init(LPC_USART0);
    Chip_UART_ConfigData(LPC_USART0, UART_CFG_DATALEN_8 | UART_CFG_PARITY_NONE | UART_CFG_STOPLEN_1);
    Chip_Clock_SetUSARTNBaseClockRate((115200 * 16), true);
    Chip_UART_SetBaud(LPC_USART0, 115200);
    Chip_UART_Enable(LPC_USART0);
    Chip_UART_TXEnable(LPC_USART0);
    // setup SPI
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_SPI0);
    Chip_SYSCTL_PeriphReset(RESET_SPI0);
    // setup interrupts
    // setup clocking
    // setup delay
    // setup configuration
    // clear status
    // setup systick
    SysTick_Config(SystemCoreClock / TICKS_PER_S);
}

void setTck(bool value)
{
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, JTAG_TCK, value);
}

void setTmso(bool value)
{
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, JTAG_TMSO, value);
}

void setTmsoe(bool value)
{
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, JTAG_TMSOE, value);
}

bool getTmsi(void)
{
    return Chip_GPIO_GetPinState(LPC_GPIO_PORT, 0, JTAG_TMSI);
}