# Advanced Sorting

sub any_sort_sub {    # It doesn't really work this way
  my($a, $b) = @_;    # Get and naem the two parameters
  # start comparing $a and $b here
  ...
}


sub by_number {
  # a sort subroutine, expect $a and $b
  if ($a < $b) { -1 } elsif ($a > $b) { 1 } else { 0 }
}


my @result = sort by_number @some_numbers;


sub by_number { $a <=> $b }


sub by_code_point { $a cmp $b }


sub case_insentitive { "\L$a" cmp "\L$b" }


use Unicode::Normalize;

sub equivalents { NFKD($a) cmp NFKD($b) }


my @numbers = sort { $a <=> $b } @some_numbers;


my @descending = reverse sort { $a <=> $b } @some_numbers;


my @descending = sort { $b <=> $a } @some_numbers;
