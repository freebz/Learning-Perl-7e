# The Wildcard

$_ = "yabba dabba doo";
if (/ab.a/) {
    print "It matched!\n";
}


$_ = "yabba dabba doo!";
if (/doo./) {			# matches
    print "It matched!\n";
}

$_ = "yabba dabba doo\n";
if (/doo./) {			# doesn't match
    print "It matched!\n";
}


$_ = "yabba dabba doo.";
if (/doo\./) {			# matches
    print "It matched!\n";
}


$_ = 'a real \\ backslash';
if (/\\/) {			# matches
    print "It matched!\n";
}


$_ = "yabba dabba doo!";
if (/doo\N/) {			# matches
    print "It matched!\n";
}

$_ = "yabba dabba doo\n";
if (/doo\N/) {			# doesn't match
    print "It matched!\n";
}
