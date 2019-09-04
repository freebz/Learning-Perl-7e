# The Binding Operator =~

my $some_other = "I dream of betty rubble.";
if ($some_other =~ /\brub/) {
  print "Aye, there's the rub.\n";
}


print "Do you like Perl? ";
my $likes_perl = (<STDIN> =~ /\byes\b/i);
... # Time passes...
if ($likes_perl) {
  print "You said earlier that you like Perl, so...\n";
  ...
}


my $likes_perl = <STDIN> =~ /\byes\b/i;
