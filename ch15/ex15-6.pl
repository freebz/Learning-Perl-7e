# Using Backquotes in a List Context

my $who_text = `who`;
my @who_lines = split /\n/, $who_text;


my @who_lines = `who`;


foreach (`who`) {
  my($user, $tty, $date) = /(\S+)\s+(\S+)\s+(.*)/;
  $ttys{$user} .= "$tty at $date\n";
}
