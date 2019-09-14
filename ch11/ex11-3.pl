# Using Your Own Directories

# $ perl -Mlocal::lib
# export PERL_LOCAL_LIB_ROOT="/Users/fred/perl5";
# export PERL_MB_OPT="--install_base /Users/fred/perl5";
# export PERL_MM_OPT="INSTALL_BASE=/Users/fred/perl5";
# export PERL5LIB="...";
# export PATH="/Users/fred/perl5/bin:$PATH";


# $ cpan -I Set::CrossProduct


# $ cpan
# cpan> o conf makepl_arg INSTALL_BASE=/Users/fred/perl5
# cpan> o conf mbuild_arg "--install_base /Users/fred/perl5"
# cpan> o conf commit


# inside your Perl program
use local::lib;


# also inside your Perl program
use lib qw( /Users/fred/perl5 );
