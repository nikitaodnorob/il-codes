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
        private static void MakeStep(DocumentTokens first, DocumentTokens second, int i, int j, double[,] dp)
        {
            double d = TokenDistanceCalculator.GetTokenDistance(first[i - 1], second[j - 1]);

            dp[i, j] = d > 0
                ? Math.Min(
                    dp[i - 1, j] + 1,
                    Math.Min(dp[i, j - 1] + 1, dp[i - 1, j - 1] + d)
                )
                : dp[i - 1, j - 1];
        }

        public List<ComparisonResult> CompareDocumentsPairwise(List<DocumentTokens> documents)
        {
            var result = new List<ComparisonResult>();
            for (int i = 0; i < documents.Count; ++i)
                for (int j = i + 1; j < documents.Count; ++j)
                    result.Add(GetLevensteinDistance(documents[i], documents[j]));
            return result;
        }

        private static void InitDP(DocumentTokens first, DocumentTokens second, double[,] dp)
        {
            for (int i = 0; i <= first.Count; ++i)
                dp[i, 0] = i;
            for (int j = 0; j <= second.Count; ++j)
                dp[0, j] = j;
        }

        public ComparisonResult GetLevensteinDistance(DocumentTokens first, DocumentTokens second)
        {
            var (cnt1, cnt2) = (first.Count, second.Count);
            var dp = new double[cnt1 + 1, cnt2 + 1];
            InitDP(first, second, dp);

            for (int i = 0; i < cnt1; ++i)
                for (int j = 0; j < cnt2; ++j)
                    MakeStep(first, second, i + 1, j + 1, dp);

            return new ComparisonResult(first, second, dp[cnt1, cnt2]);
        }
    }
}
