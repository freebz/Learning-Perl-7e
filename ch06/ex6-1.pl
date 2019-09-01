# Hash Element Access

$family_name{'fred'}   = 'flintstone';
$family_name{'barney'} = 'rubble';


foreach my $person (qw< barney fred >) {
    print "I've heard of $person $family_name{$person}.\n";
}


$foo = 'bar';
print $family_name{ $foo . 'ney'};  # prints 'rubble'


$family_name{'fred'} = 'astaire';  # gives new value to existing element
$bedrock = $family_name{'fred'};   # gets 'astaire'; old value is lost


$family_name{'wilma'} = 'flintstone';             # adds a new key (and value)
$family_name{'betty'} .= $family_name{'barney'};  # create the element if needed
