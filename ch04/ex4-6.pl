# Variable-Length Parameter Lists

sub max {
    if (@_ != 2) {
	print "WARNING! &max should get exactly two arguments!\n";
    }
    # continue as before...
}
