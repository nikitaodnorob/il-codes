using System.Collections.Generic;
using System.Linq;

namespace TextAnalysis
{
    static class TextGeneratorTask
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

        static string GetLastTwoWords(List<string> sentence)
        {
            return sentence[sentence.Count - 2] + " " + sentence[sentence.Count - 1];
        }

        public static string ContinuePhrase(
            Dictionary<string, string> nextWords,
            string phraseBeginning,
            int wordsCount)
        {
            var words = GetWordsOfSentence(phraseBeginning);

            for (int i = 0; i < wordsCount; i++)
            {
                if (words.Count >= 2 && nextWords.ContainsKey(GetLastTwoWords(words)))
                {
                    var prevWords = GetLastTwoWords(words);
                    words.Add(nextWords[prevWords]);
                    phraseBeginning += " " + nextWords[prevWords];
                }
                else if (words.Count >= 1 && nextWords.ContainsKey(words[words.Count - 1]))
                {
                    var prevWord = words[words.Count - 1];
                    words.Add(nextWords[prevWord]);
                    phraseBeginning += " " + nextWords[prevWord];
                }
                else break;
            }
            return phraseBeginning;
        }
    }
}