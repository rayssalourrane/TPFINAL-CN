<?php

//3- QuicSort
function quickSort($array)
{
    $loe = $gt = array();
    if (count($array) < 2) {
        return $array;
    }
    $pivot_key = key($array);
    $pivot = array_shift($array);
    foreach ($array as $val) {
        if ($val <= $pivot) {
            $loe[] = $val;
        } elseif ($val > $pivot) {
            $gt[] = $val;
        }
    }
    return array_merge(quickSort($loe), array($pivot_key => $pivot), quickSort($gt));
}
//QuicSort

echo 'Quick Sort';
echo '<br>';
$array = array(3, 0, 2, 5, -1, 4, 1,55,-77,45);
for($j = 0;$j < 10000;$j++){
    $array[$j] = f_rand(0,100);
}
echo 'Original: ' . implode(',', $array);
echo '<br>';
$time = microtime(1);
$mem = memory_get_usage();
$array = quickSort($array);
echo '<br>';
echo 'Tempo: ', 1000 * (microtime(1) - $time), "ms\n";
echo '<br>';
echo 'Memória: ', (memory_get_usage() - $mem) / (1024 * 1024);
echo 'Ordenado: ' . implode(',', $array);
echo '<br>';
echo '-----------------';
