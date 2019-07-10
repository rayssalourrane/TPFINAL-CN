
import java.io.PrintStream;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Rayssa Lourrane
 */
public class Fibonacci {
   
    static long fib(int n) {
        if (n < 2) {
            return n;
        } else {
            return fib(n - 1) + fib(n - 2);
        }
    }
  
    public static void main(String[] args) {   
    long tmpinicio = System.currentTimeMillis();
    Fibonacci.fib(50);
    long tmpfinal = System.currentTimeMillis();
    
    System.out.println(tmpfinal - tmpinicio); 
    
    
    
}
}
