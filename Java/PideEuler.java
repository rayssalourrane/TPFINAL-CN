
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Rayssa Lourrane
 */
public class PideEuler {
    public static Scanner scanner = new Scanner(System.in);
	
	public static int sentinel = 0;	
	public static int lePositivoInt() {
		while (true) {
			System.out.print("Digite o inteiro positivo: ");
			
			while (!scanner.hasNextInt()) {
				scanner.next();
				System.out.print("Este nÃ£o Ã© um inteiro. Digite novamente: ");  ;;
			}
			
			int input = scanner.nextInt();
			if (input > 0)
				return input;
			else
				System.out.println("Valor negativo. Digite novamente");
		}
	}
	public static double aproximadoPi(int k) {
		double quadradoinverso = 0;
		for (int counter=1; counter<=k; counter++)
			quadradoinverso += (1.0/(counter*counter));
		return Math.sqrt(6 * quadradoinverso);
	}
	
	public static void main(String[] args) {
                long tempoInicial = System.currentTimeMillis();
                    int k = lePositivoInt();
                    double pi = aproximadoPi(k);
                long tempoFinal = System.currentTimeMillis();
  
             System.out.println(tempoFinal - tempoInicial);

		//System.out.printf("Os primeiros %d termos encontrados por pi é igual a %f.\n",k,pi);
		//System.out.printf("Este  %f%% o valor atual.\n",100*pi/Math.PI);
	}
    
}
