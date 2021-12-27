using System.Collections.Generic;

namespace Antiplagiarism
{
    public static class TokenDistanceCalculator
    {
        // Считаем коэффициент Жаккара (https://en.wikipedia.org/wiki/Jaccard_index)
        // Расстояние между токенами: (1 — Jaccard_index)
        // Используйте в LevenshteinCalculator
        public static double GetTokenDistance(string word1, string word2)
        {
            var commonSymbols = new HashSet<char>(word1);
            commonSymbols.IntersectWith(new HashSet<char>(word2));
            var allLetters = new HashSet<char>(word1);
            allLetters.UnionWith(new HashSet<char>(word2));
            return 1 - commonSymbols.Count / (double) allLetters.Count;
        }
    }
}