# More Powerful Regular Expressions

# Nongreedy Quantifiers

my $text = '<b>Fred</b> and <b>Barney</b>';
$text =~ s|<b>(.*)</b>|</b>\U$1\E</b>|g;
print "$text\n";


# </b>FRED</B> AND <B>BARNEY</b>


my $text = '<b>Fred</b> and <b>Barney</b>';
my $match_count = $text =~ s|<b>(.*)</b>|\U$1|g;
print "$match_count: $text\n";


# 1: FRED</B> AND <B>BARNEY


my $text = '<b>Fred</b> and <b>Barney</b>';
my $match_count = $text =~ s|<b>(.*?)</b>|\U$1|g; # nongreedy
print "$match_count: $text\n";


# 2: FRED and BARNEY
