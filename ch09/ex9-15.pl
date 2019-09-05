# Updating Many Files

#!/usr/bin/perl -w

use strict;

chomp(my $date = `date`);
$^I = ".bak";

while (<>) {
  s/\AAuthor:.*/Author: Randal L. Schwartz/;
  s/\APhone:.*\n//;
  s/\ADate.*/Date: $date/;
  print;
}


my $date = localtime;
