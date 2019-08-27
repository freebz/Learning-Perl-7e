# Perl's Favorite Default: $_

foreach (1..10) {  # Uses $_ by default
    print "I can count to $_!\n";
}


$_ = "Yabba dabba doo\n";
print;  # prints $_ by default
