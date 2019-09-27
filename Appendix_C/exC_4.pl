# Reading from STDIN or Writing to STDOUT or STDERR

binmode STDOUT, ':encoding(UTF-8)';
binmode $fh, ':encoding(UTF-16LE)';


open my $fh, '>:encoding(UTF-8)', $filename;


use open IN  => ':encoding(UTF-8)';
use open OUT => ':encoding(UTF-8)';


use open IN  => ":crlf", OUT => ":bytes";


use open IO  => ":encoding(iso-8859-1)";
use open ':encoding(UTF-8)';


use open ':std';


# I   1  STDIN is assumed to be in UTF-8
# O   2  STDOUT will be in UTF-8
# E   4  STDERR will be in UTF-8
# S   7  I + O + E
# i   8  UTF-8 is the default PerlIO layer for input streams
# o  16  UTF-8 is the default PerlIO layer for output streams
# D  24  i + o
