using System;
using System.Linq;

namespace Names
{
    internal static class HeatmapTask
    {
        public static HeatmapData GetBirthsPerDateHeatmap(NameData[] ns)
        {
            double[,] data = new double[30, 12];

            foreach (var nameR in ns.Where(nameRecord => nameRecord.BirthDate.Day > 1))
                ++data[nameR.BirthDate.Day - 2, nameR.BirthDate.Month - 1];

            return new HeatmapData(
                "Пример карты интенсивностей",
                data,
                Enumerable.Range(2, 30).Select(v => v.ToString()).ToArray(),
                Enumerable.Range(1, 12).Select(v => v.ToString()).ToArray());
        }
    }
}