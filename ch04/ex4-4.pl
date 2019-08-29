# Arguments

$n = &max(10, 15);  # This sub call has two parameters


sub max {
    # Compare this to &larger_of_fred_or_barney
    if ($_[0] > $_[1]) {
	$_[0];
    } else {
	$_[1];
    }
}


$n = &max(10, 15, 20);  # Oops!
