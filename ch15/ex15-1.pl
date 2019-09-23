# The system Function

system 'date';


system 'date /T';


system 'ls -l $HOME';


system "ls -l \$HOME";


system "cmd /c dir %userprofile%";


system "long_running_command with parameters &";


system 'start /B long_running_command with paramebers';


system 'for i in *; do echo == $i ==; cat $i; done';


system 'for /R %i in (*) DO echo %i & type %i';
