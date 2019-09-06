# The defined-or Operator

use v5.10;

my $last_name = $last_name{$someone} // '(No last name)';


use v5.10;

my $Verbose = $EVN{VERBOSE} // 1;
print "I can talk to you!\n" if $Verbose;


use v5.10;

foreach my $try ( 0, undef, '0', 1, 25 ) {
  print "Trying [$try] ---> ";
  my $value = $try // 'default';
  say "\tgot [$value]";
}


  # Trying [0] --->         got [0]
  # Trying [] --->          got [default]
  # Trying [0] --->         got [0]
  # Trying [1] --->         got [1]
  # Trying [25] --->        got [25]


use warnings;

my $name;  # no value, so undefined!
printf "%s", $name; # Use of uninitialized value if printf ...


use v5.10;
use warnings;

my $name;  # no value, so undefined!
printf "%s", $name // '';
