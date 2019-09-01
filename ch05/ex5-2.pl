# Input from the Diamond Operator

# $ ./my_program fred barney betty


while (defined($line = <>)) {
    chomp($line);
    print "It was $line that I saw!\n";
}


while (<>) {
    chomp;
    print "It was $_ that I saw!\n";
}
