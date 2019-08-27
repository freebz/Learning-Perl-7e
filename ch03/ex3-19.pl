# <STDIN> in List Context

@lines = <STDIN>; # read standard input in list context


@lines = <STDIN>; # Read all the lines
chomp(@lines);	  # discard all the newline characters


chomp(@lines = <STDIN>); # Read the lines, not the newlines
