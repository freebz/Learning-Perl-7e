# An Alternate Syntax for Globbing

my @all_files = <*>;    # exactly the same as my @all_files = glob "*";


my $dir = '/etc';
my @dir_files = <$dir/* $dir/.*>;


my @files = <FRED/*>;   # a glob
my @lines = <FRED>;	# a filehandle read
my @lines = <$fred>;	# a filehandle read
my $name = 'FRED';
my @files = <$name/*>;  # a glob


my $name = 'FRED';
my @lines = <$name>; # an indirect filehandle read of FRED handle


my $name = 'FRED';
my @lines = readline FRED;  # read from FRED
my @lines = readline $name; # read from FRED
