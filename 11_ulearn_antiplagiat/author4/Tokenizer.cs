using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

namespace Antiplagiarism
{
    public static class Tokenizer
    {
        private static readonly Regex regex = new Regex(@"(\w+)|(\r?\n)|(.)", RegexOptions.IgnorePatternWhitespace);

        public static IEnumerable<string> Tokenize(string text)
        {
            foreach (Match match in regex.Matches(text))
            {
                if (match.Success)
                    yield return match.Value;
            }
        }
    }
}