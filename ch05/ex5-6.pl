# Formatted Output with printf

printf "Hello, %s; your password expires in %d days!\n",
    $user, $days_to_die;


# Hello, merlyn; your password expires in 3 days!


printf "%g %g %g\n", 5/2, 51/17, 51 ** 17;  # 2.5 3 1.00683e+29


printf "in %x days!\n", 17;  # in 0x11 days!
printf "in %o days!\n", 17;  # in 021 days!


printf "%6d\n", 42;  # output like ````42 (the ` symbol stands for a space)
printf "%2d\n", 2e3 + 1.95;  # 2001


printf "%10s\n", "wilma";  # looks like `````wilma


printf "%-15s\n", "flintstone";  # looks like flintstone`````


printf "%12f\n", 6 * 7 + 2/3;    # looks like ```42.666667
printf "%12.3f\n", 6 * 7 + 2/3;  # looks like ``````42.667
printf "%12.0f\n", 6 * 7 + 2/3;  # looks like ``````````43


printf "Monthly interest rate: %.2f%%\n",
    5.25/12;  # the value looks like "0.44%"


printf "%*s", 10, "wilma";       # looks like `````wilma


printf "%*.*f", 6, 2, 3.1415926; # looks like ```3.14
printf "%*.*f", 6, 3, 3.1415926; # looks like ``3.142
