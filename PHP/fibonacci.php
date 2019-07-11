<?php

//1- Fibonnaci
function fibonacci($n)
{
    set_time_limit(0);
    if ($n < 2) {
        return $n;
    } else {
        return fibonacci($n - 1) + fibonacci($n - 2);
    }
}
//Fibonnaci


echo 'Fibonacci';
echo '<br>';
$time = microtime(1);
$mem = memory_get_usage();
echo fibonacci(100);
echo '<br>';
echo 'Tempo: ', 1000 * (microtime(1) - $time), "ms\n";
echo '<br>';
echo 'Memória: ', (memory_get_usage() - $mem) / (1024 * 1024);
echo '<br>';
echo '-----------------';
