using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Antiplagiarism
{
    public class DocumentContent
    {
        public string DocumentName;
        private readonly List<string> textWithWhiteSpaces;
        public List<string> Tokens;

        public DocumentContent(string documentName)
        {
            var text = File.ReadAllText(documentName);
            textWithWhiteSpaces = Tokenizer.Tokenize(text).ToList();
            Tokens = textWithWhiteSpaces
                .Where(token => token.All(c => !char.IsWhiteSpace(c)))
                .ToList();
            DocumentName = Path.GetFileNameWithoutExtension(documentName);
        }

        public IEnumerable<Tuple<string, TokenType>> DevideToCommonAndSpecificTokens(List<string> commonTokens)
        {
            int k = 0;
            foreach (var token in textWithWhiteSpaces)
            {
                if (k != commonTokens.Count && token == commonTokens[k])
                {
                    yield return Tuple.Create(token, TokenType.Common);
                    ++k;
                }
                else
                {
                    yield return Tuple.Create(token, TokenType.Specific);
                }
             }
        }
    }
}