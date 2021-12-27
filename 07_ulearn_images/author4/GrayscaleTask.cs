﻿namespace Recognizer
{
	public static class GrayscaleTask
	{
		/* 
		 * Переведите изображение в серую гамму.
		 * 
		 * original[x, y] - массив пикселей с координатами x, y. 
		 * Каждый канал R,G,B лежит в диапазоне от 0 до 255.
		 * 
		 * Получившийся массив должен иметь те же размеры, 
		 * grayscale[x, y] - яркость пикселя (x,y) в диапазоне от 0.0 до 1.0
		 *
		 * Используйте формулу:
		 * Яркость = (0.299*R + 0.587*G + 0.114*B) / 255
		 * 
		 * Почему формула именно такая — читайте в википедии 
		 * http://ru.wikipedia.org/wiki/Оттенки_серого
		 */

		public static double[,] TransformToGray(Pixel[,] original)
		{
			int w = original.GetLength(0), h = original.GetLength(1);

			var res2 = new double[w, h];
			for (int i = 0; i < w; i++)
				for (int j = 0; j < h; j++)
					res2[i, j] = GetScaledGrayValue(original[i, j]);

			return res2;
		}

		static double GetScaledGrayValue(Pixel pixel)
        {
			return (0.299 * pixel.R + 0.587 * pixel.G + 0.114 * pixel.B) / 255;
		}
	}
}