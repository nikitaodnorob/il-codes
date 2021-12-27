using System.Collections.Generic;

namespace TextAnalysis
{
    static class FrequencyAnalysisTask
    {
        class Pair
        {
            public Pair(string word)
            {
                Word = word;
            }
            public string Word { get; set; }
            public int Count { get; set; } = 1;
        }

        static Dictionary<string, List<Pair>> counts;
        public static Dictionary<string, string> GetMostFrequentNextWords(List<List<string>> text)
        {
            counts = new Dictionary<string, List<Pair>>();
            foreach (var words in text)
            {
                for (int i = 0; i < words.Count - 1; i++)
                {
                    if (i < words.Count - 2)
                    {
                        string threeKey = words[i] + " " + words[i + 1];
                        string threeWord = words[i + 2];
                        AddGramm(threeKey, threeWord);
                    }
                    string twoKey = words[i];
                    string twoWord = words[i + 1];
                    AddGramm(twoKey, twoWord);
                }
            }
            return FindFrequencies();
        }

        public static void AddGramm(string key, string word)
        {
            if (counts.ContainsKey(key))
            {
                foreach (var pair in counts[key])
                {
                    if (pair.Word == word)
                    {
                        pair.Count++;
                        return;
                    }
                }
                counts[key].Add(new Pair(word));
            }
            else
            {
                counts.Add(key, new List<Pair>()
                {
                    new Pair(word)
                });
            }
        }

        public static Dictionary<string, string> FindFrequencies()
        {
            var result = new Dictionary<string, string>();
            foreach (var gramm in counts)
            {
                if (gramm.Value.Count == 1)
                {
                    result.Add(gramm.Key, gramm.Value[0].Word);
                }
                else
                {
                    Pair best = gramm.Value[0];
                    foreach (var current in gramm.Value)
                    {
                        if (current.Count >= best.Count)
                        {
                            if (best.Count == current.Count)
                            {
                                if (string.CompareOrdinal(best.Word, current.Word) > 0)
                                {
                                    best = current;
                                }
                            }
                            else
                            {
                                best = current;
                            }
                        }
                    }
                    result.Add(gramm.Key, best.Word);
                }
            }
            return result;
        }
    }
}