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
Main entry file
*/
#include <stdint.h>
#include <board.hpp>
#include <stream_uart.hpp>
#include <strings.hpp>
#include <chip.h>
#include <prompt_mini.h>
#include <commands.hpp>


char promptBuf[16];
result cmdlineParse(char *cmdline);

promptData_t sqProgPromptData = 
{
    promptBuf,
    0,
    sizeof(promptBuf),
    cmdlineParse,
};
volatile uint32_t ticks = 0;

extern "C"
{
    void SysTick_Handler(void)
    {
        ticks++;
    }
}

result cmdlineParse(char *const cmdline)
{
    return commandInterpret(sqProgCommands, cmdline);
}

int main()
{
    boardInit();
    dsPuts(&streamUart, strHello);
    while (1) {
        promptProcess(&sqProgPromptData, &streamUart);
    }
}