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
                return "now";

            var dict = new Dictionary<string, int>();
            dict.Add("year", seconds / 31536000);
            dict.Add("day", seconds / 86400 % 365);
            dict.Add("hour", seconds / 3600 % 24);
            dict.Add("minute", seconds / 60 % 60);
            dict.Add("second", seconds % 60);

            var strs = dict.Where(kv => kv.Value > 0)
                                    .Select(kv => kv.Value + " " + kv.Key + (kv.Value > 1 ? "s" : ""));

            if (strs.Count() > 1)
                return string.Join(", ", strs.Take(strs.Count() - 1)) + " and " + strs.Last();
            return strs.First();
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
