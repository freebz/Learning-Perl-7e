# Bad Filehandles

my $success = open LOG, '>>', 'logfile';  # capture the return value
if ( ! $success ) {
    # The open failed
    ...
}
