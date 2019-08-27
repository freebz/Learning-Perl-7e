# The pop and push Operators

@array  = 5..9;
$fred   = pop(@array);  # $fred gets 9, @array now has (5, 6, 7, 8)
$barney = pop @array;	# $barney gets 8, @array now has (5, 6, 7)
pop @array;		# @array now has (5, 6). (The 7 is discarted.)


push(@array, );       # @array now has (5, 6, 0)
push @array, 8;	      # @array now has (5, 6, 0, 8)
push @array, 1..10;   # @array now has those 10 new elements
@others = qw/ 9 8 2 1 0 /;
push @array, @others; # @array now has those five new elements (19 total)
