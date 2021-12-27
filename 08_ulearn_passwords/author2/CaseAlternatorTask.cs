using System;
using System.Collections.Generic;
using System.Linq;

namespace Passwords
{
	public class CaseAlternatorTask
	{
		public static List<string> AlternateCharCases(string lowercaseWord)
		{
			var result = new List<string>();
			AlternateCharCases(lowercaseWord.ToCharArray(), 0, result);
			return result;
		}

		static void AlternateCharCases(char[] word, int startIndex, List<string> result)
		{
			if (word.Length == 0)
				return;
			if (startIndex <= word.Length-1)
			{
				if (char.IsLetter(word[startIndex]))
				{
					word[startIndex] = char.ToLower(word[startIndex]);
					AlternateCharCases(word, startIndex + 1, result);
					word[startIndex] = char.ToUpper(word[startIndex]);
					AlternateCharCases(word, startIndex + 1, result);
				}
				else
					AlternateCharCases(word, startIndex + 1, result);
				
			}
			string wordNewNext = new string(word);
			if (!result.Contains(wordNewNext))
			{
				result.Add(wordNewNext);
			}
		}
	}
}