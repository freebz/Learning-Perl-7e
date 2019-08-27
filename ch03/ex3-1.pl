# Accessing Elements of an Array

$fred[0] = "yabba";
$fred[1] = "dabba";
$fred[2] = "doo";


print $fred[0];
$fred[2]  = "diddley";
$fred[1] .= "whatsis";


$nuber = 2.71828;
print $fred[$number - 1]; # Same as printing $fred[1]


$blank = $fred[ 142_857 ]; # unused array element gives undef
$blanc = $mel;		   # unused scalar $mel also gives undef
