package Functions

import kotlin.random.Random

fun randmatstat(t: Int) {
    var n = 5
    var v =  Array(t) {generateSequence(0, { 0 }).take(t).toList()}
    var w = Array(t) {generateSequence(0, { 0 }).take(t).toList()}
    val rand :java.util.Random = java.util.Random()

    var P =  Array(5) {generateSequence(rand.nextGaussian(), { rand.nextGaussian() }).take(20).toList()}
    var Q =  MutableList(10)  {generateSequence(0, { 0 }).take(10).toList()}

    for (i in 0..10){
        for (j in 0 until 10){
       // Q[i][j] = P[i][j]
        }
    }


    for (i in 1..t){


      //  var P = arrayOf(a,b,c,d)
    }
}