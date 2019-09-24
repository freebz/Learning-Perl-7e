# Picking Items a List with grep

my @odd_numbers;

foreach (1..1000) {
  push @odd_numbers, $_ if $_ %2;
}


my @odd_numbers = grep { $_ % 2 } 1..1000;


my @matching_lines = grep { /\bfred\b/i } <$fh>;


my @matching_lines = grep /\bfred\b/i, <$fh>;


my @matching_lines = grep /\bfred\b/i, <$fh>;
my $line_count = @matching_lines;


my $line_count = grep /\bfred\b/i, <$fh>;
