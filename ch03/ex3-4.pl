# The qw Shortcut

("fred", "barney", "betty", "wilmap", "dino")


qw( fred barney betty wilma dino) # same as earlier, but less typing


qw(fred
  barney    betty
wilma dino) #same as before, but pretty strange whitespace


qw(
    fred
    barney
    betty
    wilma
    dino
)


qw! fred barney betty wilma dino !
qw/ fred barney betty wilma dino /
qw# fred barney betty wilma dino #    # like in a comment!


qw( fred barney betty wilma dino )
qw{ fred barney betty wilma dino }
qw[ fred barney betty wilma dino ]
qw< fred barney betty wilma dino >


qw! yahoo\! google ask man ! # include yahoo! as an element


qw( This as a \\ real backslash );


qw{
    /usr/dict/words
    /home/rootbeer/.ispell_english
}
