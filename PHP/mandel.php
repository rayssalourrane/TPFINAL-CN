<?php

// 4-   Mandelbrot
function mandel($z){
        $c = $z;
        for ($i = 0;$i < 79; $i++){
            if(abs($z)>2){
                return $i;
            }
            $z = pow($z,2)+$c;
        }
        return 80;
}

function mandelpref(){
    $m = geraMatriz(26, 21);

    count($m);

    $count = 1;

    for ($i=-2;$i<=0.5;$i+=0.1){
        for($j=-1;$j<=1;$j+=0.1){
            $m[$count] = mandel($i+$j);
            $count++;
        }
    }

    print_r($m);
}
// 4-   Mandelbrot


echo 'Mandelbrot';
echo '<br>';
$time = microtime(1);
$mem = memory_get_usage();
mandelpref();
echo '<br>';
echo 'Tempo: ', 1000 * (microtime(1) - $time), "ms\n";
echo '<br>';
echo 'Memória: ', (memory_get_usage() - $mem) / (1024 * 1024);
echo '<br>';
echo '-----------------';
