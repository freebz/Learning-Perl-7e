# Changing Timestamps

my $now = time;
my $ago = $now - 24 * 60 * 60;  # seconds per day
utime $now, $ago, glob '*';	# set access to now, mod to a day ago
