# Scalar and List Context

42 + something # The something must be a scalar
sort something # The something must be a list


@people = qw( fred barney betty );
@sorted = sort @people;  # list context: barney, betty, fred
$number = 42 + @people;  # scalar context: 42 + 3 gives 45


@list = @people; # a list of three people
$n = @people;	 # the number 3
