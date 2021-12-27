using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    public class HumanTimeFormat
    {
        public static string formatDuration(int seconds)
        {
            if (seconds == 0)
            {
                return "now";
            }

            var time = TimeSpan.FromSeconds(seconds);
            var timesList = new string[]{
      MultipleFormat("year", time.Days / 365),
      MultipleFormat("day", time.Days % 365),
      MultipleFormat("hour", time.Hours),
      MultipleFormat("minute", time.Minutes),
      MultipleFormat("second", time.Seconds)
    };
            var list = timesList.Where(x => x != string.Empty).ToList();

            if (list.Count == 1)
            {
                return list.First();
            }

            var firstPart = string.Join(", ", list.Take(list.Count - 1));

            return $"{firstPart} and {list.Last()}";
        }

        private static string MultipleFormat(string measure, double count)
        {
            var c = (int)count;
            if (measure == string.Empty || c == 0)
            {
                return string.Empty;
            }
            if (c != 1)
            {
                measure = measure + "s";
            }
            return $"{c} {measure}";
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Console.Write(HumanTimeFormat.formatDuration(0));
        }
    }
}
