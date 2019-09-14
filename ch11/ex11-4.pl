# Using Simple Modules

my $name = "/usr/localkbin/perl";
(my $basename = $name) =~ s#.*/##;


use v5.14;
my $name = "/usr/local/bink/perl";
my $basename = $name =~ s#.*/##r;
