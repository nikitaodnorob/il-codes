using System;
using System.Collections.Generic;

namespace Antiplagiarism
{
    public class LongestCommonSubsequenceCalculator
    {
        private static LongestCommonSubsequenceCalculator? instance = null;
        
        private LongestCommonSubsequenceCalculator() { }

        public static LongestCommonSubsequenceCalculator GetInstance()
        {
            if (instance == null) instance = new LongestCommonSubsequenceCalculator();
            return instance;
        }
        
        public static List<string> Calculate(List<string> first, List<string> second)
        {
            var dp = CreateOptimizationTable(first, second);
            return RestoreAnswer(dp, first, second);
        }

        static int MakeStep(int[,] dp, List<string> first, List<string> second, int i, 
            ref int j, List<string> res)
        {
            double d = TokenDistanceCalculator.GetTokenDistance(first[i], second[j]);
            if (d != 0 && dp[i + 1, j] == dp[i, j])
                return ++i;

            if (d == 0)
            {
                res.Add(first[i]);
                ++i;
            }

            ++j;
            return i;
        }

        static List<string> RestoreAnswer(int[,] dp, List<string> first, List<string> second)
        {
            List<string> result = new List<string>();
            int i = 0, j = 0;
            while (i < first.Count && j < second.Count && dp[i, j] != 0)
                i = MakeStep(dp, first, second, i, ref j, result);

            return result;
        }

        static int[,] CreateOptimizationTable(List<string> first, List<string> second)
        {
            var dp = new int[first.Count + 1, second.Count + 1];

            for (int i = first.Count - 1; i >= 0; --i)
                for (int j = second.Count - 1; j >= 0; --j)
                    dp[i, j] = TokenDistanceCalculator.GetTokenDistance(first[i], second[j]) > 0
                        ? dp[i, j] = Math.Max(dp[i + 1, j], dp[i, j + 1])
                        : dp[i, j] = dp[i + 1, j + 1] + 1;

            return dp;
        }
    }
}