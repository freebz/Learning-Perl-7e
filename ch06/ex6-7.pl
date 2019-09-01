# Typical Use of a Hash

$books{'fred'} = 3;
$books{'wilma'} = 1;


if ($books{$someone}) {
    print "$someone has at least one book checked out.\n";
}


$books{"barney"}  = 0;      # no books currently checked out
$books{"pebbles"} = undef;  # no books EVER checked out; a new library card
