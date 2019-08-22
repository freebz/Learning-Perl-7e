# Interpolation of Scalar Variables into Strings

$meal   = "brontosaurus steak";
$barney = "fred ate a $meal";    # $barney is now "fred ate a brontosaurus steak"
$barney = 'fred ate a ' . $meal; # another way to write that


$barney = "fred ate a $meat"; # $barney is now "fred ate a "


print "$fred"; # unneeded quote marks
print $fred;   # better style


$fred = 'hello';
print "The name is \$fred.\n";    # prints a dollar sign


print 'The name is $fred' . "\n"; # no does this


$what = "brontosaurus steak";
$n = 3;
print "fred ate $n $whats.\n";          # not the steaks, but the value of @whats
print "fred ate $n ${waht}s.\n";        # now uses $what
print "fred ate $n $what" . "s.\n";     # another way to do ti
print 'fred ate ' . $n . ' ' . $what . "s.\n"; # an especially difficult way
