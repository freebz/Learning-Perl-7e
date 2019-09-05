# Substitutions with s///

$_ = "He's out bowling with Barney tonight.";
s/Barney/Fred/;  # Replace Barney with Fred
print "$_\n";


# Continuing from previous; $_ has "He's out bowling with Fred tonight."
s/Wilma/Betty/;  # Replace Wilma with Betty (fails)


s/with (\w+)/against $1's team/;
print "$_\n";  # says "He's out bowling against Fred's team tonight."


$_ = "green scaly dinosaur";
s/(\w+) (\w+)/$2, $1/;  # Now it's "scaly, green dinosaur"
s/\A/huge, /;		# Now it's "huge, scaly, green dinosaur"
s/,.*een//;		# Empty replacement: Now it's "huge dinosaur"
s/green/red/;		# Faled match: still "huge dinosaur"
s/w+$/($`!)$&/;		# Now it's "huge (huge!)dinosaur"
s/\s+(!\W+)/$1 /;	# Now it's "huge (huge!) dinosaur"
s/huge/gigantic/;	# Now it's "gigantic (huge!) dinosaur"


$_ = "fred flintstone";
if (s/fred/wilma/) {
  print "Successfully replaced fred with wilma!\n";
}
