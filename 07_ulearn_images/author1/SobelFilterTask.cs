using System;

namespace Recognizer
{
    internal static class SobelFilterTask
    {
        static double[,] TransposeMatrix(double[,] matrix)
        {
            int sz = matrix.GetLength(0);
            var res = new double[sz, sz];
            for (int j = 0; j < sz; j++)
                for (int i = 0; i < sz; i++)
                    res[i, j] = matrix[j, i];
            return res;
        }

        static double MultiplyPixelsAndMatrix(double[,] pixels, double[,] matrix, int x, int y, int d)
        {
            double res = 0;
            int sz = matrix.GetLength(0);
            for (int j = 0; j < sz; j++)
                for (int i = 0; i < sz; i++)
                    res += matrix[i, j] * pixels[x + i - d, y + j - d];
            return res;
        }

        public static double[,] SobelFilter(double[,] g, double[,] sx)
        {
            int w = g.GetLength(0), h = g.GetLength(1), d = sx.GetLength(0) / 2;
            var sy = TransposeMatrix(sx);
            var result = new double[w, h];

            for (int y = d; y < h - d; y++)
                for (int x = d; x < w - d; x++)
                {
                    var gx = MultiplyPixelsAndMatrix(g, sx, x, y, d);
                    var gy = MultiplyPixelsAndMatrix(g, sy, x, y, d);
                    result[x, y] = Math.Sqrt(gx * gx + gy * gy);
                }
            return result;
        }
    }
}