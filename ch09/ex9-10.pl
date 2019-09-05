# The join Function

my $result = join $glue, @pieces;


my $x = join ":", 4, 6, 8, 10, 12;  # $x is "4:6:8:10:12"


my $y = join "foo", "bar";	 # gives just "bar", since no foo glue is needed
my @empty;			 # empty array
my $empty = join "baz", @empty;  # no items, so it's an empty string


my @values = split /:/, $x;  # @values is (4, 6, 8, 10, 12)
my $z = join "-", @values;   # $z is "4-6-8-10-12"
