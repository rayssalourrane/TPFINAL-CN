package Functions

import kotlin.math.absoluteValue

fun relacSuce(A: Array<DoubleArray>, b: DoubleArray, w: Double, Toler: Double, IterMax: Int) {
    var n: Int = A.size-1
    var x = DoubleArray(n+1)
    var v = DoubleArray(n+1)

    var NormaNum = 0.0
    var NormaDen = 0.0
    var NormaRel = 0.0
    var Iter = 0

    for (i in 0..n){
        var r = 1 / A[i][i]
        for (j in 0..n)
            A[i][j] = if (i != j) A[i][j] * r else continue
        b[i] = b[i] * r
        x[i] = b[i]
    }

    Iter = 0
    NormaRel = 1000.0

    while (NormaRel > Toler && Iter < IterMax) {
        Iter = Iter + 1
        for (i in 0..n){
            var soma: Double = 0.0
            for (j in 0..n){
                soma = if (i != j) soma + A[i][j] * x[j] else continue
        }
            v[i] = x[i]
            x[i] = w * (b[i] - soma) + (1 - w) * x[i]
        }
        for (i in 0..n){
            var t = (x[i] - v[i]).absoluteValue
            NormaNum =   if (t > NormaNum) t else continue
            NormaDen = if (x[i].absoluteValue > NormaDen) (x[i]).absoluteValue else continue
        }
        NormaRel = NormaNum / NormaDen
    }
    var CondErro = if (NormaRel <= Toler) 0 else 1
    println(" Iter = $Iter \n x = ${x.toList()} \n NormaRel = $NormaRel \n CondErro = $CondErro")
}