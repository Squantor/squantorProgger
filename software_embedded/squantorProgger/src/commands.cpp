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

result cmdPrintVerHandler(const char *argument);
result cmdSpiTestHandler(const char *argument);

const char cmdPrintVer[] = "pv";
const char cmdSpiTest[] = "ts";

commandEntry_t sqProgCommands[] = 
{
    {cmdPrintVer, cmdPrintVerHandler},
    {cmdSpiTest, cmdSpiTestHandler},
    {NULL, NULL},
};

// commands may not use an argument and this is fine, ignore warning
#pragma GCC diagnostic ignored "-Wunused-parameter"
result cmdPrintVerHandler(const char *argument)
{
    dsPuts(&streamUart, strHello);
    return noError;
}

// now we want warnings on arguments missing again
#pragma GCC diagnostic pop


result cmdSpiTestHandler(const char *argument)
{
    const char *s = argument;
    unsigned int size;
    if(parseDigit(*s, &size) != parseOk)
        return invalidArg;
    s++;
    // we know bit size, now check rest
    unsigned int data = (size / 4 + 1);
    if(strlen(s) != data)
        return invalidArg;
    // we increment size so we cover a range from 1 to 16
    size++;
    // parse data characters
    // transfer
    // print result
    return noError;
}