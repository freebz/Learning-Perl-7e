# Matching Multiple-Line Text

$_ = "I'm much better\nthan Barney is\nat bowling,\nWilma.\n";


print "Found 'wilma' at start of line\n" if /^wilma\b/im;


open FILE, $filename
  or die "Can't open '$filename': $!";
my $lines = join '', <FILE>;
$lines =~ s/^/$filename: /gm;
