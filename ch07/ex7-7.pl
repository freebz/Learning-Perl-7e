# Character Classes

$_ = "The HAL-9000 requires authorization to continue.";
if (/HAL-[0-9]+/) {
  print "The string mentions some model of HAL computer.\n";
}


# [-a]      # hyphen or an a
# [a-]	    # hyphen or an a
# [a\-z]    # hyphen or an a or an z
# [a-z]	    # lowercase letters from a to z


# [5.24]    # matches a literal dot or a 5, 2, or 4


$_ = "Bamm-Bamm";
if (/Bamm-?[Bb]amm/) {
  print "The string has Bamm-Bamm\n";
}


# [^def]    # anything not d, e, or f
# [^n-z]    # not a lowercase letter from n to z
# [^n\-z]   # not an n, -, or z
