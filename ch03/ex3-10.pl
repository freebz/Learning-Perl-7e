# The foreach Control Structure

foreach $rock (qw/ bedrock slate lava /) {
    print "One rock is $rock.\n";  # Prints names of three rocks
}


@rocks = qw/ bedrock slate lava /;
foreach $rock (@rocks) {
    $rock = "\t$rock";	   # put a tab in front of each element or @rocks
    $rock .= "\n";	   # put a newline on the end of each
}
print "The rocks are:\n", @rocks; # Each one is indented, on its own line


$rock = 'shale';
@rocks = qw/ bedrock slate lava /;

foreach $rock (@rocks) {
    ...
}

print "rock is still $rock\n"; # 'rock is still shale'
