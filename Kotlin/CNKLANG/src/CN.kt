
import java.util.*
import Functions.*
import javafx.scene.transform.MatrixType
import java.text.SimpleDateFormat
import java.time.Duration
import java.time.Instant
import java.time.LocalDateTime
import kotlin.collections.ArrayList
import kotlin.math.absoluteValue
import kotlin.system.measureTimeMillis


class CN {


/*
    inline fun <reified T> matrix(height: Int, width: Int, initialize: () -> T) =
        Array(height) {Array(width) {initialize()}}

    fun mandelperf() {
    val M = matrix (26,21) {0}
    val count:Int = 1



        for (i in 0.5 downTo -2 step 0.1) {
            println(i)
        }
    }

*/
}

fun generateRandIntList(size: Int): MutableList<Int> {
    var list:MutableList<Int> = arrayListOf()
    for (x in 0..size){
        list.add((0..100).random())
    }
    return list
}

fun main() {

    // Create a DateFormatter object for displaying date information.
    var formatter =  SimpleDateFormat("mm:ss.SSSSS");
    var now = System.currentTimeMillis()
    fibonacciRecSeries(50)
    now = System.currentTimeMillis() - now
    var calendar = Calendar.getInstance()
    calendar.setTimeInMillis(now)

    println(formatter.format(calendar.getTime()))
   /*
    var elapsedTime = measureTimeMillis {
        fibonacciRecSeries(10)
    }*/
    //println(elapsedTime)




    /*
   // 1. Fibonacci recursivo
   println(fibonacciRecSeries(20))
   // 2. Parse Int (converte uma string em um inteiro).
   println(parseInt("2019"))
   // 3. Quicksort.
   println(quickSort(generateRandIntList(5000)))
   // 4. Conjunto de Mandelbrot (Fractal).
   Mandelbrot().isVisible = true
   // 5. Geracao do π pela formula de Euler
   print(pisum())
      print(pisumvec())
   // 6. Estatıstica em Matriz Randomica.
   // 7. Metodo de Relaxacao Sucessiva (SOR).
       val A = arrayOf(doubleArrayOf(4.0,-2.0,1.0,3.0,0.0),
                    doubleArrayOf(-1.0,10.0,0.0,8.0,1.0),
                    doubleArrayOf(-1.0,1.0,15.0,2.0,4.0),
                    doubleArrayOf(0.0,1.0,10.0,5.0,1.0),
                    doubleArrayOf(2.0,-3.0,1.0,2.0,2.0,0.0))
    val b = doubleArrayOf(15.0, 56.0, 74.0, 57.0, 107.0)
    val w = 1.6
    val Toler = 1e-5
    val IterMax = 500
    relacSuce(A, b, w, Toler, IterMax)
   // 8. Metodo de Newton
    var x0: Double = 4.0
    var TolerN: Double = 1.0000e-05
    var IterMaxN: Int = 100
    newton(x0, TolerN, IterMaxN)
   */

}