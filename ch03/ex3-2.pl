# Special Array Indices

$rocks[0]  = 'bedrock';      # One element...
$rocks[1]  = 'slate';        # another...
$rocks[2]  = 'lava';	     # and another...
$rocks[3]  = 'crushed rock'; # and another...
$rocks[99] = 'schist';	     # now there are 95 undef elements


$end = $#rocks;			 # 99, which is the last elements index
$number_of_rocks = $end +1;	 # OK, but you'll see a better way later
$rocks[ $#rocks ] = 'hard rock'; # the last rock


$rocks[ -1 ]   = 'hard rock';   # easier way to do that last example
$dead_rock     = $rocks[-100];  # gets 'bedrock'
$rocks[ -200 ] = 'crystal';	# fatal error!
