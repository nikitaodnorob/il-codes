using System.Collections.Generic;
using System.Linq;

namespace TextAnalysis
{
    static class SentencesParserTask
    {
        static List<string> GetWordsOfSentence(string sentence)
        {
            var words = new List<string>();

            string currentWord = "";
            foreach (char c in sentence.Concat(" "))
            {
                if (char.IsLetter(c) || c == '\'') currentWord += c;
                else
                {
                    if (currentWord.Length > 0) words.Add(currentWord.ToLower());
                    currentWord = "";
                }
            }

            return words;
        }

        public static List<List<string>> ParseSentences(string text)
        {
            var sentencesList = new List<List<string>>();
            
            foreach (var sentence in text.Split('.', '?', '!', ';', ':', '(', ')'))
            {
                if (sentence.Length == 0)
                    continue;

                var words = GetWordsOfSentence(sentence);
                if (words.Count > 0) sentencesList.Add(words);
            }

            return sentencesList;
        }
    }
}