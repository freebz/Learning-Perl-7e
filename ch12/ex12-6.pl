# Bitwise Operators

# $mode is the mode value returned from a stat of CONFIG
warn "Hey, the configuration file is world-writable!\n"
  if $mode & 0002;		               # configuration security problem
my $classical_mode = 0777 & $mode;	       # mask off extra high-bits
my $u_plus_x = $classical_mode | 0100;	       # turn one bit on
my $go_minus_r = $classical_mode & (~ 0044);   # turn two bits off
