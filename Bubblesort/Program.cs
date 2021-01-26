using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bubblesort
{
    class Program
    {
        /*
         * Programmname: Test Bubblesort
         * Autor: Tabea Pieper
         * 
         * Aufgabenstellung eines Kollegen:
         * Schreibe ein Programm in dem die Zahlen eines Arrays der größe nach sortiert werden.
         * Dabei darf keine Methode und kein Hilfsarray genutzt werden.
         * 
         */

        static void Main(string[] args)
        {
            // Testarray erstellen
            int[] testArray = { 9, 3, 19, 2, 31, 25, 45, 1 };

            // Ausgabe Array unsortiert
            Console.WriteLine("Ausgabe Array unsortiert:");
            for (int i = 0; i < testArray.Length; i++)
            {
                Console.Write(testArray[i] + ", ");
            }


            /* Jeder Index wird mit dem nächsten Index des Arrays verglichen.
             * Ist der Vorherige größer, so werden die Positionen getauscht.
             * Die Überprüfung aller Indizes wird so oft wiederholt, wie das Array lang ist.
             */
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

            // Ausgabe Array sortiert
            Console.WriteLine("\nAusgabe Array sortiert:");
            // Ausgabe sortiert
            for (int i = 0; i < testArray.Length; i++)
            {
                Console.Write(testArray[i] + ", ");
            }


            // Andere Möglichkeit alle Elemente eines Arrays auszugeben

            //foreach (int wert in testArray)
            //{
            //    Console.Write(wert + ", ");
            //}
            //Console.WriteLine("\n");

        }
    }
}
