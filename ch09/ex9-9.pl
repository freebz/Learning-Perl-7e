# The split Operator

my @fields = split /separator/, $string;


my @fields = split /:/, "abc:def:g:h";  # gives ("abc", "def", "g", "h")


my @fields = split /:/, "abc:def::g:h";  # gives ("abc", "def", "", "g", "h")


my @fields = split /:/, ":::a:b:c:::";  # gives ("", "", "", "a", "b", "c")


my @fields = split /:/, ":::a:b:c:::", -1;  #gives ("", "", "", "a", "b", "c", "", "", "")


my $some_input = "This  is a \t        test.\n";
my @args = split /\s+/, $some_input;  # ("This", "is", "a", "test.")


my @fields = split;  # like split /\s+/, $_;
