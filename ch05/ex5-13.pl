# Fatal Errors with die

if ( ! open LOG, '>>', 'logfile' ) {
    die "Cannot create logfile: $!";
}


# Cannot create logfile: permission denied at your_program line 1234.


if (@ARGV < 2) {
    die "not enough arguments\n";
}
