SECTIONS
{
    /* The BIOS loads the
     * bootloader at 0x7C00 */
    . = 0x7C00;
    .text :
    {
        _start = .;
        *(.text)
         . = 0x1FE;
        SHORT(0xAA55)
    }
}
