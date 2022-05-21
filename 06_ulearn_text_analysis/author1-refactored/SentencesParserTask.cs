using System.Collections.Generic;
using System.Linq;

namespace TextAnalysis
{
    static class SentencesParserTask
    {
        static List<string> GetWordsFromSentence(string sentence)
        {
            var words = new List<string>();

            string currentWord = "";
            foreach (char c in sentence.Concat(" "))
            {
                if (!(char.IsLetter(c) || c == '\''))
                {
                    if (currentWord.Length > 0) words.Add(currentWord.ToLower());
                    currentWord = "";
                }
                else currentWord += c;
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

                List<string> newWords = GetWordsFromSentence(sentence);
                if (newWords.Count > 0) sentencesList.Add(newWords);
            }

            return sentencesList;
        }
    }
}