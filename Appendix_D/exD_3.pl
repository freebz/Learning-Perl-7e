# Enable or Disable Features Lexically

require v5.10;
sub say {
  print "Someone said \"@_\"\n";
}

say( "Hello Fred!" );

{ # use the built-in say in here
use feature qw(say);
say "Hello Barney!";
}

say( "Hello Dino!" );


# Someone said "Hello Fred!"
# Hello Barney!
# Someone said "Hello Dino!"
