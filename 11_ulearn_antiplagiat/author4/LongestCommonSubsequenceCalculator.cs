using System;
using System.Collections.Generic;

namespace Antiplagiarism
{
    public static class LongestCommonSubsequenceCalculator
    {
        public static List<string> Calculate(List<string> first, List<string> second)
        {
            return RestoreAnswer(CreateOptimizationTable(first, second), first, second);
        }

        static int MakeStep(int[,] dd, List<string> first, List<string> second, int i, 
            ref int j, List<string> res)
        {
            double d = TokenDistanceCalculator.GetTokenDistance(first[i], second[j]);
            if (d != 0 && dd[i + 1, j] == dd[i, j])
                return ++i;

            if (d == 0)
            {
                res.Add(first[i++]);
            }

            ++j;
            return i;
        }

        static List<string> RestoreAnswer(int[,] dd, List<string> first, List<string> second)
        {
            int i = 0;
            int j = 0;
            List<string> result = new List<string>();
            while (i < first.Count && j < second.Count && dd[i, j] != 0)
                i = MakeStep(dd, first, second, i, ref j, result);

            return result;
        }

        static int[,] CreateOptimizationTable(List<string> first, List<string> second)
        {
            var dd = new int[first.Count + 1, second.Count + 1];

            for (int i = first.Count - 1; i >= 0; --i)
                for (int j = second.Count - 1; j >= 0; --j) {
                    var fst = first[i];
                    var snd = second[j];
                    bool cond = TokenDistanceCalculator.GetTokenDistance(fst, snd) > 0;
                    dd[i, j] = cond
                        ? dd[i, j] = Math.Max(dd[i + 1, j], dd[i, j + 1])
                        : dd[i, j] = dd[i + 1, j + 1] + 1;
                    }

            return dd;
        }
    }
}