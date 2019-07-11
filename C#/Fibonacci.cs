using System;
using System.Collections.Generic;

namespace Fibonacci
{
    class TestaFibonacci
    {
       
        public static void Main()
        {
            Console.WriteLine("Digite o termo ao qual você deseje o número Fibonacci: ");
            
            int number = Convert.ToInt32(Console.ReadLine());
           
            Console.WriteLine(Fibonacci(number));
            
            Console.ReadKey();
        }

        static int Fibonacci(int x)
        {
            
            if (x <= 1)
            {
                return 1;
            }            
            return Fibonacci(x – 1) + Fibonacci(x – 2);
        }
    }
}
