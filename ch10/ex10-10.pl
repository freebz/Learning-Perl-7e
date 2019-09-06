# The Secret Connection Between foreach and for

for (1..10) {  # really a foreach loop 1 to 10
  print "I can count to $_!\n";
}


for ($i = 1; $i < 10; $i++) {  # Oops! Something is wrong here!
  print "I can count to $_!\n";
}


for ($i = 1; $i <= 10; $i++) {  # OK now
  print "I can count to $i!\n";
}
