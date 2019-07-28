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
#include <command_mini.h>
#include <stddef.h>
#include <board.hpp>
#include <chip.h>
#include <stream_uart.hpp>
#include <strings.hpp>
#include <parsedigit.h>
#include <string.h>
#include <print.h>

result cmdPrintVerHandler(const char *argument);
result cmdSpiTestHandler(const char *argument);
result cmdSwdEnableHandler(const char *argument);
result cmdSwdDisableHandler(const char *argument);
result cmdGeneralTestHandler(const char *argument);

const char cmdPrintVer[] = "pv";
const char cmdSpiTest[] = "ts";
const char cmdSwdEnable[] = "swde";
const char cmdSwdDisable[] = "swdd";
const char cmdGeneralTest[] = "test";


commandEntry_t sqProgCommands[] = 
{
    {cmdPrintVer, cmdPrintVerHandler},
    {cmdSpiTest, cmdSpiTestHandler},
    {cmdSwdEnable, cmdSwdEnableHandler},
    {cmdSwdDisable, cmdSwdDisableHandler},
    {cmdGeneralTest, cmdGeneralTestHandler},
    {NULL, NULL},
};

// commands may not use an argument and this is fine, ignore warning
#pragma GCC diagnostic ignored "-Wunused-parameter"
result cmdPrintVerHandler(const char *argument)
{
    dsPuts(&streamUart, strHello);
    return noError;
}

result cmdGeneralTestHandler(const char *argument)
{
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, JTAG_TCK_GPIO);
    Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, 0, JTAG_TCK_GPIO);
}

// now we want warnings on arguments missing again
#pragma GCC diagnostic pop


result cmdSpiTestHandler(const char *argument)
{
    const char *s = argument;
    unsigned int bitCount;
    
    if(parseDigit(*s, &bitCount) != parseOk)
        return invalidArg;
    s++;
    // we know bit count, now check rest
    unsigned int charCount = (bitCount / 4 + 1);
    if(strlen(s) != charCount)
        return invalidArg;
    // we increment bit count so we cover a range from 1 to 16
    bitCount++;
    // parse data characters
    uint16_t spiData = 0;
    for(unsigned int i = 0; i < charCount; i++)
    {
        spiData = spiData << 4;
        unsigned int data;
        if(parseDigit(*s, &data) != parseOk)
            return invalidArg;
        s++;
        spiData = spiData | (uint16_t) data;
    }
    // transfer
    uint32_t transfer = spiData | 
    (0xE << 16) |
    SPI_TXDATCTL_EOT |
    SPI_TXDATCTL_FLEN(bitCount-1);
    Chip_SPI_ClearStatus(LPC_SPI0, SPI_STAT_CLR_RXOV | SPI_STAT_CLR_TXUR | SPI_STAT_CLR_SSA | SPI_STAT_CLR_SSD);
    while( !(Chip_SPI_GetStatus(LPC_SPI0) & SPI_STAT_TXRDY)) 
        ;
    LPC_SPI0->TXDATCTL = transfer;
    while( !(Chip_SPI_GetStatus(LPC_SPI0) & SPI_STAT_RXRDY)) 
        ;
    uint16_t rxData = (uint16_t) LPC_SPI0->RXDAT & 0xFFFF;
    printHexU32(&streamUart, rxData);
    dsPuts(&streamUart, strNl);    
    // print result
    return noError;
}

result cmdSwdEnableHandler(const char *argument)
{
    // check if we have valid divisor number, max 4 hex digits
    size_t arglen = strlen(argument);
    if((arglen == 0) || (arglen > 4))
        return invalidArg;
    uint16_t divisor = 0;
    for(unsigned int i = 0; i < arglen; i++)
    {
        divisor = divisor << 4;
        unsigned int data;
        if(parseDigit(*argument, &data) != parseOk)
            return invalidArg;
        argument++;
        divisor = divisor | (uint16_t) data;
    }    
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_SWM);
    Chip_SWM_MovablePinAssign(SWM_SPI0_SCK_IO, JTAG_TCK_GPIO);
    Chip_SWM_MovablePinAssign(SWM_SPI0_MISO_IO, JTAG_TMSI_GPIO);
    Chip_SWM_MovablePinAssign(SWM_SPI0_MOSI_IO, JTAG_TMSO_GPIO);
    Chip_SWM_MovablePinAssign(SWM_SPI0_SSEL0_IO, JTAG_TMSOE_GPIO);
    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_SWM);
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_SPI0);
    Chip_SYSCTL_PeriphReset(RESET_SPI0);
    Chip_SPI_ConfigureSPI(LPC_SPI0, SPI_CFG_MASTER_EN |
                                    SPI_CLOCK_CPHA0_CPOL0 |
                                    SPI_CFG_MSB_FIRST_EN |
                                    SPI_CFG_SPOL_LO);
    LPC_SPI0->DLY = 0x0;
    LPC_SPI0->DIV = SPI_DIV_VAL(divisor);
    Chip_SPI_Enable(LPC_SPI0);
    return noError;
}

result cmdSwdDisableHandler(const char *argument)
{
    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_SPI0);
    // reset SPI core
    return noError;
}