using System;
using System.Collections.Generic;
using System.Linq;

namespace Autocomplete
{
    // Внимание!
    // Есть одна распространенная ловушка при сравнении строк: строки можно сравнивать по-разному:
    // с учетом регистра, без учета, зависеть от кодировки и т.п.
    // В файле словаря все слова отсортированы методом StringComparison.OrdinalIgnoreCase.
    // Во всех функциях сравнения строк в C# можно передать способ сравнения.
    public class LeftBorderTask
    {
        
        public static int GetLeftBorderIndex(IReadOnlyList<string> phrases, string prefix, int left, int right)
        {
            // IReadOnlyList похож на List, но у него нет методов модификации списка.
            // Этот код решает задачу, но слишком неэффективно. Замените его на бинарный поиск!
              if (right - left <= 1)
            return left;
            var middle = (left + right) / 2;
            {
                if (string.Compare(prefix, phrases[middle], StringComparison.OrdinalIgnoreCase) < 0
                    || phrases[middle].StartsWith(prefix, StringComparison.OrdinalIgnoreCase))
                    return GetLeftBorderIndex(phrases, prefix, left, middle);
            }
            return GetLeftBorderIndex(phrases, prefix, middle, right);
        }
    }
}
