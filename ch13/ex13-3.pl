# Globbing

# $echo *.pm
# barney.pm dino.pm fred.pm wilma.pm


foreach $arg (@ARGV) {
  print "one arg is $arg\n";
}


# $ perl show-args *.pm
# one arg is barney.pm
# one arg is dino.pm
# one arg is fred.pm
# one arg is wilma.pm


my @all_files = glob '*';
my @pm_files = glob '*.pm';


my @all_files_including_dot = glob '.* *';
