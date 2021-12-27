using System;
using System.Configuration;
using System.Collections.Generic;

// Каждый документ — это список токенов. То есть List<string>.
// Вместо этого будем использовать псевдоним DocumentTokens.
// Это поможет избежать сложных конструкций:
// вместо List<List<string>> будет List<DocumentTokens>
using DocumentTokens = System.Collections.Generic.List<string>;
using System.Linq;

namespace Antiplagiarism
{
    public class LevenshteinCalculator
    {
        public List<ComparisonResult> CompareDocumentsPairwise(List<DocumentTokens> documents)
        {
            var r = new List<ComparisonResult>();
            for (int i = 0; i < documents.Count; i++)
                for (int j = i + 1; j < documents.Count; j++)
                    r.Add(Dist(documents[i], documents[j]));
            return r;
        }
        public ComparisonResult Dist(DocumentTokens f, DocumentTokens s)
        {
            var a = new double[f.Count + 1, s.Count + 1];
            for (int i = 0; i <= f.Count; i++) a[i, 0] = i;
            for (int i = 0; i <= s.Count; i++) a[0, i] = i;
            for (int i = 1; i <= f.Count; i++)
                for (int j = 1; j <= s.Count; j++)
                {
                    if (TokenDistanceCalculator.GetTokenDistance(f[i - 1], s[j - 1]) == 0)  a[i, j] = a[i - 1, j - 1];
                    else  a[i, j] = new[] { a[i - 1, j] + 1, a[i, j - 1] + 1,  a[i - 1, j - 1] +  TokenDistanceCalculator.GetTokenDistance(f[i - 1], s[j - 1]) }.Min();
                }
            return new ComparisonResult(f, s, a[f.Count, s.Count]);
        }
    }
}

