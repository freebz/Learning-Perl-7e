# The Value of a Short-Circuit Operator

my $last_name = $last_name{$someone} || '(No last name)';


my $last_name = defined $last_name{$someone} ?
  $last_name{$someone} : '(No last name)';
