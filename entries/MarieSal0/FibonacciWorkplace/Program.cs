using System; 
namespace FibonacciWorkplace
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.Write("How long should the Fibonacci Series be?? ");
            int lengthOfSeries = Convert.ToInt32(Console.ReadLine());
            if (lengthOfSeries<=2)
            {
                LengthCheck(lengthOfSeries);
            }
            FibonacciSeries(0, 1, 1, lengthOfSeries);
            Console.ReadKey();
        }
        public static void LengthCheck(int lengthOfSeries)
        {
            if (lengthOfSeries<=1)
            {
                Console.Write("The Fibonacci Series needs to be greater than 2");
                lengthOfSeries = Convert.ToInt32(Console.ReadLine());     
                LengthCheck(lengthOfSeries);      
            }
                
        }
        
        public static void FibonacciSeries(int firstNumber, int secondNumber, int counter, int lengthOfSeries)
        {
            Console.Write(firstNumber + " ");
            if (counter < lengthOfSeries)
            {
                int sum = firstNumber + secondNumber; 
                counter++;
                FibonacciSeries(secondNumber, sum, counter, lengthOfSeries);
            }
        }

        
    }
}