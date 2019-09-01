# Using Filehandles

if ( ! open PASSWD, "/etc/passwd") {
    die "How did you get logged in? ($!)";
}

while (<PASSWD>) {
    chomp;
    ...
}


print LOG "Captain's log, stardate 3.14159\n";  # output goes to LOG
printf STDERR "%d percent complete.\n", $done/$total * 100;


printf (STDERR "%d percent complete.\n", $done/$total * 100);
printf STDERR ("%d percent complete.\n", $done/$total * 100);
