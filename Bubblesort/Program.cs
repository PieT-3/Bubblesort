using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bubblesort
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] testArray = { 9, 3, 19, 2, 31, 25, 45, 1 };

            //Ausgabe unsortiert
            Console.WriteLine("Ausgabe Array unsortiert:");
            for (int i = 0; i < testArray.Length; i++)
            {
                Console.Write(testArray[i] + ", ");
            }


            // Vergleiche i mit i + 1
            for (int j = 0; j < testArray.Length; j++)
            {
                for (int i = 0; i < testArray.Length - 1; i++)
                {
                    if (testArray[i] > testArray[i + 1])
                    {
                        int hilfsvariable;

                        hilfsvariable = testArray[i + 1];
                        testArray[i + 1] = testArray[i];
                        testArray[i] = hilfsvariable;
                    }
                }
            }

            Console.WriteLine("\nAusgabe Array sortiert:");
            // Ausgabe sortiert
            for (int i = 0; i < testArray.Length; i++)
            {
                Console.Write(testArray[i] + ", ");
            }

            foreach (int wert in testArray)
            {
                Console.Write(wert + ", ");
            }
            Console.WriteLine("\n");

        }
    }
}
