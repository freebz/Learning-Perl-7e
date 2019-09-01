# Input from Standard Input

$line = <STDIN>;		# read the next line
chomp($line);			# and chomp it

chomp($line = <STDIN>);		# same thing, more idiomatically


while (defined($line = <STDIN>)) {
    print "I saw $line";
}


while (<STDIN>) {
    print "I saw $_";
}


while (defined($_ = <STDIN>)) {
    print "I saw $_";
}


foreach (<STDIN>) {
    print "I saw $_";
}
