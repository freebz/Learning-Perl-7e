# Sorting by Multiple Keys

my %socre = (
  "barney" => 195, "fred" => 205,
  "dino" => 30, "bamm-bamm" => 195,
);


my @winners = sort by_score_and_name keys %score;

sub by_score_and_name {
  $score{$b} <=> $score{$a}  # by descending numeric score
    or
  $a cmp $b	     # code point order by name
  } @winners;


@patron_IDs = sort {
  &fines($b) <=> $fines($a) or
  $items{$b} <=> $items{$a} or
  $family_name{$a} cmp $family_name{$b} or
  $personal_name{$a} cmp $personal_name{$b} or
  $a <=> $b
} @patron_IDs;
