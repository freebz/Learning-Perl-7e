# Fancier Characters

use utf8;
use Unicode::Normalize;

# U+FB01        - ﬁ ligature
# U+0065 U+0301 - decompose é
# U+00E9        - composed é

binmode STDOUT, ':utf8';

my $string =
    "Can you \x{FB01}nd my r\x{E9}sum\x{E9}?";

if( $string =~ /\x{65}\x{301}/ ) {
    print "Oops! Matched a decomposed é\n";
}
if( $string =~ /\x{E9}/ ) {
    print "Yay! Matched a composed é\n";
}

my $nfd = NFD( $string );
if( $nfd =~ /\x{E9}/ ) {
    print "Oops! Matched a composed é\n";
}
if( $nfd =~ /fi/ ) {
    print "Oops! Matched a decomposed fi\n";
}

my $nfkd = NFKD( $string );
if( $string =~ /fi/ ) {
    print "Oops! Matched a decomposed fi\n"
}
if( $nfkd =~ /fi/ ) {
    print "Yay! Matched a decomposed fi\n";
}
if( $nfkd =~ /\x{65}\x{301}/ ) {
    print "Yay! Matched a decomposed é\n";
}


# Yay! Matched a composed é
# Yay! Matched a decomposed fi
# Yay! Matched a decomposed é
