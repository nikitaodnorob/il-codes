using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace TextAnalysis
{
    static class SentencesParserTask
    {

        public static List<List<string>> ParseSentences(string text)
        {
            var sentencesList = new List<List<string>>();
            var sentences = text.Split('.', '!', '?', ';', ':', '(', ')');
            var regex = new Regex(@"[^'a-zA-Z]+");
            foreach (var sentence in sentences)
            {
                List<string> words = new List<string>();
                var s = regex.Replace(sentence, " ").ToLower().Trim(' ');
                foreach (var w in s.Split(' '))
                {
                    if (string.IsNullOrEmpty(w))
                    {
                        continue;
                    }
                    else
                    {
                        words.Add(w);
                    }
                }
                if (words.Count > 0)
                {
                    sentencesList.Add(words);
                }
            }
            return sentencesList;

        }
    }
}

