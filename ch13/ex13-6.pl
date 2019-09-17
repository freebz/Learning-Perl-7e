# Manipulating Files and Directories

# Removing Files

# $ rm slate bedrock lava

unlink 'slate', 'bedrock', 'lava';

unlink qw(slate bedrock lava);


unlink glob '*.o';


my $successful = unlink "slate", "bedrock", "lava";
print "I dleted $successful file(s) just now\n";


foreach my $file (qw(slate bedrock lava)) {
  unlink $file or warn "failed on $file: $!\n";
}
