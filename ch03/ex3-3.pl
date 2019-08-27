# List Literals

(1, 2, 3)      # list of three values 1, 2, and 3
(1, 2, 3,)     # the same three values (the trailing comma is ignored)
("fred", 4.5)  # two values, "fred"and 4.5
( )	       # empty list - zero elements


(1..100)          # list of 100 integers
(1..5)	          # same as (1, 2, 3, 4, 5)
(1.7..5.7)	  # same thing; both values are truncated
(0, 2..6, 10, 12) # same as (0, 2, 3, 4, 5, 6, 10, 12)


(5..1)            # empty list; .. only counts "uphill"


($m, 17)       # two values: the current value of $m, and 17
($m+$o, $p+$q) # two values
($m..$n)       # range determined by current values of $m and $n
(0..$#rocks)   # the indices of the rocks array from the previous section
