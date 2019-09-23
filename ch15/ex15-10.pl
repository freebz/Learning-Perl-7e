# Sending and Receiving Signals

kill 2, 4201 or die "Cannot signal 4201 with SIGINT: $!";


kill 'INT', 4201 or die "Cannot signal 4201 with SIGINT: $!";


kill INT => 4201 or die "Cannot signal 4201 with SIGINT: $!";


unless (kill 0, $pid) {
  warn "$pid has gone away!";
}


sub clean_up {
  unlink glob "$temp_directory/*";
  rmdir $temp_directory;
}

sub my_int_handler {
  &clean_up();
  die "interrupted, exiting...\n";
}

$SIG{'INT'} = 'my_int_handler';
...;
  # some unspecified code here
  # Time passes, the program runs, creates some temporary
  # files in the temp directory, maybe someone presses Control-C
...;
  # Now it's the end of normal execution
&clean_up();


my $int_$flag = 0;
$SIG{'INT'} = 'my_int_handler';
sub my_int_handler { $int_flag = 1; }

while( ... doing stuff .. ) {
  last if $int_flag;
  ...
}

exit();
