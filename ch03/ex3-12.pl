# The reverse Operator

@fred   = 6..10;
@barney = reverse(@fred);  # gets 10, 9, 8, 7, 6
@wilma  = reverse 6..10;   # gets the same thing, without the other array
@fred   = reverse @fred;   # puts the result back into the original array


reverse @fred;	       # WRONG - doesn't change @fred
@fred = reverse @fred; # that's better
