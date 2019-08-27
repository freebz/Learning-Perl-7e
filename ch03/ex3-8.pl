# The splice Operator

@array = qw( pebbles dino fred barney betty );
@removed = splice @array, 2; # remove fred and everything after
                             # @removed is qw(fred barney betty)
                             # @array is qw(pebbles dino)


@array = qw( pebbles dino fred barney betty );
@removed = splice @array, 1, 2; # remove dino, fred
                                # @removed is qw(dino fred)
                                # @array is qw(pebbles barney betty)


@array = qw( pebbles dino fred barney betty );
@removed = splice @array, 1, 2, qw(wilma); # remove dino, fred
                                # @removed is qw(dino fred)
                                # @array is qw(pebbles wilma
                                #                barney betty)


@array = qw( pebbles dino fred barney betty );
@removed = splice @array, 1, 0, qw(wilma); # remove nothing
                                # @removed is qw()
                                # @array is qw(pebbles wilma dino
                                #               fred barney betty)
