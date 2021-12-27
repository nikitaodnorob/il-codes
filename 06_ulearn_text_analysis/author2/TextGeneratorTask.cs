using System.Collections.Generic;

namespace TextAnalysis
{
    static class TextGeneratorTask
    {
        public static string ContinuePhrase(
            Dictionary<string, string> nextWords,
            string phraseBeginning,
            int wordsCount)
        {
            if (nextWords.Count == 0 || wordsCount == 0)
            {
                return phraseBeginning;
            }
            var words = phraseBeginning.Trim(' ').Split(' ');
            int currentWordsCount = words.Length;
            string grammKey;
            if (currentWordsCount > 1 && nextWords.ContainsKey(grammKey = words[currentWordsCount - 2] + 
                " " + words[currentWordsCount - 1]) && nextWords.ContainsKey(grammKey))
            {
                phraseBeginning += " " + nextWords[grammKey];
                wordsCount--;
            } 
            else
            {
                grammKey = words[words.Length - 1];
                if (nextWords.ContainsKey(grammKey))
                {
                    phraseBeginning += " " + nextWords[grammKey];
                    wordsCount--;
                }
                else
                {
                    return phraseBeginning;
                }
            }
            if (wordsCount > 0)
            {
                return ContinuePhrase(nextWords, phraseBeginning, wordsCount);
            }
            else return phraseBeginning;
        }
    }
}