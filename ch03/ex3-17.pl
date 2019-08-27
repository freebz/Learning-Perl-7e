# Using Scalar-Producing Expressions in List Context

@fred = 6 * 7; # gets the one-element list (42)
@barney = "hello" . ' ' . "world";


@wilma = undef; # OOPS! Gets the one-element list (undef)
    # which is not the same as this:
@betty = ( );    # A correct way to empty an array
