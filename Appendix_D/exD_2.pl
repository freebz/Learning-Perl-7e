# Turning Off Experimental Warnings

use v5.20;
use feature qw(signatures);


use v5.20;
use feature qw(signatures);

sub division ( $m, $n ) {
  eval { $m / $n }
}
