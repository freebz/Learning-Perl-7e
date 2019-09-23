# Processes as Filehandles

open DATE, 'date|' or die "cannot pipe from date: $!";
open MAIL, '|mail merlyn' or die "cannot pipe to mail: $!";


open my $date_fh, '-|', 'date' or die "cannot pipe from date: $!";
open my $mail_fh, '|-', 'mail merlyn'
    or die "cannot pipe to mail: $!";


open my $mail_fh, '|-', 'mail', 'merlyn'
    or die "cannot pipe to mail: $!";


my $now = <$date_fh>;


print $mail_fh "The time is now $now"; # presume $now ends in newline


close $mail_fh;
die "mail: nonzero exit of $?" if $?;


open my $fine_fh, '-|',
  'find', qw( / -atime +90 -size +1000 -print )
    or die "fork: $!";
while (<$find_fh>) {
  chomp;
  printf "%s size %dk last accessed %.2f days ago\n",
    $_, (1023 + -s $_)/1024, -A $_;
}
