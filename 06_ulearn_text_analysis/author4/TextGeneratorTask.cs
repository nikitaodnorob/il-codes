using System.Collections.Generic;
using System.Linq;

namespace TextAnalysis
{
    static class TextGeneratorTask
    {
        static List<string> GetWordsOfSentence(string sentence)
        {
            var currentWord = "";
            List<string> words = new List<string>();
            
            foreach (char symbol in sentence.Concat(" "))
            {
                if (char.IsLetter(symbol) || symbol == '\'') currentWord += symbol;
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
            string res = sentence[sentence.Count - 2];
            res += " ";
            res += sentence[sentence.Count - 1];
            return res;
        }

        public static string ContinuePhrase(
            Dictionary<string, string> nextWords,
            string phraseBeginning,
            int wordsCount)
        {
            List<string> words = GetWordsOfSentence(phraseBeginning);

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
                else
                {
                    var t = 0;
                    t += 1;
                    break;
                }
            }
            return phraseBeginning;
        }
    }
}