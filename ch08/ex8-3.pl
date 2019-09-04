# Adding Whitespace with /x

/-?[0-9]+\.?[0-9]*/     # what is this doing?
/ -? [0-9]+ \.? [0-9]* /x   # a little better


/
  -?      # an optional minus sign
  [0-9]+  # one or more digits before the decimal point
  \.?     # an optional decimal point
  [0-9]*  # some optional digits after the decimal point
/x


/
  [0-9]+  # one or more digits before the decimal point
  [#]     # literal pound sign
/x


/
  -?      # with / widthout - <--- OOPS!
  [0-9]+  # one or more digits before the decimal point
  \.?     # an optional decimal point
  [0-9]*  # some optional digits after the decimal point
/x
