using NUnit.Framework.Constraints;
using System.Collections.Generic;
using System.Linq;

namespace TextAnalysis
{
    using GramsType = Dictionary<string, Dictionary<string, int>>;
    static class FrequencyAnalysisTask
    {
        static void AddGrammToRes(GramsType gramms, string curGramm, string nextGramm)
        {
            if (!gramms.ContainsKey(curGramm))
            {
                gramms.Add(curGramm, new Dictionary<string, int>());
                gramms[curGramm].Add(nextGramm, 1);
            }
            else
            {
                if (!gramms[curGramm].ContainsKey(nextGramm))
                    gramms[curGramm][nextGramm] = 1;
                else gramms[curGramm][nextGramm]++;
            }
        }

        static void ProcessGramm2(GramsType gramms, List<string> sentence, int wordIndex)
        {
            if (wordIndex >= sentence.Count - 1)
                return;

            string curWord = sentence[wordIndex];
            string nextWord = sentence[wordIndex + 1];

            AddGrammToRes(gramms, curWord, nextWord);
        }

        static void ProcessGramm3(GramsType gramms, List<string> sentence, int wordIndex)
        {
            if (wordIndex >= sentence.Count - 2)
                return;

            string curGramm = sentence[wordIndex] + " " + sentence[wordIndex + 1];
            string nextWord = sentence[wordIndex + 2];

            AddGrammToRes(gramms, curGramm, nextWord);
        }

        static string GetMostFreqGramm(Dictionary<string, int> gramms)
        {
            int mostFreq = gramms.OrderByDescending(pair => pair.Value).First().Value;
            var candidates = gramms.Where(pair => pair.Value == mostFreq).Select(pair => pair.Key).ToList();

            candidates.Sort((string x, string y) => string.CompareOrdinal(x, y));

            return candidates[0];
        }

        public static Dictionary<string, string> GetMostFrequentNextWords(List<List<string>> text)
        {
            var gramms = new GramsType();

            foreach (var sentence in text)
                for (int i = 0; i < sentence.Count; i++)
                {
                    ProcessGramm2(gramms, sentence, i);
                    ProcessGramm3(gramms, sentence, i);
                }

            var result = new Dictionary<string, string>();

            foreach (var grammPair in gramms)
            {
                if (grammPair.Value.Count > 0)
                    result.Add(grammPair.Key, GetMostFreqGramm(grammPair.Value));
            }

            return result;
        }
    }
}