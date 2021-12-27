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

            var values = new Dictionary<string, int>()
      {
          { "year", seconds / (60 * 60 * 24 * 365) },
          { "day", seconds / (60 * 60 * 24) % 365 },
          { "hour", seconds / (60 * 60) % 24 },
          { "minute", seconds / 60 % 60 },
          { "second", seconds % 60 },
      };

            var formattedValues =
                values.Where(x => x.Value > 0)
                .Select(x => string.Format("{0} {1}{2}", x.Value, x.Key, x.Value > 1 ? "s" : ""))
                .ToArray();

            if (formattedValues.Length == 1)
            {
                return formattedValues.First();
            }

            var joinedValues =
                String.Join(", ", formattedValues, 0, formattedValues.Length - 1)
                + (formattedValues.Length > 1
                ? " and " + formattedValues.LastOrDefault()
                : "");

            return joinedValues;
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
