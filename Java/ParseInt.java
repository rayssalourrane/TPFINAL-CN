/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Rayssa Lourrane
 */
public class ParseInt {
    
     static long Convert(String y){
      int x = Integer.parseInt(y);
         return x;
      
        }
    
    public static void main(String args[]) {
      
        long tempoInicial = System.currentTimeMillis();
      
            ParseInt.Convert("1000");
        long tempoFinal = System.currentTimeMillis();
        
        System.out.println(tempoFinal - tempoInicial);
   }
    
    
    
}
