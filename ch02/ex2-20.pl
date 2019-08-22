# Boolean Values

$is_bigger = $name gt 'fred';
if ($is_bigger) { ... }


if (! $is_bigger) {
    # do something when $is_bigger is not true
}


$still_true  = !! 'Fred';
$still_false = !! '0';
