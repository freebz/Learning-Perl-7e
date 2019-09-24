# Transforming Items from a List with map

my @data = (4.75, 1.5, 2, 1234, 6.9456, 12345678.9, 29.95);
my @formatted_data;

foreach (@data) {
  push @formatted_data, big_money($_);
}


my @data = (4.75, 1.5, 2, 1234, 6.9456, 12345678.9, 29.95);

my @formatted_data = map { big_money($_) } @data;


print "The money numbers are:\n",
  map { sprintf("%25s\n", $_) } @formatted_data;


my @data = (4.75, 1.5, 2, 1234, 6.9456, 12345678.9, 29.95);
print "The money numbers are:\n",
  map { sprintf("%25s\n", big_money($_) ) } @data;


print "Some powers of two are:\n",
  map "\t" . ( 2 ** $_ ) . "\n", 0..15;




sub big_money {
  my $number = sprintf "%.2f", shift @_;
  # Add one comma each time through the do-nothing loop
  1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
  # Put the dollar sign in the right place
  $number =~ s/^(-?)/$1\$/;
  $number;
}
