# The exec Function

chdir '/tmp' or die "Cannot chdir /tmp: $!";
exec 'bedrock', 'po', 'args1', @ARGV;


$ENV{PATH}  = '/bin:/usr/bin';
$ENV{DEBUG} = 1;
$ENV{ROCK}  = 'granite';

chdir '/Users/fred';
open STDOUT, '>', '/tmp/granite.out';

exec 'bedrock';


exec 'date';
die "date couldn't run: $!";
