# The localtime Function

my $timestamp = 1454133253;
my $date = localtime $timestamp;


my($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst)
  = localtime $timestamp;


my $now = gmtime;  # Get the current universal timestamp as a string
