<?php

//2- ParseInt
function parseInt($string){
    return (int)$string;
}
//ParseInt


echo 'Parse Int';
echo '<br>';
$time = microtime(1);
$mem = memory_get_usage();
echo parseInt('10000');
echo '<br>';
echo 'Tempo: ', 1000 * (microtime(1) - $time), "ms\n";
echo '<br>';
echo 'Memória: ', (memory_get_usage() - $mem) / (1024 * 1024);
echo '<br>';
