# Is Perl Easy or Hard?

while (<>) {
    chomp;
    print join("\t", (split /:/)[0, 2, 1, 5] ), "\n";
}
