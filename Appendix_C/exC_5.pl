# Reading from adn Writing to Files

open my( $read_fh ),   '<:encoding(UTF-8)',  $filename;
open my( $write_fh ),  '>:encoding(UTF-8)',  $file_name;
open my( $append_fh ), '>>:encoding(UTF-8)', $file_name;
