<?php

//6- Estatistica em matriz
function randmatsta($t) {
    $n = 2;
    $v = geraMatriz($t, $t);
    $w = geraMatriz($t, $t);

    for($i = 1;$i < $t;$i++){
        $a = randn($n);
        $b = randn($n);
        $c = randn($n);
        $d = randn($n);

        $q = array_merge($a,$b);

        echo "<pre>";
        echo print_r($q);
        echo "</pre>";
    }
}

function f_rand($min=-2,$max=2,$mul=1000000){
    if ($min>$max) return false;
    return mt_rand($min*$mul,$max*$mul)/$mul;
}

function randn($n){
    $matriz = [];
    for($i = 0;$i < $n;$i++){
        for($j = 0;$j < $n;$j++){
            $matriz[$i][$j] = f_rand();
        }
    }

    return $matriz;
}

function geraMatriz($t, $n) {
    $matriz = [];
    for($i = 0;$i < $t;$i++){
        for($j = 0;$j < $n;$j++){
            $matriz[$i][$j] = 0;
        }
    }

    return $matriz;
}

echo 'Estat́ıstica em  matriz  aleat́oria';
echo '<br>';
$time = microtime(1);
$mem = memory_get_usage();
echo randmatsta(2);
echo '<br>';
echo 'Tempo: ', 1000 * (microtime(1) - $time), "ms\n";
echo '<br>';
echo 'Memória: ', (memory_get_usage() - $mem) / (1024 * 1024);
echo '<br>';

