# Quantifiers

$_ = 'Bamm-bamm';
if (/Bamm-?bamm/) {
    print "It matched!\n";
}


$_ = 'Bamm-----bamm';
if (/Bamm-*bamm/) {
    print "It matched!\n";
}


$_ = 'Bamm      bamm';
if (/Bamm *bamm/) {
    print "It matched!\n";
}


$_ = 'Bamm      bamm';
if (/B.*m/) {
    print "It matched!\n";
}


$_ = 'Bamm      bamm';
if (/B.*/) {
    print "It matched!\n";
}

if (/.*B/) {
    print "It matched!\n";
}


$_ = 'Bamm      bamm';
if (/B/) {
    print "It matched!\n";
}


$_ = 'Bamm      bamm';
if (/Bamm +bamm/) {
    print "It matched!\n";
}


$_ = "yabbbba dabbba doo.";
if (/ab{3}a/) {
    print "It matched!\n";
}


$_ = "yabbbba dabbba doo.";
if (/ab{3}/) {
    print "It matched!\n";
}


$_ = "yabbbba dabbba doo.";
if (/ab{2,3}a/) {
    print "It matched!\n";
}


$_ = "yabbbba dabbba doo.";
if (/ab{3,}a/) {
    print "It matched!\n";
}
