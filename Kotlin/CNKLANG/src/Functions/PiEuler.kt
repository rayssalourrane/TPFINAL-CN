package Functions

import kotlin.math.pow

fun pisum(): Double {
    var sum = 0.0
    val n = 500
    for(i in 0..n){
        sum = 0.0
        for(k in 1..(n*20))
        sum = sum + 1.0/(k*k)
    }
    return sum
}

fun pisunvec(): Double {
    val a = generateSequence(0.0, { 0.0 }).take(10000).toList()
    var s = 0.0
    val n = a.size/20

    for(i in 0..n){
        for(k in 0 until a.size)
        s += 1/(a[k].pow(2))
    }
    return s
}