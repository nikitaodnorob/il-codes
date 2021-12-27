using System.Collections.Generic;
using System.Linq;

namespace Recognizer
{
	internal static class MedianFilterTask
	{
		/* 
		 * Для борьбы с пиксельным шумом, подобным тому, что на изображении,
		 * обычно применяют медианный фильтр, в котором цвет каждого пикселя, 
		 * заменяется на медиану всех цветов в некоторой окрестности пикселя.
		 * https://en.wikipedia.org/wiki/Median_filter
		 * 
		 * Используйте окно размером 3х3 для не граничных пикселей,
		 * Окно размером 2х2 для угловых и 3х2 или 2х3 для граничных.
		 */
		public static double[,] MedianFilter(double[,] original)
		{
			var h = original.GetLength(1);
			int w = original.GetLength(0);
			var resutlt = new double[w, h];

			for (int j = 0; j < h; j++)
				for (int i = 0; i < w; i++)
					resutlt[i, j] = GetMedian(GetWindow(original, i, j));

			return resutlt;
		}

		static double[] GetWindow(double[,] original, int x, int y)
        {
			int w = original.GetLength(0), h = original.GetLength(1);
			List<double> window = new List<double>();
			for (int dx = -1; dx <= 1; dx++)
				for (int dy = -1; dy <= 1; dy++)
				{
					bool cond = x + dx >= 0 && x + dx < w && y + dy >= 0;
					if (y + dy < h && cond)
						window.Add(original[x + dx, y + dy]);
				}
			return window.ToArray();
		}

		static double GetMedian(double[] window)
        {
			var sortedWow = window.OrderBy(v => v).ToArray();
			if (sortedWow.Length % 2 == 1) return sortedWow[sortedWow.Length / 2];
			else return (sortedWow[sortedWow.Length / 2] + sortedWow[sortedWow.Length / 2 - 1]) / 2;
        }
	}
}