<?php

//5- Pi
function piSum(){
    set_time_limit(0);
    $sum = 0.0;
    for ($j=1;$j<=500;$j++){
        $sum=0.0;
        for ($k=1;$k<=10000;$k++){
            $sum= $sum+1.0/($k*$k);
        }
    }

    return $sum;
}
//Pi

echo 'Pi';
echo '<br>';
$time = microtime(1);
$mem = memory_get_usage();
echo 'Pi^2/6 = '.piSum();
echo '<br>';
echo 'Tempo: ', 1000 * (microtime(1) - $time), "ms\n";
echo '<br>';
echo 'Memória: ', (memory_get_usage() - $mem) / (1024 * 1024);
echo '<br>';
