# The Environment Variables

$ENV{'PATH'} = "/home/rootbeer/bin:$ENV{'PATH'}";
delete $ENV{'IFS'};
my $make_result = system 'make';


use Config;
$ENV{'PATH'} = join $Config{'path_sep'},
    '/home/rootbeer/bin', $ENV{'PATH'};
