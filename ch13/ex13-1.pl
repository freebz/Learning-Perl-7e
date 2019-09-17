# The Current Working Directory

use v5.10;
use Cwd;
say "The current working directory is ", getcwd();


# relative to the current working directory
open my $fh, '<:utf8', 'relative/path.txt'


# $ ./show_my_cwd
# $ perl show_my_cwd


# $ /home/fred/show_my_cwd
# $ perl /home/fred/show_my_cwd


# $ show_my_cwd
