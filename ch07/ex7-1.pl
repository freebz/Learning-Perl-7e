# Sequences

$_ = "yabba dabba doo";
if (/abba/) {
    print "It matched!\n";
}


$_ = "yabba dabba doo";
if (/ab ba/) {    # Won't match
    print "It matched!\n";
}


$_ = "yabba dabba doo";
if (/ba da/) {    # Does match
    print "It matched!\n";
}


/coke\tsprite/			        # \t for tab
/coke\N{CHARACTER TABULATION}sprite/    # \N{charname}
/coke\011sprite/			# character number, octal
/coke\x09sprite/			# character number, hex
/coke\x{9}sprite/			# character number, hex
/coke${tab}sprite/			# scalar variable


$pattern = "(";
if (/$pattern/) {
    print "It matched!\n";
}


$_ = "yabba dabba doo";
if (//) {
    print "It matched!\n";
}
