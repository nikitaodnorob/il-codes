using System;

namespace Names
{
    internal static class HeatmapTask
    {
        const int value1 = 30;
        const int value2 = 12;
      
        public static string[] GetDayNumber(NameData[] names)
        { 
            var arr= new string[value1];
            for (int i = 0; i < value1; i++)
                arr[i] = (i + 2).ToString();
            return arr;
        }

        public static string[] GetNumberM(NameData[] names)
        {
            var arr2 = new string[value2];
            for (int i = 0; i < value2; i++)
             arr2[i] = (i + 1).ToString(); 
            return arr2;
        }
        public static HeatmapData GetBirthsPerDateHeatmap(NameData[] names)
        {
            double[,] mounthDay = new double[value1, value2];
            string[] day = GetDayNumber(names);
            string[] mounth = GetNumberM(names);
            foreach (var name in names)
                if (name.BirthDate.Day != 1)
                    mounthDay[name.BirthDate.Day - 2, name.BirthDate.Month - 1]++;
            return new HeatmapData("Пример карты интенсивностей", mounthDay, day, mounth);
        }
    }
}