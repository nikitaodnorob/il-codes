using System;
using System.Collections.Generic;
using System.Linq;
using NUnit.Framework;

namespace Autocomplete
{
    internal class AutocompleteTask
    {
        /// <returns>
        /// Возвращает первую фразу словаря, начинающуюся с prefix.
        /// </returns>
        /// <remarks>
        /// Эта функция уже реализована, она заработает, 
        /// как только вы выполните задачу в файле LeftBorderTask
        /// </remarks>
        public static string FindFirstByPrefix(IReadOnlyList<string> phrases, string prefix)
        {
            var index = LeftBorderTask.ObtainLeftBorderIndex(phrases, prefix, -1, phrases.Count) + 1;
            if (index < phrases.Count && phrases[index].StartsWith(prefix, StringComparison.OrdinalIgnoreCase))
                return phrases[index];
            
            return null;
        }

        /// <returns>
        /// Возвращает первые в лексикографическом порядке count (или меньше, если их меньше count) 
        /// элементов словаря, начинающихся с prefix.
        /// </returns>
        /// <remarks>Эта функция должна работать за O(log(n) + count)</remarks>
        public static string[] GetTopByPrefix(IReadOnlyList<string> phrases, string prefix, int count)
        {
            int actualCount = Math.Min(GetCountByPrefix(phrases, prefix), count);
            int startIndex = LeftBorderTask.ObtainLeftBorderIndex(phrases, prefix, -1, phrases.Count) + 1;
            return phrases.Skip(startIndex).Take(actualCount).ToArray();
        }

        /// <returns>
        /// Возвращает количество фраз, начинающихся с заданного префикса
        /// </returns>
        public static int GetCountByPrefix(IReadOnlyList<string> phrases, string prefix)
        {
            int left = LeftBorderTask.ObtainLeftBorderIndex(phrases, prefix, -1, phrases.Count);
            int right = RightBorderTask.ObtainRightBorderIndex(phrases, prefix, -1, phrases.Count);
            return right - left - 1;
        }
    }

    [TestFixture]
    public class AutocompleteTests
    {
        [Test]
        public void TopByPrefix_IsEmpty_WhenNoPhrases()
        {
            var phrases = new List<string> { "a", "ab", "abc", "b" };
            var prefix = "c";
            var count = 2;
            var expectedResult = Array.Empty<string>();
            var result = AutocompleteTask.GetTopByPrefix(phrases, prefix, count);
            Assert.AreEqual(expectedResult, result);
        }

        // ...

        [Test]
        public void CountByPrefix_IsTotalCount_WhenEmptyPrefix()
        {
            var phrases = new List<string> { "a", "ab", "abc", "b" };
            var prefix = "c";
            var expectedResult = 0;
            var result = AutocompleteTask.GetCountByPrefix(phrases, prefix);
            Assert.AreEqual(expectedResult, result);
        }

        // ...
    }
}
