# Reopening a Standard Filehandle

# Send errors to my private error log
if ( ! open STDERR, ">>/home/barney/.error_log") {
    die "Can't open error log for append: $!";
}
