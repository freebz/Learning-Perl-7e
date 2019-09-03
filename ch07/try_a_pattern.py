while( <STDIN> ) {
    chomp;
    if ( /$ARGV[0]/ ) { # May be hazardous for your health
	print "\tMatches\n";
    }
    else {
	print "\tDoesn't match\n";
    }
}
