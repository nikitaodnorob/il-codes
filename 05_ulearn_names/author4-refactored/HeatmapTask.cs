using System;
using System.Linq;

namespace Names
{
    internal static class HeatmapTask
    {
        public static HeatmapData GetBirthsPerDateHeatmap(NameData[] names)
        {
            double[,] data = new double[30, 12];

            foreach (var nameRecord in names.Where(nameRecord => nameRecord.BirthDate.Day > 1))
                data[nameRecord.BirthDate.Day - 2, nameRecord.BirthDate.Month - 1]++;

            return new HeatmapData(
                "Пример карты интенсивностей",
                data,
                Enumerable.Range(2, 30).Select(v => v.ToString()).ToArray(),
                Enumerable.Range(1, 12).Select(v => v.ToString()).ToArray());
        }
    }
}