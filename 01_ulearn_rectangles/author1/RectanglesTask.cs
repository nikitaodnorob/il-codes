using System;
using System.Runtime.InteropServices.ComTypes;

namespace Rectangles
{
	public static class RectanglesTask
	{
		// Пересекаются ли два прямоугольника (пересечение только по границе также считается пересечением)
		public static bool AreIntersected(Rectangle r1, Rectangle r2)
		{
			// так можно обратиться к координатам левого верхнего угла первого прямоугольника: r1.Left, r1.Top
			return !(r2.Left > r1.Right || r2.Top > r1.Bottom || r1.Left > r2.Right || r1.Top > r2.Bottom);
		}

		// Площадь пересечения прямоугольников
		public static int IntersectionSquare(Rectangle r1, Rectangle r2)
		{
			CalcMinMax(r1, r2, out int left, out int right, out int top, out int bottom);

			int width = right - left;
			int height = bottom - top;

			if (width <= 0 || height <= 0) return 0;
			return width * height;
		}

		private static void CalcMinMax(Rectangle r1, Rectangle r2, out int left, out int right, out int top, out int bottom)
		{
			left = Math.Max(r1.Left, r2.Left);
			right = Math.Min(r1.Right, r2.Right);
			top = Math.Max(r1.Top, r2.Top);
			bottom = Math.Min(r1.Bottom, r2.Bottom);
		}

		// Если один из прямоугольников целиком находится внутри другого — вернуть номер (с нуля) внутреннего.
		// Иначе вернуть -1
		// Если прямоугольники совпадают, можно вернуть номер любого из них.
		public static int IndexOfInnerRectangle(Rectangle r1, Rectangle r2)
		{
			CalcMinMax(r1, r2, out int left, out int right, out int top, out int bottom);

			if (r1.Left == left && r1.Top == top && r1.Right == right && r1.Bottom == bottom) return 0;
			if (r2.Left == left && r2.Top == top && r2.Right == right && r2.Bottom == bottom) return 1;
			return -1;
		}
	}
}