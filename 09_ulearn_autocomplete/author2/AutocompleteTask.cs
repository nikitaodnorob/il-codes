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
            var index = LeftBorderTask.GetLeftBorderIndex(phrases, prefix, -1, phrases.Count) + 1;
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
            // тут стоит использовать написанный ранее класс LeftBorderTask
            var phrasesCount = phrases.Count;
            var leftBorder = LeftBorderTask.GetLeftBorderIndex(phrases, prefix, -1, phrasesCount) + 1;

            if ((LeftBorderTask.GetLeftBorderIndex(phrases, prefix, -1, phrasesCount) + 1) == phrasesCount)
            {
                return new string[0];
            }

            var actualCount = Math.Min(count, phrasesCount - LeftBorderTask.GetLeftBorderIndex(phrases, prefix, -1, phrasesCount) + 1);

            var result = new List<string>();
            var nextPhraseIndex = 0;

            for (var i = 0; i < actualCount; i++)
            {
                nextPhraseIndex = LeftBorderTask.GetLeftBorderIndex(phrases, prefix, -1, phrasesCount) + 1 + i;

                if (!phrases[nextPhraseIndex].StartsWith(prefix, StringComparison.OrdinalIgnoreCase))
                    break;

                result.Add(phrases[nextPhraseIndex]);
            }

            return result.ToArray();

          
        }

        /// <returns>
        /// Возвращает количество фраз, начинающихся с заданного префикса
        /// </returns>
        public static int GetCountByPrefix(IReadOnlyList<string> phrases, string prefix)
        {
            // тут стоит использовать написанные ранее классы LeftBorderTask и RightBorderTaskx
            var res = RightBorderTask.GetRightBorderIndex(phrases, prefix, -1, phrases.Count) - LeftBorderTask.GetLeftBorderIndex(phrases, prefix, -1, phrases.Count) - 1;
            return (res <= 0) ? 0 : res;
        }
    }

    [TestFixture]
    public class AutocompleteTests
    {
        [Test]
        public void TopByPrefix_IsEmpty_WhenNoPhrases()
        {
            var phrases = new List<string>();
            var result = AutocompleteTask.GetTopByPrefix(phrases, "q", 0);
            CollectionAssert.IsEmpty(result);
            //CollectionAssert.IsEmpty(actualTopWords);
        }
        [Test]
        public void TopByPrefix_IsEmpty_WhenNoPhrases_AndCountIsGreaterThanZero()
        {
            var phrases = new List<string>();
            var result = AutocompleteTask.GetTopByPrefix(phrases, "q", 5);
            CollectionAssert.IsEmpty(result);
        }

        [Test]
        public void TopByPrefix_IsEmpty_WhenPhrasesNotContainPrefix_AndCountIsZero()
        {
            var phrases = new List<string>() { "nig", "nigg", "nigga" };
            var result = AutocompleteTask.GetTopByPrefix(phrases, "a", 0);
            CollectionAssert.IsEmpty(result);
        }

        [Test]
        public void TopByPrefix_IsEmpty_WhenPhrasesNotContainPrefix_AndCountIsGreaterThanZero()
        {
            var phrases = new List<string>() { "nig", "nigg", "nigga" };
            var result = AutocompleteTask.GetTopByPrefix(phrases, "a", phrases.Count);
            CollectionAssert.IsEmpty(result);
        }

        [Test]
        public void TopByPrefix_IsEmpty_WhenPhrasesContainPrefix_AndCountIsZero()
        {
            var phrases = new List<string>() { "nig", "nigg", "nigga" };
            var result = AutocompleteTask.GetTopByPrefix(phrases, "n", 0);
            CollectionAssert.IsEmpty(result);
        }

        [Test]
        public void CountByPrefix_IsTotalCount_WhenEmptyPrefix()
        {
            var phrases = new List<string>() { "nig", "nigga", "nigger", "niggeroid" };
            var expected = new List<string>() { "nig", "nigga" };
          
            var result = AutocompleteTask.GetTopByPrefix(phrases, "ni", expected.Count);
            Assert.AreEqual(expected.Count, result.Length);
            CollectionAssert.AreEqual(expected, result);
            //Assert.AreEqual(expectedCount, actualCount);
        }

        [Test]
        public void TopByPrefix_IsTotalCount_WhenPhrasesContainPrefix_AndCountIsGreaterThanTotal()
        {
            var phrases = new List<string>() { "nig", "nigg", "nigga" };
            var totalCount = phrases.Count;
            var result = AutocompleteTask.GetTopByPrefix(phrases, "n", 42);
            Assert.AreEqual(totalCount, result.Length);
            CollectionAssert.AreEqual(phrases, result);
        }

        [Test]
        public void CountByPrefix_IsZero_WhenNoPhrases()
        {
            var phrases = new List<string>();
            var result = AutocompleteTask.GetCountByPrefix(phrases, "q");
            Assert.AreEqual(0, result);
        }

        [Test]
        public void CountByPrefix_IsZero_WhenNoEntries()
        {
            var phrases = new List<string>() { "a", "hitler", "super", "test" };
            var result = AutocompleteTask.GetCountByPrefix(phrases, "hitla");
            Assert.AreEqual(0, result);
        }

        [Test]
        public void CountByPrefix_IsN_WhenHaveNEntries()
        {
            var phrases = new List<string>() { "alrite", "another", "hitler", "hitt" };
            var n = 2;
            var result = AutocompleteTask.GetCountByPrefix(phrases, "hit");
            Assert.AreEqual(n, result);
        }
        [Test]
        public void CountByPrefix_IsTotalCount_WhenAllPhrasesContainPrefix()
        {
            var phrases = new List<string>() { "he", "hell", "hello", "help" };
            var totalCount = phrases.Count;
            var result = AutocompleteTask.GetCountByPrefix(phrases, "he");
            Assert.AreEqual(totalCount, result);
        }
    }
}

