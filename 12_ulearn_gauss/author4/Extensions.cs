using System;
using System.Linq;

namespace GaussAlgorithm
{
    public static class Extensions
    {
        public static string StringFormatMatrix(this double[][] matrix)
        {
            var res = string.Join(Environment.NewLine, matrix.Select(row => string.Join("\t", row)));
            return res;
        }
           
    }
}