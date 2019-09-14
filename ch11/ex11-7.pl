# The File::Spec Module

use File::Basename;

print "Please enter a filename ";
chomp(my $old_name = <STDIN>);

my $dirname  = dirname $old_name;
my $basename = basename $old_name;

$basename =~ s/^/not/;  # Add a prefix to the basename
my $new_name = "$dirname/$basename";

rename($old_name, $new_name)
  or warn "Can't rename '$old_name' to '$new_name': $!";


use File::Spec;


   # Get the values for $dirname and $basename as earlier


my $new_name = File::Spec->catfile($dirname, $basename);

rename($old_name, $new_name)
  or warn "Cant't rename '$oldname' to '$newname': $!';
