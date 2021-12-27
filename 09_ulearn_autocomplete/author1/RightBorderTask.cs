using System;
using System.Collections.Generic;

namespace Autocomplete
{
    public class RightBorderTask
    {
        /// <returns>
        /// Возвращает индекс правой границы. 
        /// То есть индекс минимального элемента, который не начинается с prefix и большего prefix.
        /// Если такого нет, то возвращает items.Length
        /// </returns>
        /// <remarks>
        /// Функция должна быть НЕ рекурсивной
        /// и работать за O(log(items.Length)*L), где L — ограничение сверху на длину фразы
        /// </remarks>
        public static int GetRightBorderIndex(IReadOnlyList<string> phrases, string prefix, int left, int right)
        {
            while (right > left + 1)
            {
                int middle = left + (right - left) / 2;
                if (phrases[middle].StartsWith(prefix) ||
                    string.Compare(prefix, phrases[middle], StringComparison.OrdinalIgnoreCase) >= 0)
                    left = middle;
                else right = middle;
            }
            return right;
        }
    }
}