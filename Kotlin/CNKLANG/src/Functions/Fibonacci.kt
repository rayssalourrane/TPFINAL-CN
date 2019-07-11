package Functions

fun fibonacciRecSeries(num: Int): Int {
    return if (num <= 1) 1 else (fibonacciRecSeries(num - 1) + fibonacciRecSeries(num - 2))
}

fun fibonacciRecMap(num: Int): Sequence<Int> {
    return generateSequence(Pair(0, 1), { Pair(it.second, it.first + it.second) }).map { it.first }.take(num)
}