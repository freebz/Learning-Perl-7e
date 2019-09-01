# Changing the Default Output Filehandle

select BEDROCK;
print "I hope Mr. Slate doesn't find out about this.\n";
print "Wilma!\n";


select LOG;
$| = 1;  # don't keep LOG entries sitting in the buffer
select STDOUT;
# ... time passes, babies learn to walk, tectonic plates shift, and then...
print LOG "This gets written to the LOG at once!\n";
