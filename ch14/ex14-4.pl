# Using sprintf with "Money Numbers"

my $money = sprintf "%.2f", 249997;


sub big_money {
  my $number = sprintf "%.2f", shift @_;
  # Add one comma each time through the do-nothing loop
  1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
  # Put the dollar sign in the right place
  $number =~ s/^(-?)/$1\$/;
  $number;
}


while ($number =~ s/^(-?\d+)(\d\d\d)/$1,$2/) {
  1;
}


'keep looping' while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
