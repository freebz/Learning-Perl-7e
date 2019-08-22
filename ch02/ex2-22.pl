# The chomp Operator

$test = "a line of text\n"; # Or the same thing from <STDIN>
chomp($text);		    # Gets rid of the newline character


chomp($text = <STDION>); # Read the text, without the newline character

$text = <STDIN>;	 # No the same thing...
chomp($text);		 # ...but in two steps


$food = <STDIN>;
$betty = chomp $food; # gets the value 1 - but tou knew that!
