# Trapping Errors

# Using eval

my $barney = $fred / $dino;	# divide-by-zero error?

my $wilma = '[abc';
print "match\n" if /\A($wilma)/; # illegal regular expression error?

open my $caveman, '<', $fred	# user-generated error from die?
  or die "Can't open file '$fred' for input $!";


eval { $barney = $fred / $dino };


my $barney = eval { $fred / $dino };


use v5.10;
my $barney = eval { $fred / $dino } // 'NaN';


use v5.10;
my $barney = eval { $fred / $dino } // 'NaN';
print "I couldn't divide by \$dino: $@" if $@;


unless( defined eval { $fred / $dino } ) {
    print "I couldn't divide by \$dino: $@" if $@;
}


unless( eval { some_sub(); 1 } ) {
    print "I couldn't divide by \$dino: $@" if $@;
}


my @averages = ( 2/3, eval { $fred / $dino }, 22/7 );


foreach my $person (qw/ fred wilma betty barney dino pebbles /) {
  eval {
    open my $fh, '<', $person
      or die "Can't open fiel '$person': $!";

    my($total, $count);

    while (<$fh>) {
      $total += $_;
      $count++;
    }

    my $average = $total/$count;
    print "Average for file $person was $average\n";

    &do_something($person, $average);
  };

  if ($@) {
    print "An error occurred ($@), continuing\n";
  }
}


eval {
  print "There is a mismatched quote';
  my $sum = 42 +;
  /[abc/
    print "Final output\n";
  };


my $operator = 'unlink';
eval "$operator \@files;";
