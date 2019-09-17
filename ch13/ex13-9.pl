# Making and Removing Directories

mkdir 'fred', 0755 or warn "Cannot make fred directory: $!";


my $name = "fred";
my $permissions = "0755";  # danger...this isn't working
mkdir $name, $permissions;


mkdir $name, oct($permissions);


my ($name, $perm) = @ARGV;  # first two args are name, permissions
mkdir $name, oct($perm) or die "cannot create $name: $!";


foreach my $dir (qw(fred barney betty)) {
  rmdir $dir or warn "cannot rmdir $dir: $!\n";
}


my $temp_dir = "/tmp/scratch_$$";       # based on process ID; see the text
mkdir $temp_dir, 0700 or die "cannot create $temp_dir: $!";
...
# use $temp_dir as location of all temporary files
...
unlink glob "$temp_dir/* $temp_dir/.*"; # delete contents of $temp_dir
rmdir $temp_dir;			# delete now-empty directory
