# The defined Function

$next_line = <STDIN>;
if ( defined($next_line) ) {
    print "The input was $next_line";
} else {
    print "No input available!\n";
}


$next_line = undef; # As if it had never been touched
