# Manipulating a Substring with substr

my $part = substr($string, $initial_position, $length);


my $mineral = substr("Fred J. Flintstone", 8, 5);  # gets "Flint"
my $rock = substr "Fred J. Flintstone", 13, 1000;  # gets "stone"


my $pebble = substr "Fred J. Flintstone", 13;  # gets "stone"


my $out = substr("some very long string", -3, 2);  # $out gets "in"


my $long = "some very very long string";
my $right = substr($long, index($long, "l") );


my $string = "Hello, world!";
substr($string, 0, 5) = "Goodbye";  # "Goodbye, world!"


substr($string, 9, 0) = "cruel";    # "Goodbye, cruel world!";


substr($string, -20) =~ s/fred/barney/g;


my $previous_value = substr($string, 0, 5, "Goodbye");

