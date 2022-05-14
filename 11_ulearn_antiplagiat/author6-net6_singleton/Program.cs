using Antiplagiarism;

namespace Rectangles
{
    public static class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            var c1 = LevenshteinCalculator.GetInstance();
            var c2 = LongestCommonSubsequenceCalculator.GetInstance();
        }
    }
}