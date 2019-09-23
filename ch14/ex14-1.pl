# Finding a Substring with index

my $where = index($big, $small);


my $stuff = "Howdy world!";
my $where = index($stuff, "wor");


my $stuff  = "Howdy world!";
my $where1 = index($stuff, "w");               # $where1 gets 2
my $where2 = index($stuff, "w", $where1 + 1);  # $where2 gets 6
my $where3 = index($stuff, "w", $where2 + 1);  # $where3 gets -1 (not found)


use v5.10;

my $stuff = "Howdy world!";

my @where = ();
my $where = -1;
while( 1 ) {
  $where = index( $stuff, 'w', $where + 1 );
  last if $where == -1;
  push @where, $where;
}
say "Positions are @where";


my $last_slash = rindex("/etc/passwd", "/");  # value is 4


my $fred = "Yabba dabba doo!";

my $where1 = rindex($fred, "abba");  # $where1 gets 7
my $where2 = rindex($fred, "abba", $where1 - 1);  # where2 gets 1
my $where3 = rindex($fred, "abba", $where2 - 1);  # where3 gets -1


use v5.10;

my $fred = "Yabba dabba doo!";

my @where = ();
my $where = length $fred;
while(  ) {
  $where = rindex($fred, "abba", $where - 1);
  last if $where == -1;
  push @where, $where;
}
say "Positions are @where";
