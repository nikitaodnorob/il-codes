using System;

namespace Names
{
    internal static class HistogramSample
    {
        // Пример подготовки данных для построения графиков:
        public static HistogramData GetHistogramBirthsByYear(NameData[] names)
        {
            /*
            Подготовка данных для построения гистограммы 
            — количества людей в выборке в зависимости от года их рождения.
            */

            Console.WriteLine("Статистика рождаемости по годам");
            var minYear = int.MaxValue;
            var maxYear = int.MinValue;
            foreach (var name in names)
            {
                maxYear = Math.Max(maxYear, name.BirthDate.Year);
                minYear = Math.Min(minYear, name.BirthDate.Year);
            }

            var years = new string[maxYear - minYear + 1];
            for (var y = 0; y < years.Length; y++)
                years[y] = (y + minYear).ToString();
            var birthsCounts = new double[maxYear - minYear + 1];
            foreach (var name in names)
                birthsCounts[name.BirthDate.Year - minYear]++;
            HistogramData resultHist = new HistogramData("Рождаемость по годам", years, birthsCounts);
            return resultHist;
        }
    }
}