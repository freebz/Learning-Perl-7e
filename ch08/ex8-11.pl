# Named Captures

use v5.10;

my $names = 'Fred or Barney';
if ( $names =~ m/(\w+) and (\w+)/ ) { # won't match
  say "I saw $1 and $2";
}


use v5.10;

my $names = 'Fred or Barney';
if ( $names =~ m/(\w+) (and|or) (\w+)/ ) { # matches now
  say "I saw $1 and $2";
}


# I saw Fred and or


use v5.10;

my $names = 'Fred or Barney';
if ( $names =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/ ) {
  say "I saw $+{name1} and $+{name2}";
}


# I saw Fred and Barney


use v5.10;

my $names = 'Fred or Barney';
if ( $names =~ m/((?<name2>\w+) (and|or) (?<name1>\w+))/ ) {
  say "I saw $+{name1} and $+{name2}";
}


use v5.10;

my $names = 'Fred Flintstone and Wilma Flintstone';

if ( $names =~ m/(?<last_name>\w+) and \w+ \g{last_name}/ ) {
  say "I saw $+{last_name}";
}


use v5.10;

my $names = 'Fred Flintstone and Wilma Flintstone';

if ( $names =~ m/(?<last_name>\w+) and \w+ \k<last_name>/ ) {
  say "I was $+{last_name}";
}


use v5.10;

my $names = 'Fred Flintstone and Wilma Flintstone';

if ( $names =~ m/(?P<last_name>\w+) and \w+ (?P=last_name)/ ) {
  say "I saw $+{last_name}";
}
