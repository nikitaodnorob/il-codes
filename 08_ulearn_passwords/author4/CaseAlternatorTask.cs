using System;
using System.Collections.Generic;
using System.Linq;

namespace Passwords
{
    public class CaseAlternatorTask
    {
        //Тесты будут вызывать этот метод
        public static List<string> DoAlternationWithCharCases(string lowercasedWord)
        {
            var result = new List<string>();
            DoAlternationWithCharCases(lowercasedWord.ToCharArray(), 0, result);
            return result;
        }

        static void DoAlternationWithCharCases(char[] word, int startIndex, List<string> result)
        {
            if (startIndex != word.Length)
            {
                if (char.IsLetter(word[startIndex]) && word[startIndex] != char.ToUpper(word[startIndex]))
                {
                    DoAlternationWithCharCases(word, startIndex + 1, result);
                    word[startIndex] = char.ToUpper(word[startIndex]);
                }

                DoAlternationWithCharCases(word, startIndex + 1, result);
                word[startIndex] = char.ToLower(word[startIndex]);
            }
            else
                result.Add(new string(word));
        }
    }
}