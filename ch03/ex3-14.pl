# The each Operator

require v5.12;

@rocks = qw/ bedrock slate rubble granite /;
while( ( $index, $value ) = each @rocks ) {
    print "$index: $value\n";
}


@rocks   = qw/ bedrock slate rubble granite /;
foreach $index ( 0.. $#rocks ) {
    print "$index: $rocks[$index]\n";
}
