package Functions

import java.util.*


fun quickSort(list: MutableList<Int>) : MutableList<Int> {
    return sort(list, 0, list.size - 1)
}

private fun partition(quick: MutableList<Int>, left: Int, right: Int): Int {
    val p = quick[left]
    var i = left
    var j = right + 1
    while (true) {
        while (quick[++i] < p) {
            if (i >= right)
                break
        }
        while (quick[--j] > p) {
            if (j <= left)
                break
        }
        if (i >= j)
            break
        else
            Collections.swap(quick, i, j)
    }
    if (j == left)
        return j
    Collections.swap(quick, left, j)
    return j
}
private fun sort (quick: MutableList<Int>, start: Int, end: Int): MutableList<Int> {
    if (start < end) {
        val pivo:Int = partition(quick, start, end)
        sort(quick, start, pivo - 1)
        sort(quick, pivo + 1, end)
    }
    return quick
}

fun generateRandIntList(size: Int): MutableList<Int> {
    var list:MutableList<Int> = arrayListOf()
    for (x in 0..size){
        list.add((0..100).random())
    }
    return list
}