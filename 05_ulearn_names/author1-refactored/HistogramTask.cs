using System;
using System.Linq;

namespace Names
{
    internal static class HistogramTask
    {
        public static HistogramData GetBirthsPerDayHistogram(NameData[] names, string name)
        {
            var dates = new double[31];
            names = names
                .Where(nameRecord => nameRecord.BirthDate.Day > 1)
                .Where(nameRecord => nameRecord.Name == name)
                .ToArray();

            foreach (var nameRecord in names)
                dates[nameRecord.BirthDate.Day - 1] += 1;

            return new HistogramData(
                string.Format("Рождаемость людей с именем '{0}'", name),
                Enumerable.Range(1, 31).Select(v => v.ToString()).ToArray(),
                dates
            );
        }
    }
}