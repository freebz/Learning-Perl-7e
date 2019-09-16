# File Test Operators

die "Oops! A file called '$filename' already exists.\n"
  if -e $filename;


warn "Config file is looking pretty old!\n"
  if -M CONFIG > 28;


my $original_files = qw/ fred barney betty wilma pebbles dino bamm-bamm /;
my @big_old_files;  # The ones we want to put on backup tapes
foreach my $filename (@original_files) {
  push @big_old_files, $filename
    if -s $filename > 100_000 and -A $filename > 90;
}


foreach (@lots_of_filenames) {
  print "$_ is readable\n" if -r;  # same as -r $_
}


# The filename is in $_
my $size_in_K = -s / 1000;  # Oops!


my $size_in_k = (-s) / 1024;  # Uses $_ by default


my $size_in_k = (-s $filename) / 1024;
