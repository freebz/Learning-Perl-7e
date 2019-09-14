# Dates and Times

my $dt = Time::Moment->from_epoch( time );


my $dt = Time::Moment->now;


printf '%4d%02d%02d', $dt->year, $dt->month, $dt->day_of_month;


my $dt1 = Time::Moment->new(
  year       => 1987,
  month      => 12,
  day        => 18,
  );

my $dt2 = Time::Moment->now;

my $years  = $dt1->delta_years( $dt2 );
my $months = $dt1->delta_months( $dt2 ) % 12;

printf "%d years and %d months", $years, $month;


# 28 years and 4 months
