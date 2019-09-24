# Fancier List Utilities

my $first_match;
foreach (@characters) {
  if (/\bPebbles\b/i) {
    $first_match = $_;
    last;
  }
}


use List::Util qw(first);
my $first_match = first { /\bPebbles\b/i } @characters;


use List::Util qw(sum);
my $total = sum( 1..1000 ); # 500500


use List::Util qw(max);
my $max = max( 3, 5, 10, 4, 6 );


use List::Util qw(maxstr);
my $max = maxstr( @strings );


use List::Util qw(shuffle);
my @shuffled = shuffle(1..1000); # randomized order of elements


use List::MoreUtils qw(none any all);

if (none { $_ < 0 } @numbers) {
  print "No elements less than 0\n";
} elsif (any { $_ > 50 } @numbers) {
  print "Some elements over 50\n";
} elsif (all { $_ < 10 } @numbers) {
  print "All elements are less than 10\n";
}


use List::MoreUtils qw(natatime);

my $iterator = natatime 3, @array;
while( my @triad = $iterator->() ) {
  print "Got @triad\n";
}


use List::MoreUtils qw(mesh);

my @abc = 'a' .. 'z';
my @numbers = 1 .. 20;

my @dinosaurs = qw( dino );

my @large_array = mesh @abc, @numbers, @dinosaurs;
