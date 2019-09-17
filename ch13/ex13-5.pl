# Directory Handles

my $dir_to_process = '/etc';
opendir my $dh, $dir_to_process or die "Cannot open $dir_to_process: $!";
foreach $file (readdir $dh) {
  print "one file in $dir_to_process is $file\n";
}
closedir $dh;


opendir DIR, $dir_to_process
    or die "Cannot open $dir_to_process: $!";
foreach $file (readdir DIR) {
  print "one file in $dir_to_process is $file\n";
}
closedir DIR;


while ($name = readdir $dh) {
  next unless $name =~ /\.pm\z/;
  ... more processing ...
}


next if $name =~ /\A\./;


next if $name eq '.' or $name eq '..';


opendir my $somedir, $dirname or die "Cannot open $dirname: $!";
while (my $name = readdir $somedir) {
  next if $name =~ /\A\./;	     # skip over dot files
  $name = "$dirname/$name";	     # patch up the path
  next unless -f $name and -r $name; # only readable files
  ...
}


use File::Spec::Functions;

opendir my $somedir, $dirname or die "Cannot open $dirname: $!";
while (my $name = readdir $somedir) {
  next if $name =~ /\A\./;   	       # skip over dot files
  $name = catfile( $dirname, $name ); # patch up the path
  next unless -f $name and -r $name;  # only readable files
  ...
}
