# The Big Arrow

%some_hash = ('foo', 35, 'bar', 12.4, 2.5, 'hello',
	      'wilma', 1.72e30, 'betty', "bye\n");


my %last_name = (  # a hash may be a lexical variable
    'fred' => 'flintstone',
    'dino' => undef,
    'barney' => 'rubble',
    'betty'  => 'rubble'
);


my %last_name = (
    fred   => 'flintstone',
    dino   => undef,
    barney => 'rubble',
    betty  => 'rubble',
);


my %last_name = (
    +   => 'flintstone',  # WRONG! Compilation error!
);


$hash{ bar.foo } = 1;  # that's the key 'barfoo'
