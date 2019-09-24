# More Advanced Error Handling

eval {
  ...;
  die "An unexpected exception message" if $unexpected;
  die "Bad denominator" if $dino == 0;
  $barney = $fred / $dino;
  }
if ( $@ =~ /unexpected/ ) {
    ...;
  }
elsif( $@ =~ /denominator/ ) {
  ...;
  }


{
local $@; # don't stomp on higher level errors

  eval {
    ...;
    die "An unexpected exception message" if $unexpected;
    die "Bad denominator" if $dino == 0;
    $barney = $fred / $dino;
    };
  if ( $@ =~ /unexpected/ ) {
    ...;
    }
  elsif( $@ =~ /denominator/ ) {
    ...;
    }
  }


use Try::Tiny;

try {
  ...; # some code that might throw errors
  }
catch {
  ...; # some code to handle the error
  }
finally {
  ...;
}


my $barney = try { $fred / $dino };


use v5.10;

my $barney =
  try { $fred / $dino }
  catch {
    say "Error was $_" # not $@
    };


use v5.10;

my $barney =
  try { $fred / $dino }
  catch {
    say "Error was $_"; # not $@
    }
  finally {
    say @_ ? 'There was an error' : 'Everything worked';
    };
