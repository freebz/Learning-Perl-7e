# The sort Operator

@rocks   = qw/ bedrock slate rubble granite /;
@sorted  = sort(@rocks);	# gets bedrock, granite, rubble, slate
@back    = reverse sort @rocks; # these go from slate to bedrock
@rocks   = sort @rocks;		# puts sorted result back into @rocks
@numbers = sort 97..102;	# gets 100, 101, 102, 97, 98, 99


sort @rocks;	      # WRONG, doesn't modify @rocks
@rocks = sort @rocks; # Now the rock collection is in order
