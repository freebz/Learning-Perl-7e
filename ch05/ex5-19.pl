# Filehandles in a Scalar

my $rocks_fh;
open $rocks_fh, '<', 'rocks.txt'
    or die "Could not open rocks.txt: $!";


open my $rocks_fh, '<', 'rocks.txt'
    or die "Could not open rocks.txt: $!";


while( <$rocks_fh> ) {
    chomp;
    ...
}


open my $rocks_fh, '>>', 'rocks.txt'
    or die "Could not open rocks.txt: $!";
foreach my $rock ( qw( slate lava grantie ) ) {
    say $rocks_fn $rock
}

print $rocks_fh "limestone\n";
close $rocks_fh;


print $rocks_fh, "limestone\n"; # WRONG


GLOB(0xABCDEF12)limestone


print STDOUT;
print $rocks_fh;  # WRONG, probably
