# The Hash as a Whole

%some_hash = ('foo', 35, 'bar', 12.4, 2.5, 'hello',
	      'wilma', 1.72e30, 'betty', "bye\n");


@any_array = %some_hash;


print "@any_array\n";
  # might give something like this:
  # betty bye (and a newline) wilma 1.72e+30 foo 35 2.5 hello bar 12.4)
