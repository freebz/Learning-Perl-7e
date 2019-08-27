# List Assignment

($fred, $barney, $dino) = ("flintstone", "rubble", undef);


($fred, $barney) = ($barney, $fred); # swap those values
($betty[0], $betty[1]) = ($betty[1], $betty[0]);


($fred, $barney) = qw< flintstone rubble slate granite >; # two ignored items
($wilma, $dino) = qw[flintstone];			  # $dino gets undef


($rocks[0], $rocks[1], $rocks[2], $rocks[3]) = qw/talc mica feldspar quartz/;


@rocks  = qw/ bedrock slate lava /;
@tiny   = ( );			     # the empty list
@giant  = 1..1e5;		     # a list with 100,000 elements
@stuff  = (@giant, undef, @giant);   # a list with 200,001 elements
$dino   = "granite";
@quarry = (@rocks, "crushed rock", @tiny, $dino);


@copy = @quarry; # copy a list from one array to another
