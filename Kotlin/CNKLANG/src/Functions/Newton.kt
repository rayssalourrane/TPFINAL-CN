package Functions

import kotlin.math.absoluteValue
import kotlin.math.pow

fun fx(x: Double): Double {
    return x.pow(4) +2* x.pow(3) -13* x.pow(2) -14*x+24
}
fun dfx(x: Double): Double {
    return 4*x.pow(3)+6*x.pow(2)-26*x-14
}

fun newton(x0: Double, Toler: Double, IterMax: Int) {
    var Fx: Double = fx(x0)
    var DFx: Double = dfx(x0)
    var x: Double = x0
    var Iter: Double = 0.0
    var DeltaX: Double = 1000.0
    var DF: Int = 1
    var CondErro: Int = 0

    while ((DeltaX.absoluteValue > Toler || Fx.absoluteValue > Toler) && (DF != 0) &&
        (Iter < IterMax)){
        DeltaX = -Fx / DFx
        x = x + DeltaX
        Fx = fx(x)
        DFx = dfx(x)
        Iter += 1
    }
    val Raiz = x
    CondErro = if (DeltaX.absoluteValue <= Toler && Fx.absoluteValue <= Toler) 0 else 1
    println("Raiz = $Raiz \n Iter = $Iter \n CondErro = $CondErro")
}