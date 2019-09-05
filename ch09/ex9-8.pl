# Metaquoting

if ( s/(((Fred/Fred/ ) {	# Does not compile!
  print "Replaced nage\n";
}


if ( s/\(\(\(Fred/Fred/ ) {	# Compiles, but messy!
  print "Replaced name\n";
}


if ( s/\Q(((Fred/Fred/ ) {	# Less messy
  print "Replaced name\n";
}


if ( s/\Q(((\E(Fred)/$1/ ) {	# Even less messy
  print "Replaced $1\n";
}


if ( s/\Q$prefix\E(Fred)/$1/ ) { # Compiles!
  print "Replaced $1\n";
}


my $prefix = quotemeta( $input_pattern );
if ( s/$prefix(Fred)/$1/ ) { 	# Compiles!
  print "Replaced $1\n";
}
