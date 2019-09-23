# Getting Down and Dirty with Fork

system 'date';


defined(my $pid = fork) or die "Cannot fork: $!";
unless ($pid) {
  # Child process is here
  exec 'date';
  die "cannot exec date: $!";
}
# Parent process is here
waitpid($pid, 0);
