# Using Only Some Functions from a Module

use File::Basename qw/ basename /;


use File::Basename qw/ /;


use File::Basename qw/ /;      # import no function names

my $betty = &dirname($wilma);  # uses your own subroutine $dirname
			       # (not shown)

my $name = "/usr/local/bin/perl";
my $dirname = File::Basename::dirname $name;  # dirname from the module
