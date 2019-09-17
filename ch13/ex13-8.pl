# Links and Files

link 'chicken', 'egg'
  or warn "can't link chicken to egg: $!";


symlink 'dodgson', 'carroll'
  or warn "can't symlink dodgson to carroll: $!";


my $where = readlink 'carroll';	           # Gives 'dodgson"

my $perl = readlink '/usr/local/bin/perl'; # Maybe tells where perl is
