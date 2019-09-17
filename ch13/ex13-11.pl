# Chaiging Ownership

my $user  = 1004;
my $group = 100;
chown $user, $group, glob '*.o';


defined(my $user = getpwnam 'merlyn') or die 'bad user';
defined(my $group = getgrnam 'users') or die 'bad group';
chown $user, $group, glob '/home/merlyn/*';
