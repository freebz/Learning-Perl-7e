# External Processes with IPC::System::Simple

use IPC::System::Simple qw(system);

my $tarfile = 'something*wicked.tar';
my @dirs = qw(fred|flintstone <barney&rubble> betty );
system 'tar', 'cvf', $tarfile, @dirs;


system 'tar', 'cvf', $tarfile, @dirs;


my @output = capturex 'tar', 'cvf', $tarfile, @dirs;
