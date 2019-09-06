# Control Structures Using Partial-Evaluation Operators

($m < $n) && ($m = $n);


if ($m < $n) { $m = $n }


$m = $n if $m < $n;


($m > 10) || print "why is it not greater?\n";


($m < $n) ? ($m = $x) : ($n = $x);


$m < $n and $m = $n;  # but better written as the corresponding if


open my $fh, '<', $filename
  or die "Can't open '$filename': $!";
