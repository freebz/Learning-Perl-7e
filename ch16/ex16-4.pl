# Key-Value Slices

my @values = @score{@players};


my %new_hash;
@new_hash{ @players } = @values;


my %new_hash = map { $_ => $score{$_} } @players;


use v5.20;

my %new_hash = %score{@players};


my %first_last_scores = %bowling_scores[0,-1];
