<?php


// 7 Relação Sucessiva
function sor($a,$b,$w,$toler,$itermax) {
    $n=count($a);

    $x = [];
    $v = [];
    for($i = 0;$i < $n;$i++){
        $r = 1/$a[$i][$i];
        for($j = 0;$j < $n;$j++){
            if($i!=$j){
                $a[$i][$j] = $a[$i][$j]*$r;
            }
        }
        $b[$i] = $b[$i]*$r;
        $x[$i] = $b[$i];
    }

    $iter = 0;
    $normaREl = 1000;
    while ($normaREl > $toler && $iter < $itermax){
        $iter = $iter +1;
        for($i = 0;$i < $n;$i++){
            $soma = 0;
            for($j = 0;$j < $n;$j++){
                if($i!=$j){
                    $soma = $soma+$a[$i][$j]*$x[$i];
                }
            }
            $v[$i] = $x[$i];
            $x[$i] = $w*($b[$i]-$soma)+(1-$w)*$x[$i];
        }
        $normanum = 0;
        $normaden = 0;
        for($i = 0;$i < $n;$i++){
            $t = abs($x[$i]-$v[$i]);
            if($t>$normanum) $normanum=$t;
            if (abs($x[$i]) > $normaden) $normaden = abs($x[$i]);
        }
        $normaREl = $normanum/$normaden;
    }

    if ($normaREl <=$toler){
        $condErro = 0;
    }else{
        $condErro = 1;
    }

    echo 'Relação Sucessiva';
    echo '<br>';
    echo 'Iter = '.$iter;
    echo '<br>';
    echo 'x = '. implode(',', $x);
    echo '<br>';
    echo 'normaRel = '.$normaREl;
    echo '<br>';
    echo 'condErro = '.$condErro;
}

$a = [
    [4,-2,1,3,0],
    [-1,10,0,8,1],
    [-1,1,14,2,4],
    [0,1,10,5,1],
    [2,-3,1,2,20],
];
$b= [15,56,74,57,107];
$w = 1.6;
$toler = 1*M_E-5;
$itermax = 500;
$time = microtime(1);
$mem = memory_get_usage();
sor($a,$b,$w,$toler,$itermax);
echo '<br>';
echo 'Tempo: ', 1000 * (microtime(1) - $time), "ms\n";
echo '<br>';
echo 'Memória: ', (memory_get_usage() - $mem) / (1024 * 1024);

