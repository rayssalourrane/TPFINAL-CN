<?php

//8 Método de Newton
function newton($x0,$toler,$itermax){
    $fx = pow($x0,4)+2*pow($x0,3)-13*pow($x0,2)-14*$x0+24;
    $dfx = 4*pow($x0,3)+6*pow($x0,2)-26*$x0-14;

    $x= $x0;
    $iter = 0;
    $deltax=1000;
    $df=1;
    while((abs($deltax)>$toler || abs($fx) > $toler) && $df!=0 && $iter < $itermax){
        $deltax=-$fx/$dfx;
        $x=$x+$deltax;

        $fx = pow($x0,4)+2*pow($x0,3)-13*pow($x0,2)-14*$x0+24;
        $dfx = 4*pow($x0,3)+6*pow($x0,2)-26*$x0-14;

        $iter=$iter+1;
    }

    $raiz = $x;
    if(abs($deltax)<=$toler && abs($fx)<=$toler){
        $conderro = 0;
    }else{
        $conderro = 1;
    }

    echo 'Método de Newton';
    echo '<br>';
    echo 'Iter = '.$iter;
    echo '<br>';
    echo 'Raiz = '. $raiz;
    echo '<br>';
    echo 'condErro = '.$conderro;
}

//Newton
    $x0 = 4;
    $toler = 10000*M_E-5;
    $itermax = 100;
$time = microtime(1);
$mem = memory_get_usage();
newton($x0,$toler,$itermax);
echo '<br>';
echo 'Tempo: ', 1000 * (microtime(1) - $time), "ms\n";
echo '<br>';
echo 'Memória: ', (memory_get_usage() - $mem) / (1024 * 1024);
