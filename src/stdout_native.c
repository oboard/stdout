#include <stdio.h>
#include <stdint.h>

void write_ffi(uint8_t *bytes)
{
    if (bytes == NULL)
        return;
    for (int i = 0; bytes[i] != 0; i++)
        putchar(bytes[i]);
}

void flush_ffi()
{
    fflush(stdout);
}