# Binmoding Filehandles

binmode STDOUT; # don't translate line endings
binmode STDERR; # don't translate line endings


binmode STDOUT, ':encoding(UTF-8)';


binmode STDIN, ':encoding(UTF-8)';
