# Opening a Filehandle

open CONFIG, 'dino';
open CONFIG, '<dino';
open BEDROCK, '>fred';
open LOG, '>>logfile';


my $selected_output = 'my_output';
open LOG, "> $selected_output";


open CONFIG, '<', 'dino';
open BEDROCK, '>', $file_name;
open LOG, '>>', &logfile_name();


open CONFIG, '<:encoding(UTF-8)', 'dino';


open BEDROCK, '>:encoding(UTF-8)', $file_name;
open LOG, '>>:encoding(UTF-8)', &logfile_name();


open BEDROCK, '>:utf8', $file_name;  # probably not right


# $ perl -MEncode -le "print for Encode->encodings(':all')"


open BEDROCK, '>:encoding(UTF-16LE)', $file_name;


open BEDROCK, '>:encoding(iso-5595-1)', $file_name;


open BEDROCK, '>:crlf', $file_name;


open BEDROCK, '<:crlf', $file_name;
