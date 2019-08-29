# Private Variables in Subroutines

sub max {
    my($m, $n);       # new, private variables for this block
    ($m, $n) = @_;    # give names to the parameters
    if ($m > $n) { $m } else { $n }
}


my($m, $n) = @_;  # Name the subroutine parameters
