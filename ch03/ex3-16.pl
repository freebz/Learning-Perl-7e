# Using List-Producing Expressions in Scalar Context

@backwards = reverse qw/ yabba dabba doo /;
    # gives doo, dabba, yabba
$backwards = reverse qw/ yabba dabba doo /;
    # gives oodabbadabbay


$fred = something;            # scalar context
@pebbles = something;         # list context
($wilma, $betty) = something; # list context
($dino) = something;	      # still list context!


$fred = something;
$fred[3] = something;
123 + something
something + 654
if (something) { ... }
while (something) { ... }
$fred[something] = something;


@fred = something;
($fred, $barney) = something;
($fred) = something;
push @fred, something;
foreach $fred (something) { ... }
sort something
reverse something
print something
