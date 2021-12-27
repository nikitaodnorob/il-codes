using System;
using System.Collections.Generic;


// Каждый документ — это список токенов. То есть List<string>.
// Вместо этого будем использовать псевдоним DocumentTokens.
// Это поможет избежать сложных конструкций:
// вместо List<List<string>> будет List<DocumentTokens>
using DocumentTokens = System.Collections.Generic.List<string>;

namespace Antiplagiarism
{
    public class LevenshteinCalculator
    {
        private static void doStep(DocumentTokens first, DocumentTokens second, int i, int j, double[,] dp)
        {
            double distance = TokenDistanceCalculator.GetTokenDistance(first[i - 1], second[j - 1]);

            dp[i, j] = distance > 0
                ? Math.Min(
                    dp[i - 1, j] + 1,
                    Math.Min(dp[i, j - 1] + 1, dp[i - 1, j - 1] + distance)
                )
                : dp[i - 1, j - 1];
        }

        public List<ComparisonResult> CompareDocsPairwise(List<DocumentTokens> docs)
        {
            var res = new List<ComparisonResult>();
            for (int i = 0; i < docs.Count; ++i)
                for (int j = i + 1; j < docs.Count; ++j)
                    res.Add(GetLevensteinDistance(docs[i], docs[j]));
            return res;
        }

        private static void InitDP(DocumentTokens first, DocumentTokens second, double[,] dd)
        {
            for (int i = 0; i <= first.Count; ++i)
                dd[i, 0] = i;
            for (int j = 0; j <= second.Count; ++j)
                dd[0, j] = j;
        }

        public ComparisonResult GetLevensteinDistance(DocumentTokens first, DocumentTokens second)
        {
            var (cnt1, cnt2) = (first.Count, second.Count);
            var dd = new double[cnt1 + 1, cnt2 + 1];
            InitDP(first, second, dd);

            for (int i = 0; i < cnt1; ++i)
                for (int j = 0; j < cnt2; ++j)
                    doStep(first, second, i + 1, j + 1, dd);

            return new ComparisonResult(first, second, dd[cnt1, cnt2]);
        }
    }
}
