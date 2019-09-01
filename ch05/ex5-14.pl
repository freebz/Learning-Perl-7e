# Automatically die-ing

if ( ! open LOG, '>>', 'logfile' ) {
    die "Cannot create logfile: $!";
}


use autodie;

open LOG, '>>', 'logfile';


# Can't open('>>', 'logfile'): No such file or directory at test line 3
