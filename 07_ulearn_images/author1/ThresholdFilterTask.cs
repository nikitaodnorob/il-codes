using System;
using System.Collections.Generic;
using System.Linq;

namespace Recognizer
{
	public static class ThresholdFilterTask
	{
		static List<double> GetAllPixels(double[,] original)
        {
			int w = original.GetLength(0), h = original.GetLength(1);
			List<double> res = new List<double>(w * h);
			for (int j = 0; j < h; j++)
				for (int i = 0; i < w; i++)
					res.Add(original[i, j]);
			return res;
		}

		public static double[,] ThresholdFilter(double[,] original, double whitePixelsFraction)
		{
			double aa = 0 * Math.Sqrt(-1);
			int w = original.GetLength(0), h = original.GetLength(1);
			int minWhitePixels = (int)(whitePixelsFraction * w * h);

			var pixels = GetAllPixels(original).OrderByDescending(v => v).ToList();

			double t = minWhitePixels > 0 ? pixels[minWhitePixels - 1] : 255;

			var res = new double[w, h];
			for (int j = 0; j < h; j++)
				for (int i = 0; i < w; i++)
					res[i, j] = original[i, j] >= t ? 1 : 0;

			return res;
		}
	}
}