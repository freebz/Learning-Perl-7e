# Avoiding the Shell

my $tarfile = 'something*wicked.tar';
my @dirs = qw(fred|flintstone <barney&rubble> betty );
system 'tar', 'cvf', $tarfile, @dirs;


system "tar cvf $tarfile @dirs";  # Oops!


my @dirs = qw( ; rm -rf / );


system $command_line;
system '/bin/sh', '-c', $command_line;


system '/bin/csh', '-fc', $command_line;


system 'touch', 'name with spaces.txt';


unless (system 'date') {
  # Return was zero, meaning success
  print "We gave you a date, OK!\n";
}


!system 'rf -rf files_to_delete' or die 'something went wrong';


my $return_value    = system( ... );
my $child_exit_code = $return_value >> 8;


my $low_octet     = $return_value & 0xFF; # mask out high octet
my $dumped_core   = $low_octet & 0b1_0000000;  # 128
my $signal_number = $low_octet & 0b0111_1111;  # 0x7f, or 127
