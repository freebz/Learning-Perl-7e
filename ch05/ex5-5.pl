# Output to Standard Output

$name = "Larry Wall";
print "Hello there, $name, did you know that 3+4 is ", 3+4, "?\n";


print @array;     # print a list of items
print "@array";   # print a string (containing an interpolated array)


print <>;         # implementation of /bin/cat

print sort <>;    # implementation of /bin/sort


print("Hello, world!\n");
print "Hello, world!\n";


print (2_3);


$result = print("hello world!\n");


print (2+3)*4;  # Oops!


( print(2+3) ) * 4;  # Oops!


print( (2+3) * 4);
