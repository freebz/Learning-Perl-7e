# Renaming Files

rename 'old', 'new';


rename 'over_there/some/place/some_file', 'some_file';


rename 'over_there/some/place/some_file' => 'some_file';


foreach my $file (glob "*.old") {
  my $newfile = $file;
  $newfile =~ s/\.old$/.new/;
  if (-e $newfile) {
    warn "can't rename $file to $newfile: $newfile exists\n";
  } elsif (rename $file => $newfile) {
    #success, do onthing
  } else {
    warn "rename $file to $newfile failed: $!\n";
  }
}


(my $newfile = $file) =~ s/\.old$/.new/;


use v5.14;

my $newfile = $file =~ s/\.old$/.new/r;
