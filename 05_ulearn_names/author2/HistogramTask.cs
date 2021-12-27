using System;
using System.Linq;

namespace Names
{
    internal static class HistogramTask
    { const int last = 31;
        public static HistogramData GetBirthsPerDayHistogram(NameData[] names, string name)
        {
            var d = new string[last];
            for (var i = 0; i < d.Length; i++)
            {
                d[i] = (i + 1).ToString();
            }
            double[] bD = new double[last];
            foreach (var val in names)
            {
                if (val.Name == name && val.BirthDate.Day != 1)
                    bD[val.BirthDate.Day - 1]++;
            }
            return new HistogramData(String.Format("Рождаемость людей с именем '{0}'", name), d, bD);
        }
    }
}