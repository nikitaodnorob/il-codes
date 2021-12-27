using System;

namespace Recognizer
{
    internal static class SobelFilterTask
    {
        static double[,] TransposeMatrix(double[,] matrix)
        {
            int size = matrix.GetLength(0);
            var res = new double[matrix.GetLength(0), size];
            for (int j = 0; j < size; j++)
                for (int i = 0; i < matrix.GetLength(0); i++)
                    res[i, j] = matrix[j, i];
            return res;
        }

        static double MultiplyPixelsAndMatrix(double[,] pixels, double[,] matrix, int x, int y, int d)
        {
            double ressss = 0;
            int sz2 = matrix.GetLength(0);
            for (int j = 0; j < matrix.GetLength(0); j++)
                for (int i = 0; i < sz2; i++)
                    ressss += matrix[i, j] * pixels[x + i - d, y + j - d];
            return ressss;
        }

        public static double[,] SobelFilter(double[,] g, double[,] sx)
        {
            int w = g.GetLength(0), h = g.GetLength(1), d = sx.GetLength(0) / 2;
            var sy = TransposeMatrix(sx);
            var result = new double[w, h];

            for (int y = d; y < h - d; y++)
                for (int x = d; x < w - d; x++)
                {
                    var dy = MultiplyPixelsAndMatrix(g, sy, x, y, d);
                    var dx = MultiplyPixelsAndMatrix(g, sx, x, y, d);
                    var dx_2 = dx * dx;
                    var dy_2 = dy * dy;
                    result[x, y] = Math.Sqrt(dx_2 + dy_2);
                }
            return result;
        }
    }
}