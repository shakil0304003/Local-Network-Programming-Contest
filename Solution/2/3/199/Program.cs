using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Below_Average
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            List<Int64> test = new List<Int64>();
            long cas = 0;
            while (input != null)
            {
                string[] marks = input.Split(' ');

                int number = Convert.ToInt16(marks[0]);
                int count = 0;
                double avarage = 0;

                for (int i = 1; i <= number; i++)
                    avarage += Convert.ToDouble(marks[i]);

                avarage = avarage / number;

                for (int i = 1; i <= number; i++)
                    if (avarage > Convert.ToDouble(marks[i]))
                        count++;
                
                for (long i = 0; i <= 3000000000; i++)
                {
                  //  test.Add(i);
                }
                
                cas++;

                avarage = count;
                avarage = avarage / number;
                avarage *= 100.0;

                Console.WriteLine(avarage + "%");
                input = Console.ReadLine();
            }
        }
    }
}
