# Slices

while (<$fh>) {
  chomp;
  my @items = split /:/;
  my($card_num, $count) = ($items[1], $items[5]);
  ... # now work with those two variables
}


my($name, $card_num, $addr, $home, $wrok, $count) = split /:/;


my(undef, $card_num, undef, undef, undef, $count) = split /:/;


my(undef, undef, undef, undef, undef, undef, undef,
  undef, undef, $mtime) = stat $some_file;


my $mtime = (stat $some_file)[9];


my $mtime = stat($some_file)[9];  # Syntac error!


my $card_num = (split /:/)[1];
my $count = (split /:/)[5];


my($card_num, $count) = (split /:/)[1, 5];


my($first, $last) = (sort @names)[0, -1];


my @names = qw{ zero one two three four five six seven eight nine };
my @numbers = ( @names )[ 9, 0, 2, 1, 0 ];
print "Bedrock @numbers\n";  # says Bedrock nine zero two one zero
