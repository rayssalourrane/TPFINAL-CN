/**
 *
 * @author Rayssa Lourrane
 */
import java.util.Random;
public class RandMatrizEst {
    
    public static void main(String[] args) {
                int[][]mega = new int[7][6];
        Random gerador = new Random();
        for(int x=0; x<7; x++) {
            for(int y=0; y<6; y++) {
                int n = gerador.nextInt(60) + 1;
                int z = 0;
                while(z < 6){
                    if(mega[x][z] == n){
                        n = gerador.nextInt(60) + 1;    
                        z = 0;
                    }
                    z++;
                }
                mega[x][y] = n;
            }   
        }
        for(int x=0; x<7; x++) {
            for(int y=0; y<6; y++) {
                System.out.print(mega[x][y] + " ");
            }
            System.out.println();
        }
    }
    
    
    
}
