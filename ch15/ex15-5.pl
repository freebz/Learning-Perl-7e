# Using Backquotes to Capture Output

my $now = `date`;	      # grab the output of date
print "The time is now $now"; # newline already present


chomp(my $no_newline_now = `date`);
print "A moment ago, it was $no_newline_now, I think.\n";


my @functions = qw{ int rand sleep length hex eof not exit sqrt umask };
my %about;

foreach (@functions) {
  $about{$_} = `perldoc -t -f $_`;
}


foreach (@functions) {
  $about{$_} = qx(perldoc -t -f $_);
}


my $output = qx'echo $$';


print "Starting the frobnitzigator:\n";
`frobnitz -enable`; # no need to do this if you ignore the string
print "Done!\n";


my $output_with_errors = `frobnitz -enable 2>&1`;


my $result = `some_questionable_command arg arg argh </dev/null`;


my $result = `some_questionable_command arg arg argh < NUL`;

