# Interpreting Nondecimal Numerals

hex('DEADBEEF')      # 3_735_928_559 decimal
hex('0xDEADBEEF')    # 3_735_928_559 decimal

oct('0377')          # 255 decimal
oct('377')	     # 255 decimal
oct('0xDEADBEEF')    # 3_735_928_559 decimal, saw leading 0x
oct("0b$bits")	     # convert $bits from binary


hex( 10 );   # deciaml 10, converted to "10", then decimal 16
hex( 0x10 ); # hex 10,     converted to "16", then decimal 22
