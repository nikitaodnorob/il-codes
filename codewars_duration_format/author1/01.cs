using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    using System;
    using System.Linq;

    public class HumanTimeFormat
    {
        static string formatPart(string part)
        {
            return int.Parse(part.Split(' ')[0]) > 1 ? part + 's' : part;
        }

        public static string formatDuration(int seconds)
        {
            if (seconds == 0) return "now";

            string[] answer = new string[] {
              $"{Math.Floor(seconds / 3600d / 24 / 365)} year",
              $"{Math.Floor(seconds / 3600d / 24) % 365} day",
              $"{Math.Floor(seconds / 3600d) % 24} hour",
              $"{Math.Floor(seconds / 60d) % 60} minute",
              $"{seconds % 60} second"
            };

            var parts = answer.Where(part => part[0] != '0').Select(formatPart).ToArray();
            return parts.Length == 1
                ? parts[0]
                : string.Join(", ", parts.Take(parts.Length - 1)) + " and " + parts.Last();
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
