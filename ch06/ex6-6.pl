# The each Function

while ( ($key, $value) = each %hash ) {
    print "$key => $value\n";
}


foreach $key (sort keys %hash) {
    $value = $hash{$key};
    print "$key => $value\n";
    # Or, we could have avoided the extra $value variable:
    #  print "$key => $hash{$key}\n";
}
