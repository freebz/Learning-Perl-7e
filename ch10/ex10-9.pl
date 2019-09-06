# The for Control Structure

for (initialization; test; increment) {
  body;
  body;
}


initialization;
while (test) {
  body;
  body;
  increment;
}


for ($i = 1; $i <= 10; $i++) {  # count from 1 to 10
  print "I can count to $i!\n";
}


for ($i = 10; $i >= 1; $i--) {
  print "I can countdown to $i\n";
}


for ($i = -150; $i <= 1000; $i += 3) {
  print "$i\n";
}


for ($_ = "bedrock"; s/(.)//; ) {  # loops while the s/// is successful
  print "One character is $1\n";
}


for (;;) {
  print "It's an infinite loop!\n";
}


while (1) {
  print "It's an infinite loop!\n";
}
