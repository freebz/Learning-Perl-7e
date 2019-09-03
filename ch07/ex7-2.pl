# Practice Some Patterns

while( <STDIN> ) {
    chomp;
    if ( /PATTERN_GOES_HERE/ ) {
	print "\tMatches\n";
    }
    else {
	print "\tDoesn't match\n";
    }
}


while( <STDIN> ) {
    chomp;
    if ( /fred/ ) {
	print "\tMatches\n";
    }
    else {
	print "\tDoesn't match\n";
    }
}


while( <STDIN> ) {
    chomp;
    if ( /$ARGV[0]/ ) { # May be hazardous for your health
	print "\tMatches\n";
    }
    else {
	print "\tDoesn't match\n";
    }
}
